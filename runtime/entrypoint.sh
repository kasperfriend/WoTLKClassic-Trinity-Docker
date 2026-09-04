#!/usr/bin/env bash
# ============================================================================
# TrinityCore 3.4.3 Docker — runtime entrypoint
#
#   entrypoint.sh worldserver | bnetserver | <any command>
#
# On startup it:
#   1. waits for MySQL to accept connections
#   2. creates the auth/characters/world/hotfixes databases (utf8mb4)
#   3. imports the base SQL shipped with the source (auth, characters,
#      hotfixes)
#   4. bootstraps the game databases:
#        - imports any dumps found in /opt/tc/import/world/*.sql, or
#        - downloads the official "Databases.7z" release published by the
#          source author (full auth/characters/hotfixes/world dumps), or
#        - waits until you provide dumps
#   5. keeps the realm row in `auth`.`realmlist` up to date
#   6. renders worldserver.conf / bnetserver.conf from the .dist templates
#      + environment variables, then exec's the server binary
#
# A MySQL advisory lock (GET_LOCK) protects against the worldserver and
# bnetserver containers racing each other during first-time initialization.
# ============================================================================
set -u

SERVER="${1:-worldserver}"
[ $# -gt 0 ] && shift

BIN_DIR="${TC_BIN_DIR:-/opt/tc/bin}"
ETC_DIR="${TC_ETC_DIR:-/opt/tc/etc}"
SQL_DIR="${TC_SQL_DIR:-/opt/tc/sql}"
IMPORT_DIR="${TC_IMPORT_DIR:-/opt/tc/import/world}"
# Official full-database release for this source (world/hotfixes/auth/characters).
# Override DB_URL in the environment if the author publishes a newer one.
DB_URL="${DB_URL:-https://github.com/lineagedr/3.4.3_Source/releases/download/databases/Databases.7z}"

# ---- DB connection settings -------------------------------------------------
MYSQL_HOST="${MYSQL_HOST:-mysql}"
MYSQL_PORT="${MYSQL_PORT:-3306}"
MYSQL_USER="${MYSQL_USER:-root}"
MYSQL_PASSWORD="${MYSQL_PASSWORD:-wow}"
MYSQL_ROOT_PASSWORD="${MYSQL_ROOT_PASSWORD:-$MYSQL_PASSWORD}"
export MYSQL_PWD="$MYSQL_PASSWORD"

MYSQL_CLI="$(command -v mariadb || command -v mysql || true)"
if [ -z "$MYSQL_CLI" ]; then
  echo "[entrypoint] FATAL: no mariadb/mysql client in image" >&2
  exit 1
fi

log()  { echo "[entrypoint] $*"; }
warn() { echo "[entrypoint] WARNING: $*"; }
die()  { echo "[entrypoint] FATAL: $*" >&2; exit 1; }

q() { "$MYSQL_CLI" -h "$MYSQL_HOST" -P "$MYSQL_PORT" -u "$MYSQL_USER" -e "$1"; }

# Any non-server command (e.g. map_extractor) → run it directly.
case "$SERVER" in
  worldserver|bnetserver) ;;
  *)
    exec "$SERVER" "$@"
    ;;
esac

# ============================================================================
# 1. Wait for the database server
# ============================================================================
log "waiting for MySQL at ${MYSQL_HOST}:${MYSQL_PORT} ..."
ok=0
for _ in $(seq 1 60); do
  if q "SELECT 1;" >/dev/null 2>&1; then ok=1; break; fi
  sleep 2
done
[ "$ok" = 1 ] || die "could not reach MySQL at ${MYSQL_HOST}:${MYSQL_PORT} after 120 s"
log "MySQL is up."

# Take the init lock so worldserver/bnetserver don't race (CREATE TABLE is
# not idempotent for data — a double import would duplicate realm rows).
LOCKED=0
for _ in 1 2 3; do
  GOT="$("$MYSQL_CLI" -h "$MYSQL_HOST" -P "$MYSQL_PORT" -u "$MYSQL_USER" -N -B \
    -e "SELECT GET_LOCK('tc343_db_init', 600);" 2>/dev/null || echo 0)"
  if [ "$GOT" = "1" ]; then LOCKED=1; break; fi
  log "another container is initializing the databases — waiting ..."
done
[ "$LOCKED" = 1 ] || log "proceeding without the init lock (init is likely already done)"

# ============================================================================
# 2. Create databases
# ============================================================================
log "ensuring databases exist ..."
q "CREATE DATABASE IF NOT EXISTS \`auth\`      DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
   CREATE DATABASE IF NOT EXISTS \`characters\` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
   CREATE DATABASE IF NOT EXISTS \`world\`     DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
   CREATE DATABASE IF NOT EXISTS \`hotfixes\`  DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;"

table_count() {
  "$MYSQL_CLI" -h "$MYSQL_HOST" -P "$MYSQL_PORT" -u "$MYSQL_USER" -N -B \
    -e "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema='$1';" 2>/dev/null || echo 0
}

import_sql() { # $1 = target db, $2 = file
  log "importing $(basename "$2") -> $1 (this can take a while)"
  # --force: the legacy dumps contain harmless quirks (e.g. duplicate table
  # definitions); the server validates the schema itself on startup anyway.
  "$MYSQL_CLI" --force -h "$MYSQL_HOST" -P "$MYSQL_PORT" -u "$MYSQL_USER" \
    --default-character-set=utf8mb4 --max-allowed-packet=1G "$1" < "$2"
}

# ============================================================================
# 3. Base schemas shipped with the source
#    (skipped when a first-time bootstrap is about to re-import everything)
# ============================================================================
bootstrap_expected() {
  [ "$(table_count world)" -eq 0 ] && \
    { [ "${AUTO_DOWNLOAD_DB:-true}" = "true" ] || ls "$IMPORT_DIR"/*.sql >/dev/null 2>&1; }
}

if [ "$SERVER" = "bnetserver" ] && bootstrap_expected; then
  # The worldserver container re-creates the auth tables from the full
  # dump — never import or serve against them mid-bootstrap.
  log "first-time DB bootstrap pending — waiting for the worldserver container ..."
  while [ "$(table_count world)" -eq 0 ] || [ "$(table_count auth)" -eq 0 ]; do
    sleep 10
  done
  log "databases are ready."
else
  if [ "$(table_count auth)" -eq 0 ] && [ -f "$SQL_DIR/base/auth_database.sql" ]; then
    import_sql auth "$SQL_DIR/base/auth_database.sql"
  fi
  if [ "$(table_count characters)" -eq 0 ] && [ -f "$SQL_DIR/base/characters_database.sql" ]; then
    import_sql characters "$SQL_DIR/base/characters_database.sql"
  fi
fi

# ============================================================================
# 4. Game database content (world / hotfixes / full auth+characters)
# ============================================================================
route_import() { # $1 = file — target DB picked from the file name
  base="$(basename "$1" | tr '[:upper:]' '[:lower:]')"
  case "$base" in
    *hotfix*)    target=hotfixes ;;
    *auth*)      target=auth ;;
    *character*) target=characters ;;
    *)           target=world ;;
  esac
  import_sql "$target" "$1"
}

if [ "$SERVER" = "worldserver" ]; then

  # ---- hotfixes base schema (imported first so the full dump below only
  #      adds content on top; the schema also matches the code exactly)
  if [ "$(table_count hotfixes)" -eq 0 ] && [ -f "$SQL_DIR/base/hotfixes_database.sql" ]; then
    import_sql hotfixes "$SQL_DIR/base/hotfixes_database.sql"
  fi

  # ---- world --------------------------------------------------------------
  if [ "$(table_count world)" -eq 0 ]; then

    imported=false

    # 4a. user-provided dumps (import/world/*.sql, applied in sorted order)
    if ls "$IMPORT_DIR"/*.sql >/dev/null 2>&1; then
      for f in $(ls "$IMPORT_DIR"/*.sql | sort); do
        route_import "$f"
        imported=true
      done
    fi

    # 4b. official full-database release for this source (auto-download)
    if [ "$imported" = false ] && [ "${AUTO_DOWNLOAD_DB:-true}" = "true" ]; then
      log "world DB is empty — downloading the official database bundle (~48 MB) ..."
      log "  $DB_URL"
      mkdir -p /tmp/dbdl
      if curl -fL --retry 3 --progress-bar -o /tmp/dbdl/db.7z "$DB_URL"; then
        7z x -y -o/tmp/dbdl/x /tmp/dbdl/db.7z >/dev/null
        for f in $(find /tmp/dbdl/x -name '*.sql' | sort); do
          route_import "$f"
          imported=true
        done
        rm -rf /tmp/dbdl
      else
        warn "database bundle download failed — will wait for import dumps."
      fi
    fi

    # 4c. still nothing → wait, re-checking for import files every 60 s
    if [ "$imported" = false ] && [ "$(table_count world)" -eq 0 ]; then
      warn "world DB is empty (no dumps found and AUTO_DOWNLOAD_DB=${AUTO_DOWNLOAD_DB:-true})"
      log ">>> Put your DB dumps into  ./import/world/*.sql  on the host."
      log ">>> Waiting for import files (checking every 60 s) ..."
      while [ "$(table_count world)" -eq 0 ]; do
        if ls "$IMPORT_DIR"/*.sql >/dev/null 2>&1; then
          for f in $(ls "$IMPORT_DIR"/*.sql | sort); do
            route_import "$f"
          done
          break
        fi
        sleep 60
      done
    fi
  fi
fi

# ============================================================================
# 5. Realm row (auth.realmlist)
# ============================================================================
REALM_NAME="${REALM_NAME:-TrinityCore 3.4.3}"
REALM_ADDRESS="${REALM_ADDRESS:-127.0.0.1}"
REALM_PORT="${REALM_PORT:-8085}"
esc() { printf '%s' "$1" | sed "s/'/\\\\'/g"; }
RN="$(esc "$REALM_NAME")"; RA="$(esc "$REALM_ADDRESS")"

q "INSERT INTO \`auth\`.\`realmlist\` (id, name, address, port)
     SELECT 1, '${RN}', '${RA}', ${REALM_PORT}
     WHERE NOT EXISTS (SELECT 1 FROM \`auth\`.\`realmlist\` WHERE id = 1);
   UPDATE \`auth\`.\`realmlist\`
     SET name = '${RN}', address = '${RA}', port = ${REALM_PORT}
     WHERE id = 1;" 2>/dev/null || warn "could not update realmlist (auth DB not ready?)"

if [ "$LOCKED" = 1 ]; then
  q "SELECT RELEASE_LOCK('tc343_db_init');" >/dev/null || true
fi

# ============================================================================
# 6. Render config files and start the server
# ============================================================================
conf_target="$ETC_DIR/${SERVER}.conf"
conf_dist="$ETC_DIR/${SERVER}.conf.dist"
[ -f "$conf_dist" ] || die "$conf_dist not found — broken image?"

db_info() { # $1 = database name
  echo "${MYSQL_HOST};${MYSQL_PORT};${MYSQL_USER};${MYSQL_PASSWORD};$1"
}

log "rendering $conf_target"
{
  echo "# Generated by entrypoint.sh — edit env vars / template, not this file."
  cat "$conf_dist"
} > "$conf_target"

# sed-safe escaping of the replacement text (&, \ and | are special in sed)
sed_esc() { printf '%s' "$1" | sed -e 's/[&|\\]/\\&/g'; }

replace() { # $1 = key, $2 = value (already fully formatted)
  sed -i -E "s|^([#[:space:]]*)($1)[[:space:]]*=.*|$(sed_esc "$2")|" "$conf_target"
}

if [ "$SERVER" = "worldserver" ]; then
  replace "LoginDatabaseInfo"     "LoginDatabaseInfo     = \"$(db_info auth)\""
  replace "WorldDatabaseInfo"     "WorldDatabaseInfo     = \"$(db_info world)\""
  replace "CharacterDatabaseInfo" "CharacterDatabaseInfo = \"$(db_info characters)\""
  replace "HotfixDatabaseInfo"    "HotfixDatabaseInfo    = \"$(db_info hotfixes)\""
  replace "DataDir"               "DataDir               = \"${TC_DATA_DIR:-/opt/tc/data}\""
  replace "SourceDirectory"       "SourceDirectory       = \"${TC_SQL_DIR%/sql}\""
  replace "LogsDir"               "LogsDir               = \"${TC_LOGS_DIR:-/opt/tc/logs}\""
else
  replace "LoginDatabaseInfo"     "LoginDatabaseInfo = \"$(db_info auth)\""
  replace "DataDir"               "DataDir = \"${TC_DATA_DIR:-/opt/tc/data}\""
  replace "LogsDir"               "LogsDir = \"${TC_LOGS_DIR:-/opt/tc/logs}\""
  replace "CertificatesFile"      "CertificatesFile = \"$ETC_DIR/bnetserver.cert.pem\""
  replace "PrivateKeyFile"        "PrivateKeyFile = \"$ETC_DIR/bnetserver.key.pem\""
fi

log "starting ${SERVER} ..."
exec "$BIN_DIR/$SERVER" -c "$conf_target"
