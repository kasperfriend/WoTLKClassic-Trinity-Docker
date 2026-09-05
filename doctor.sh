#!/usr/bin/env bash
# ============================================================================
#  ./doctor.sh — read-only pre-flight check for this stack.
#
#  Run it whenever `docker compose up -d` refuses to start, and specifically
#  for the error most people end up here with:
#
#      Error response from daemon: pull access denied for
#      trinitycore-3.4.3, repository does not exist or may require
#      'docker login'
#
#  Short version: that name is a LOCAL one. It is not on Docker Hub and never
#  will be — it only exists after this repo builds it. The stack's default is
#  now the public prebuilt image (ghcr.io/kasperfriend/wotlkclassic-trinity-
#  docker:latest), so this error means an old .env still pins SERVER_IMAGE to
#  the local name while the policy allows a registry lookup. Either pair it with
#  SERVER_PULL_POLICY=never (build here) or delete the line (pull the CI image).
#
#  This script changes nothing: it only reports what it finds and prints the
#  command that fixes each problem. Exit code 0 = nothing fatal found.
#
#  Windows: run it from Git Bash / WSL. `extract-data.bat` checks the image on
#  its own, so the usual Windows path needs nothing here.
# ============================================================================
set -uo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"
cd "$HERE"

REQUIRED_DATA="dbc maps vmaps mmaps gt"   # worldserver refuses to start without these
OPTIONAL_DATA="cameras"
SERVER_PORTS="1119 8081 8085"

NL=$'\n'           # for appending to NEXT_CMDS below ("\n" inside "" is literal)
FAILURES=0
WARNINGS=0
NEXT_CMDS=""      # the fixes, newline separated, reprinted in the summary

hdr()  { printf '\n\033[1m%s\033[0m\n' "$*"; }
ok()   { printf '  [ ok ]  %s\n' "$*"; }
info() { printf '  [info]  %s\n' "$*"; }
warn() { printf '  [warn]  %s\n' "$*"; WARNINGS=$((WARNINGS + 1)); }
fail() { printf '  [FAIL]  %s\n' "$*"; FAILURES=$((FAILURES + 1)); }
fix()  { printf '           fix: %s\n' "$*"; NEXT_CMDS="${NEXT_CMDS:+$NEXT_CMDS$NL}$*"; }

# ---------------------------------------------------------------------------
# Read a key out of .env the way Compose does (env var wins, then the file).
# ---------------------------------------------------------------------------
env_value() { # $1 = key
  local key="$1" line=""
  if [ -n "${!key:-}" ]; then printf '%s' "${!key}"; return 0; fi
  if [ -f "$HERE/.env" ]; then
    line="$(sed -n "s/^[[:space:]]*${key}[[:space:]]*=[[:space:]]*//p" "$HERE/.env" | tail -n1)"
  fi
  line="$(printf '%s' "$line" | sed -e 's/[[:space:]]*#.*$//' -e 's/^"\(.*\)"$/\1/' -e "s/^'\(.*\)'$/\1/")"
  printf '%s' "$line"
}

IMAGE="$(env_value SERVER_IMAGE)"
if [ -n "$IMAGE" ]; then
  if [ -n "${SERVER_IMAGE:-}" ]; then IMAGE_SRC="from the environment"; else IMAGE_SRC="from .env"; fi
else
  IMAGE="ghcr.io/kasperfriend/wotlkclassic-trinity-docker:latest"; IMAGE_SRC="compose default, no .env override"
fi
POLICY="$(env_value SERVER_PULL_POLICY)"
[ -n "$POLICY" ] || POLICY="missing"

# Does the name carry a registry host?  "ghcr.io/o/r" and "localhost:5000/x"
# do; "trinitycore-3.4.3:local" and "my/name" resolve to Docker Hub.
is_registry_qualified() {
  case "$1" in
    *.*/*|*:*/*) return 0 ;;
    *)           return 1 ;;
  esac
}

probe() { # $1 = url → HTTP status code of a HEAD request, empty when unreachable
  command -v curl >/dev/null 2>&1 || return 0
  curl -sIL --max-time 10 -o /dev/null -w '%{http_code}' "$1" 2>/dev/null || true
}

# Ask a registry whether an image can be pulled WITHOUT credentials — that is
# the whole difference between "public package" and "run docker login first".
# Sets PUB_CODE (200 public / 401|403 private / 404 unknown name / "" unknown).
PUB_CODE=""
anonymous_pull_probe() { # $1 = full image name
  local name="$1" path tag tok repo
  case "$name" in ghcr.io/*) ;; *) return 0 ;; esac
  path="${name#ghcr.io/}"
  case "$path" in
    *:*) tag="${path##*:}"; path="${path%:*}" ;;
    *)   tag="latest" ;;
  esac
  # a digest reference or a name with more than one slash still works: the
  # token scope is the repository path, the tag goes on the manifest URL
  case "$path" in */*/*) return 0 ;; esac
  tok="$(curl -s --max-time 15 "https://ghcr.io/token?scope=repository:${path}:pull&service=ghcr.io" \
          2>/dev/null | sed -n 's/.*"token":"\([^"]*\)".*/\1/p')"
  [ -n "$tok" ] || return 0
  PUB_CODE="$(curl -sI --max-time 15 -o /dev/null -w '%{http_code}' \
      -H "Authorization: Bearer $tok" \
      -H 'Accept: application/vnd.oci.image.index.v1+json, application/vnd.docker.distribution.manifest.list.v2+json, application/vnd.docker.distribution.manifest.v2+json' \
      "https://ghcr.io/v2/${path}/manifests/${tag}" 2>/dev/null)"
  return 0
}

HAVE_DOCKER=0     # the docker CLI exists
ENGINE_OK=0       # ...and a daemon answers docker info
COMPOSE=""

hdr "1. Docker"
if ! command -v docker >/dev/null 2>&1; then
  fail "the 'docker' command is not on PATH"
  fix "install Docker Desktop (Windows/macOS) or docker + the compose plugin (Linux), then re-run ./doctor.sh"
else
  HAVE_DOCKER=1
  ok "docker $(docker --version 2>/dev/null | sed 's/^Docker version //;s/,.*//')"
  if docker info >/dev/null 2>&1; then
    ENGINE_OK=1
  else
    fail "the Docker engine is not reachable (is Docker Desktop running? is your user in the 'docker' group?)"
    fix "start Docker, then: docker info"
  fi
  if docker compose version >/dev/null 2>&1; then
    COMPOSE="docker compose"
  elif command -v docker-compose >/dev/null 2>&1 && docker-compose version >/dev/null 2>&1; then
    COMPOSE="docker-compose"
    warn "using the legacy 'docker-compose' binary"
  else
    COMPOSE=""
    if [ "$ENGINE_OK" -eq 0 ]; then
      warn "Compose could not be detected while the engine is not answering — fix Docker first, sections 2-3 stay skipped"
    else
      fail "no Compose found (neither 'docker compose' nor 'docker-compose')"
      fix "install the Docker Compose plugin: https://docs.docker.com/compose/install/"
    fi
  fi
  if [ -n "$COMPOSE" ]; then
    # 'never' as a pull policy needs Compose >= v2.17 (Jan 2023); section 3
    # catches older versions for real, by letting Compose parse the file.
    cver_raw="$($COMPOSE version --short 2>/dev/null)"
    [ -n "$cver_raw" ] || cver_raw="$($COMPOSE version 2>/dev/null | head -n1)"
    cver="$(printf '%s' "$cver_raw" | tr ' \t' '\n\n' | grep -E '^v?[0-9]+(\.[0-9]+)+' | head -n1)"
    ok "Compose ${cver:-$cver_raw}"
  fi
fi

hdr "2. The server image  ($IMAGE  — $IMAGE_SRC)"
if [ "$ENGINE_OK" -eq 0 ]; then
  info "skipped — no Docker engine to ask (section 1)"
else
  CACHED=no
  docker image inspect "$IMAGE" >/dev/null 2>&1 && CACHED=yes

  if is_registry_qualified "$IMAGE"; then
    # Registry image: the question is whether it can be pulled anonymously.
    case "$POLICY" in
      never*)
        warn "SERVER_PULL_POLICY=never + a registry image: $IMAGE only works if it is already cached"
        fix "docker pull $IMAGE    (or set SERVER_PULL_POLICY=missing so 'up' pulls it itself)" ;;
      *)  if [ "$CACHED" = yes ]; then
            ok "cache hit — 'up' starts straight from the local image (policy: $POLICY)"
          else
            ok "not cached — 'up' pulls it from the registry (policy: $POLICY)"
          fi ;;
    esac
    if [ "$CACHED" = no ] && command -v curl >/dev/null 2>&1; then
      anonymous_pull_probe "$IMAGE"
      case "$PUB_CODE" in
        200)      ok "$IMAGE is anonymously pullable — the package is Public, no 'docker login' needed" ;;
        401|403)  fail "$IMAGE needs credentials — the GHCR package is Private"
                  fix "GitHub → $IMAGE's repo → Packages → this package → Manage visibility → Public (one click, then nobody logs in)" ;;
        404)      fail "the registry has no $IMAGE (wrong owner/repo case, renamed repo, or a tag never pushed)"
                  fix "check the tag on the repo's Packages page, or delete the SERVER_IMAGE line so the compose default is used" ;;
        ""|000)   info "could not reach the registry from here (offline?) — 'docker compose up' will answer it" ;;
        *)        warn "registry answered HTTP $PUB_CODE for $IMAGE" ;;
      esac
    fi
  else
    # Local-only name: nothing to pull, so it must exist in this engine.
    info "'$IMAGE' is a local-only name — this repo builds it, no registry serves it."
    case "$POLICY" in
      never*) ok "policy is 'never' → Compose builds it here instead of probing Docker Hub" ;;
      *)      warn "a plain name with policy '$POLICY' makes Compose look it up on Docker Hub → 'pull access denied for ${IMAGE%%:*}'"
              fix "set SERVER_PULL_POLICY=never in .env alongside it, or delete SERVER_IMAGE to use the public CI image" ;;
    esac
  fi

  if [ "$CACHED" = yes ]; then
    created="$(docker image inspect "$IMAGE" --format '{{.Created}}' 2>/dev/null | cut -d. -f1)"
    size="$(docker image inspect "$IMAGE" --format '{{.Size}}' 2>/dev/null | awk '$1 ~ /^[0-9]+$/ { printf "%.1f GB", $1/1073741824 }')"
    detail=""
    [ -n "$size" ]    && detail="$size"
    [ -n "$created" ] && detail="${detail:+$detail, }built $created"
    [ -n "$detail" ]  && detail=" ($detail)"
    ok "present in this Docker engine$detail"
    if [ "$(docker images -q "$IMAGE" 2>/dev/null | wc -l | tr -d ' ')" = "0" ]; then
      warn "'$IMAGE' resolves to an untagged/dangling image"
      fix "docker compose build   (re-tags it as $IMAGE)"
    fi
  elif is_registry_qualified "$IMAGE"; then
    case "$POLICY" in
      never*) fail "'$IMAGE' is neither cached nor allowed to be pulled (policy: never)"
              fix "docker pull $IMAGE   or set SERVER_PULL_POLICY=missing" ;;
      *)      info "not cached yet: the next 'docker compose up' downloads it (a few minutes, no login)" ;;
    esac
  else
    warn "'$IMAGE' is not built in this engine yet — 'docker compose up -d' will compile it first (25-45 min)"
    info "        'docker compose pull' is not a fix for a local name; 'docker login' is not either."
    fix "want the ready image instead? delete SERVER_IMAGE/SERVER_PULL_POLICY from .env (the default is the public CI build)"
  fi
fi

hdr "3. Compose file"
if [ -n "$COMPOSE" ] && docker info >/dev/null 2>&1; then
  cfg_err="$($COMPOSE config --quiet 2>&1 >/dev/null)"
  if [ -z "$cfg_err" ]; then
    ok "docker-compose.yml parses and interpolates cleanly"
  else
    fail "your Compose cannot read this docker-compose.yml:"
    printf '%s\n' "$cfg_err" | sed 's/^/           /' | head -n 8
    case "$cfg_err" in
      *pull_policy*)
        fix "your Compose is older than the 'pull_policy' attribute — update Docker Desktop / the compose plugin, or delete the pull_policy lines and always build first: 'docker compose build'" ;;
      *)
        fix "apply the hint above, then re-run ./doctor.sh" ;;
    esac
  fi
else
  info "skipped (no reachable Docker engine or no Compose)"
fi

hdr "4. Client data (./data)"
if [ ! -d "$HERE/data" ]; then
  warn "./data does not exist yet — worldserver will wait for it"
  fix "./extract-data.sh /path/to/3.4.3/client      # Windows: drag the client folder onto extract-data.bat"
  fix "./place-data.sh /path/to/extracted           # or place an extraction you already have"
else
  missing=""
  empty=""
  for d in $REQUIRED_DATA; do
    if [ ! -d "$HERE/data/$d" ]; then missing="$missing $d";
    elif [ -z "$(ls -A "$HERE/data/$d" 2>/dev/null)" ]; then empty="$empty $d";
    fi
  done
  if [ -n "$missing$empty" ]; then
    [ -n "$missing" ] && fail "missing from ./data:$missing"
    [ -n "$empty"     ] && fail "empty in ./data:$empty"
    fix "./place-data.sh /path/to/extracted   (or re-run the extractors — see README step 3)"
  else
    ok "dbc/ maps/ vmaps/ mmaps/ gt/ present ($(du -sh "$HERE/data" 2>/dev/null | cut -f1))"
    case " $(ls -1 "$HERE/data" 2>/dev/null | tr '\n' ' ') " in
      *" $OPTIONAL_DATA "*) ok "cameras/ present" ;;
      *)                    info "no cameras/ — optional, but some zones are darker without it" ;;
    esac
  fi
fi

hdr "5. Extractor launchers"
if [ ! -f "$HERE/extract-data.sh" ] && [ ! -f "$HERE/extract-data.bat" ]; then
  warn "no extract-data.sh / extract-data.bat in this folder (the 'extractors' service never ran)"
  fix "docker compose up -d extractors   → then: docker compose logs extractors"
else
  [ -f "$HERE/extract-data.sh" ] && [ -x "$HERE/extract-data.sh" ] \
    && ok "extract-data.sh present and executable"
  if [ -f "$HERE/extract-data.sh" ]; then
    baked="$(sed -n 's/^BAKED_IMAGE="\(.*\)"$/\1/p' "$HERE/extract-data.sh" | head -n1)"
    if [ -z "$baked" ]; then
      warn "extract-data.sh was generated by an older image"
      fix "docker compose up -d extractors   (regenerates the launchers and tools/)"
    elif [ "$baked" != "$IMAGE" ]; then
      warn "extract-data.sh defaults to '$baked' while the stack runs '$IMAGE'"
      fix "docker compose up -d extractors   (bakes the current SERVER_IMAGE into the launcher)"
    else
      ok "extract-data.sh defaults to the same image as the stack ($baked)"
    fi
    if ! grep -q 'ensure_image' "$HERE/extract-data.sh"; then
      warn "extract-data.sh cannot check the image before 'docker run' — it would try Docker Hub and print the 'pull access denied' error"
      fix "docker compose up -d extractors   (re-run it after the next image build)"
    fi
  fi
fi

hdr "6. Host ports"
if command -v ss >/dev/null 2>&1; then
  LISTEN="$(ss -ltn 2>/dev/null | tr -s ' ')"
  MINE=""
  if [ "$ENGINE_OK" -eq 1 ]; then
    MINE="$(docker ps --filter 'name=wow343-' --format '{{.Names}}' 2>/dev/null | tr '\n' ' ')"
  fi
  for p in $SERVER_PORTS; do
    if printf '%s\n' "$LISTEN" | grep -q "[:.]$p "; then
      if [ -n "$MINE" ]; then
        info "port $p is bound by this stack ($MINE)"
      else
        warn "port $p is already in use by something outside this stack; the containers would fail to bind it"
        fix "stop that program, or remap in docker-compose.yml (\"1119:1119\" → \"11119:1119\")"
      fi
    else
      info "port $p is free"
    fi
  done
else
  info "skipped (no 'ss'); 'address already in use' in a container log means a port clash — remap it in docker-compose.yml"
fi

hdr "7. First-run downloads (needs internet)"
# The DB bundle is needed by everybody on the first boot; the source repo only
# by people who compile the image here, so its severity follows $CACHED.
[ "${CACHED:-}" = yes ] && BUILD_NEEDED=no || BUILD_NEEDED=yes
# A fresh clone builds the image from SOURCE_REPO and then downloads the world
# DB inside the container. If either URL is gone, you want to know before the
# 25-45 minute compile, not after it.
SRC_REPO_URL="$(env_value SOURCE_REPO)"
[ -n "$SRC_REPO_URL" ] || SRC_REPO_URL="https://github.com/xHashii/3.4.3_Source.git"
DB_BUNDLE_URL="$(env_value DB_URL)"
[ -n "$DB_BUNDLE_URL" ] || DB_BUNDLE_URL="https://github.com/lineagedr/3.4.3_Source/releases/download/databases/Databases.7z"

if ! command -v curl >/dev/null 2>&1; then
  info "skipped (no curl): SOURCE_REPO=$SRC_REPO_URL"
  info "                     DB_URL=$DB_BUNDLE_URL"
else
  repo_page="$(printf '%s' "$SRC_REPO_URL" | sed -e 's/\.git$//' -e 's|^git@github.com:|https://github.com/|')"
  case "$repo_page" in
    http*)
      code="$(probe "$repo_page")"
      case "$code" in
        200|301|302) ok "source to compile (only if you build here): $repo_page → $code" ;;
        000|"")       if [ "$BUILD_NEEDED" = no ]; then info "GitHub not reachable — irrelevant while the image is cached, but a rebuild would fail at the git clone"; else warn "no internet (or GitHub unreachable) — a fresh 'docker compose build' would fail at the git clone"; fi ;;
        404)         if [ "$BUILD_NEEDED" = no ]; then warn "SOURCE_REPO is gone ($repo_page → 404) — fine today, but the next rebuild dies with 'repository not found'"; else fail "SOURCE_REPO is gone ($repo_page → 404) — the build would die with 'repository not found'"; fi
                     fix "point .env at a live fork: SOURCE_REPO=https://github.com/<you>/<fork>.git" ;;
        *)           warn "SOURCE_REPO page returned HTTP $code ($repo_page)" ;;
      esac ;;
    *) info "SOURCE_REPO is not a GitHub web URL, skipping that probe ($SRC_REPO_URL)" ;;
  esac

  code="$(probe "$DB_BUNDLE_URL")"
  case "$code" in
    200|301|302|307) ok "world DB bundle: $DB_BUNDLE_URL → $code" ;;
    000|"")          warn "cannot reach the DB bundle right now (no internet?) — worldserver would wait for ./import/world/*.sql" ;;
    404)             fail "the DB bundle download is gone (HTTP 404) — you would get a built image and an empty world DB"
                     fix "set DB_URL in .env to a live dump, or drop your own dumps into ./import/world/ and set AUTO_DOWNLOAD_DB=false" ;;
    *)               warn "DB bundle returned HTTP $code — first boot may fall back to waiting for ./import/world/*.sql" ;;
  esac

  code="$(probe https://registry-1.docker.io/v2/)"
  case "$code" in
    200|401|403) ok "Docker Hub reachable (pulls mysql:8.0 + the 'ubuntu' build base)" ;;
    *)           warn "Docker Hub did not answer (HTTP ${code:-none}) — normal if you use a registry mirror or an offline box; otherwise mysql:8.0 and the build base cannot be pulled" ;;
  esac
  info "        (both URLs are overridable in .env: SOURCE_REPO, DB_URL)"
fi

hdr "Summary"

if [ "$FAILURES" -eq 0 ] && [ "$WARNINGS" -eq 0 ]; then
  if [ "$ENGINE_OK" -eq 1 ]; then
    ok "nothing to fix — start (or restart) the stack:  ${COMPOSE:-docker compose} up -d"
  else
    warn "nothing else checked: Docker is not available, so sections 2, 3 and 6 were skipped"
  fi
elif [ "$FAILURES" -eq 0 ]; then
  ok "no fatal problems — $WARNINGS warning(s) above"
else
  printf '  %d problem(s), %d warning(s) — see the fixes above.\n' "$FAILURES" "$WARNINGS"
fi
if [ -n "$NEXT_CMDS" ]; then
  echo
  printf '  Commands that clear it (in order):\n'
  printf '%s\n' "$NEXT_CMDS" | while IFS= read -r line; do printf '    %s\n' "$line"; done
fi
echo
exit $(( FAILURES > 0 ? 1 : 0 ))
