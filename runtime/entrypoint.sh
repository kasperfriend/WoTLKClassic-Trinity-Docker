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
#   6. seeds worldserver.conf / bnetserver.conf into /opt/tc/conf (bind-mounted
#      from ./etc on the host) on first run, then re-applies only the database
#      connection lines on later boots so your own edits survive, and exec's
#      the server binary
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
# Official full-database release for this source revision.
#   WORLD_DB_URL / HOTFIXES_DB_URL  -> the source's own MySQL dumps (preferred)
#   DB_URL                          -> legacy safety net: a .7z bundle containing
#                                       auth/characters/hotfixes/world dumps
# Override any of them in the environment if the author publishes a newer one.
WORLD_DB_URL="${WORLD_DB_URL:-https://github.com/xHashii/WyrmrestCore/releases/download/DB.2608/world_full_2026_08_10.sql}"
HOTFIXES_DB_URL="${HOTFIXES_DB_URL:-https://github.com/xHashii/WyrmrestCore/releases/download/DB.2608/hotfixes_full_2026_08_10.sql}"
DB_URL="${DB_URL:-}"

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
  # The upstream Databases.7z is dumped from MariaDB, whose 11.x *_uca1400_*
  # collations do not exist in MySQL 8.0 — the CREATE TABLE fails with
  # "Unknown collation" and every later statement on that table then fails
  # with "Table doesn't exist". Rewrite them to the equivalent *_general_ci
  # (a no-op for dumps that do not use them). Streamed, so a 200 MB world
  # dump costs no extra disk.
  # --force: the legacy dumps contain harmless quirks (e.g. duplicate table
  # definitions); the server validates the schema itself on startup anyway.
  sed -E 's/\butf8mb([34])_uca1400_[A-Za-z0-9_]*/utf8mb\1_general_ci/g' "$2" \
    | "$MYSQL_CLI" --force -h "$MYSQL_HOST" -P "$MYSQL_PORT" -u "$MYSQL_USER" \
        --default-character-set=utf8mb4 --max-allowed-packet=1G "$1"
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

  # ---- world / hotfixes ---------------------------------------------------
  # The source does not ship a world/hotfixes base schema; it expects the
  # full dumps from its own DB release (see revision_data.h). If either is
  # empty, try in this order: user dumps in ./import/world, the source's full
  # dumps, then the legacy .7z bundle, then keep waiting for import dumps.
  if [ "$(table_count world)" -eq 0 ] || [ "$(table_count hotfixes)" -eq 0 ]; then

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
      mkdir -p /tmp/dbdl

      if [ -n "$DB_URL" ]; then
        # legacy safety net: one .7z that holds all four DB dumps
        log "downloading the legacy database bundle ..."
        log "  $DB_URL"
        if curl -fL --retry 3 --progress-bar -o /tmp/dbdl/db.7z "$DB_URL"; then
          7z x -y -o/tmp/dbdl/x /tmp/dbdl/db.7z >/dev/null
          for f in $(find /tmp/dbdl/x -name '*.sql' | sort); do
            route_import "$f"
            imported=true
          done
        else
          warn "legacy database bundle download failed — will wait for import dumps."
        fi
      else
        # current release: separate world + hotfixes SQL files
        if [ "$(table_count world)" -eq 0 ]; then
          log "downloading the official world database ..."
          log "  $WORLD_DB_URL"
          if curl -fL --retry 3 --progress-bar -o /tmp/dbdl/world.sql "$WORLD_DB_URL"; then
            route_import /tmp/dbdl/world.sql
            imported=true
          else
            warn "world database download failed."
          fi
        fi

        if [ "$(table_count hotfixes)" -eq 0 ]; then
          log "downloading the official hotfixes database ..."
          log "  $HOTFIXES_DB_URL"
          if curl -fL --retry 3 --progress-bar -o /tmp/dbdl/hotfixes.sql "$HOTFIXES_DB_URL"; then
            route_import /tmp/dbdl/hotfixes.sql
            imported=true
          else
            warn "hotfixes database download failed."
          fi
        fi
      fi
      rm -rf /tmp/dbdl
    fi

    # 4c. still nothing → wait, re-checking for import files every 60 s
    if [ "$imported" = false ] && { [ "$(table_count world)" -eq 0 ] || [ "$(table_count hotfixes)" -eq 0 ]; }; then
      warn "world/hotfixes DB is incomplete (no dumps found and AUTO_DOWNLOAD_DB=${AUTO_DOWNLOAD_DB:-true})"
      log ">>> Put your DB dumps into  ./import/world/*.sql  on the host."
      log ">>> Waiting for import files (checking every 60 s) ..."
      while [ "$(table_count world)" -eq 0 ] || [ "$(table_count hotfixes)" -eq 0 ]; do
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

# ============================================================================
# 5b. Make sure the built-in DBUpdater knows where the source's sql/updates
#     live.
#
#     worldserver reads `updates_include` from each database to decide which
#     directories to scan. The source's sql/base files create the table but
#     deliberately leave it empty (the full DB dumps used to seed it), so a
#     container that boots from sql/base + the source's full dumps would skip
#     every sql/updates file and run a stale core/DB mix. Seed the canonical
#     $/sql/updates paths for world/hotfixes here; INSERT ... ON DUPLICATE
#     keeps any operator extensions intact while adding the rows this image
#     needs.
#
#     auth/characters are intentionally NOT seeded. The source's current
#     auth/characters update trees contain dev/test seed data (DELETE +
#     re-INSERT), and applying that on an existing server would wipe operator
#     accounts/characters. Their base schemas are current in this source; the
#     only runtime-required auth fix (build_info for client 54261) is applied
#     directly below instead.
# ============================================================================
log "seeding database updater paths ..."
for db_name in world hotfixes; do
  # A full dump normally carries the right updates_include rows already. Only
  # seed ours when that table is empty: adding a second path for the same tree
  # would make DBUpdater see the same update files twice ("Duplicate filename").
  include_count="$("$MYSQL_CLI" -h "$MYSQL_HOST" -P "$MYSQL_PORT" -u "$MYSQL_USER" -N -B \
    -e "SELECT COUNT(*) FROM \`${db_name}\`.\`updates_include\`;" 2>/dev/null || echo 0)"

  if [ "${include_count:-0}" -eq 0 ]; then
    # CREATE TABLE IF NOT EXISTS is safe even when the table already exists.
    q "CREATE TABLE IF NOT EXISTS \`${db_name}\`.\`updates\` (
         \`name\` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
         \`hash\` char(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
         \`state\` enum('RELEASED','ARCHIVED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'RELEASED',
         \`timestamp\` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'timestamp when the query was applied.',
         \`speed\` int unsigned NOT NULL DEFAULT '0' COMMENT 'time the query takes to apply in ms.',
         PRIMARY KEY (\`name\`)
       ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
       CREATE TABLE IF NOT EXISTS \`${db_name}\`.\`updates_include\` (
         \`path\` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'directory to include. \$ means relative to the source directory.',
         \`state\` enum('RELEASED','ARCHIVED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'RELEASED',
         PRIMARY KEY (\`path\`)
       ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
       INSERT INTO \`${db_name}\`.\`updates_include\` (\`path\`, \`state\`)
       VALUES ('\$/sql/updates/${db_name}/3.4.3', 'RELEASED');" 2>/dev/null \
      || warn "could not seed updates_include for ${db_name} (auto-updates may not run)"
  else
    log "  ${db_name}: updates_include already has ${include_count} row(s), keeping existing rows"
  fi
done

# Client 3.4.3 build 54261 — the current auth base schema ships the table but
# not this row, and we deliberately don't point the auth updater at the dev
# seed update tree. Insert it directly so bnetserver accepts the client.
q "INSERT IGNORE INTO \`auth\`.\`build_info\`
    (\`build\`, \`majorVersion\`, \`minorVersion\`, \`bugfixVersion\`, \`hotfixVersion\`,
     \`winAuthSeed\`, \`win64AuthSeed\`, \`mac64AuthSeed\`, \`winChecksumSeed\`, \`macChecksumSeed\`)
    VALUES
    (54261, 3, 4, 3, NULL, NULL, '25FD812475DCF26F9F1383AED37FC99E', NULL, NULL, NULL);" 2>/dev/null \
  || warn "could not insert auth.build_info for client build 54261 (clients may be rejected)"

if [ "$LOCKED" = 1 ]; then
  q "SELECT RELEASE_LOCK('tc343_db_init');" >/dev/null || true
fi

# ============================================================================
# 6. Config file — seeded once from the .dist template, then yours to edit
#
#    The conf lives in $CONF_DIR (bind-mounted from ./etc on the host), NOT in
#    $ETC_DIR: mounting over /opt/tc/etc would shadow the .dist templates that
#    ship in the image. $ETC_DIR keeps the pristine templates + TLS certs.
#
#    * first run  -> copy <server>.conf.dist to $CONF_DIR/<server>.conf and
#                    wire the container paths (DataDir/LogsDir/SourceDirectory,
#                    and the bnet TLS cert paths)
#    * every run  -> re-apply the *DatabaseInfo lines (they must track the
#                    MYSQL_* env vars) and, when they still carry pristine
#                    non-container defaults, the DataDir/LogsDir/SourceDirectory
#                    (world) or TLS cert paths (bnet). Explicit user edits to
#                    those path settings are kept.
#    Everything else you edit on the host survives restarts. To go back to
#    defaults, delete the file and restart — it is re-seeded from the template.
# ============================================================================
CONF_DIR="${TC_CONF_DIR:-/opt/tc/conf}"
mkdir -p "$CONF_DIR" || die "cannot create $CONF_DIR"
# Docker creates the host ./etc as root:root 755. A file that is merely 666 is
# still not enough: editors (vim, nano) and `sed -i` save by writing a temp
# file in the same directory and renaming, which needs write access on the
# DIRECTORY. So make the directory world-writable too — otherwise the host
# user cannot edit these confs without sudo.
chmod 0777 "$CONF_DIR" 2>/dev/null || true
conf_target="$CONF_DIR/${SERVER}.conf"
conf_dist="$ETC_DIR/${SERVER}.conf.dist"
[ -f "$conf_dist" ] || die "$conf_dist not found — broken image?"

# sed-safe escaping of the replacement text (&, \ and | are special in sed)
sed_esc() { printf '%s' "$1" | sed -e 's/[&|\\]/\\&/g'; }

replace() { # $1 = key, $2 = value (already fully formatted)
  sed -i -E "s|^([#[:space:]]*)($1)[[:space:]]*=.*|$(sed_esc "$2")|" "$conf_target"
}

if [ -f "$conf_target" ]; then
  log "using existing $conf_target — your edits are kept"
else
  log "first run — seeding $conf_target from $(basename "$conf_dist")"
  log "  edit it on the host at ./etc/${SERVER}.conf, then: docker compose restart ${SERVER}"
  log "  (the *DatabaseInfo lines follow .env on each boot; container path settings are also re-wired if they are still at the stock defaults)"
  cp "$conf_dist" "$conf_target" || die "cannot write $conf_target"
  # Container paths — written once; change them here if you mount elsewhere.
  replace "DataDir" "DataDir = \"${TC_DATA_DIR:-/opt/tc/data}\""
  replace "LogsDir" "LogsDir = \"${TC_LOGS_DIR:-/opt/tc/logs}\""
  if [ "$SERVER" = "worldserver" ]; then
    # must point at the tree that contains sql/ so the auto-updater finds updates
    replace "SourceDirectory" "SourceDirectory = \"${SQL_DIR%/sql}\""
  else
    replace "CertificatesFile" "CertificatesFile = \"$ETC_DIR/bnetserver.cert.pem\""
    replace "PrivateKeyFile"   "PrivateKeyFile = \"$ETC_DIR/bnetserver.key.pem\""
  fi
  # The container runs as root, so the seeded file would be root-owned on the
  # host and awkward to edit — let the host user change it without sudo.
  chmod 0666 "$conf_target" 2>/dev/null || true
fi

# Paths that are required for the container to work. When an existing conf was
# seeded by an older image it may still have the pristine (non-container)
# defaults ("" / "." / "./bnetserver.*.pem"). Rewrite those so an old ./etc
# does not silently carry a stale path. Explicit user values are kept.
reapply_container_path_if_default() { # $1 = conf key, $2 = full replacement line base, $3 = default marker
  value="$(sed -nE "s/^[[:space:]]*$1[[:space:]]*=[[:space:]]*(.*)/\\1/p" "$conf_target" | head -1)"
  if [ "$value" = "" ] || [ "$value" = '""' ] || [ "$value" = "." ] || [ "$value" = '"."' ] \
     || { [ -n "$3" ] && { [ "$value" = "$3" ] || [ "$value" = "\"$3\"" ]; }; }; then
    replace "$1" "$2"
  fi
}
if [ "$SERVER" = "worldserver" ]; then
  reapply_container_path_if_default "DataDir"        "DataDir = \"${TC_DATA_DIR:-/opt/tc/data}\"" "."
  reapply_container_path_if_default "LogsDir"        "LogsDir = \"${TC_LOGS_DIR:-/opt/tc/logs}\"" ""
  reapply_container_path_if_default "SourceDirectory" "SourceDirectory = \"${SQL_DIR%/sql}\"" ""
else
  reapply_container_path_if_default "CertificatesFile" "CertificatesFile = \"$ETC_DIR/bnetserver.cert.pem\"" "./bnetserver.cert.pem"
  reapply_container_path_if_default "PrivateKeyFile"   "PrivateKeyFile = \"$ETC_DIR/bnetserver.key.pem\"" "./bnetserver.key.pem"
fi

db_info() { # $1 = database name
  echo "${MYSQL_HOST};${MYSQL_PORT};${MYSQL_USER};${MYSQL_PASSWORD};$1"
}

# Always follow the MYSQL_* environment (password/host may change in .env).
replace "LoginDatabaseInfo" "LoginDatabaseInfo = \"$(db_info auth)\""
if [ "$SERVER" = "worldserver" ]; then
  replace "WorldDatabaseInfo"     "WorldDatabaseInfo     = \"$(db_info world)\""
  replace "CharacterDatabaseInfo" "CharacterDatabaseInfo = \"$(db_info characters)\""
  replace "HotfixDatabaseInfo"    "HotfixDatabaseInfo    = \"$(db_info hotfixes)\""
fi

# ============================================================================
# 6b. Client data preflight (worldserver only)
#
#     worldserver hard-exit()s deep in its startup when client data is
#     missing ("Unable to load map and vmap data for starting zones",
#     "Some required *.txt GameTable files not found", ...) and Docker's
#     restart policy then loops it forever. Check up front and print one
#     actionable message instead.
# ============================================================================
if [ "$SERVER" = "worldserver" ]; then
  DATA_DIR="${TC_DATA_DIR:-/opt/tc/data}"
  missing=""
  for d in dbc maps vmaps mmaps gt; do
    # -z: present but empty counts as missing (an empty bind-mounted ./data)
    if [ ! -d "$DATA_DIR/$d" ] || [ -z "$(ls -A "$DATA_DIR/$d" 2>/dev/null)" ]; then
      missing="$missing $d"
    fi
  done
  if [ -n "$missing" ]; then
    echo
    warn "client data is missing or empty in ./data :$missing"
    log  ">>> worldserver cannot start without it. Extract it from a 3.4.3 client:"
    log  ">>>     ./extract-data.sh /path/to/3.4.3/client   (Windows: extract-data.bat)"
    log  ">>> The launcher moves the results into ./data for you, then:"
    log  ">>>     docker compose restart worldserver"
    log  ">>> (bnetserver is already running — you can create accounts meanwhile.)"
    log  ">>> Waiting for ./data to be populated (checking every 60 s) ..."
    while :; do
      still=""
      for d in dbc maps vmaps mmaps gt; do
        if [ ! -d "$DATA_DIR/$d" ] || [ -z "$(ls -A "$DATA_DIR/$d" 2>/dev/null)" ]; then
          still="$still $d"
        fi
      done
      [ -z "$still" ] && break
      sleep 60
    done
    log "client data found — continuing."
  fi
fi

log "starting ${SERVER} ..."
exec "$BIN_DIR/$SERVER" -c "$conf_target"
