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
#  Short version: `trinitycore-3.4.3:local` is a LOCAL image name. It is not
#  on Docker Hub and never will be — it only exists after this repo builds it.
#  Docker fell back to the registry because the image was missing in that
#  engine, so the fix is almost always:  docker compose build
#  (or point SERVER_IMAGE at your GHCR image and set SERVER_PULL_POLICY).
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
  IMAGE="trinitycore-3.4.3:local"; IMAGE_SRC="compose default, no .env override"
fi
POLICY="$(env_value SERVER_PULL_POLICY)"
[ -n "$POLICY" ] || POLICY="never (compose default)"

# Does the name carry a registry host?  "ghcr.io/o/r" and "localhost:5000/x"
# do; "trinitycore-3.4.3:local" and "my/name" resolve to Docker Hub.
is_registry_qualified() {
  case "$1" in
    *.*/*|*:*/*) return 0 ;;
    *)           return 1 ;;
  esac
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
  if is_registry_qualified "$IMAGE"; then
    ok "'$IMAGE' is a registry image — pulling it is expected (policy: $POLICY)"
    case "$POLICY" in
      never*)
        warn "SERVER_PULL_POLICY=never + a registry image: $IMAGE only works if it is already cached"
        fix "docker pull $IMAGE    (or set SERVER_PULL_POLICY=always in .env so every up refreshes it)" ;;
    esac
    if ! docker manifest inspect "$IMAGE" >/dev/null 2>&1; then
      warn "the registry has no readable '$IMAGE' (private package, wrong name, or not logged in)"
      fix "GHCR: set the package to Public, or run 'docker login ghcr.io'. The name is ghcr.io/<owner>/<repo-lowercased>:<tag>"
    fi
  else
    info "'$IMAGE' is a local-only name — this repo builds it, no registry serves it."
    info "So 'pull access denied' / 'repository does not exist' about it means MISSING, not bad credentials."
  fi

  if docker image inspect "$IMAGE" >/dev/null 2>&1; then
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
  else
    fail "'$IMAGE' is NOT in this Docker engine — Compose must build it (25-45 min) before anything can start"
    fix "docker compose build     (or just: docker compose up -d — it builds when the image is missing)"
    if ! is_registry_qualified "$IMAGE"; then
      info "        note: 'docker compose pull' is not a fix. For '$IMAGE' it asks Docker Hub and"
      info "        answers exactly the error you are chasing (pull access denied for ${IMAGE%%:*})."
      info "        'docker login' does not help either — the repository does not exist."
    fi
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
