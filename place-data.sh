#!/usr/bin/env bash
# ============================================================================
#  Place EXISTING extracted client data into ./data — no re-extraction.
#
#    ./place-data.sh /path/to/extracted/folder [--move] [--dry-run]
#
#  Use it when you already have a finished 3.4.3 extraction (the dbc/,
#  maps/, vmaps/, mmaps/, gt/ and cameras/ folders) — from ./extract-data.sh
#  earlier, from another machine, or run by hand — and just want to drop it
#  where the docker stack mounts it. This script needs nothing but bash and
#  cp; Docker is not involved.
#
#  The path may be:
#    - a folder that directly contains the data folders
#    - a client folder the extractors were already run in (the output sits
#      next to Wow.exe)
#    - another checkout of this repo (its ./data is found automatically)
#
#  Options:
#    --move     move the folders instead of copying — instant on the same
#               disk and frees the source space, but the source folders are
#               gone afterwards (default: copy)
#    --dry-run  show what would be done, touch nothing
#
#  Anything already in ./data (from an earlier attempt) is replaced first.
#  When it finishes, a running worldserver picks the data up within 60 s —
#  or make it immediate:  docker compose restart worldserver
# ============================================================================
set -euo pipefail

REQUIRED="dbc maps vmaps mmaps gt"   # worldserver refuses to start without all five
OPTIONAL="cameras"
ALL="$REQUIRED $OPTIONAL"

usage() {
  cat <<EOF
usage: $(basename "$0") /path/to/extracted/folder [--move] [--dry-run]

Place existing extracted client data (dbc maps vmaps mmaps gt cameras)
into ./data, where the docker stack mounts it. No re-extraction.

  --move      move the folders instead of copying (instant, frees the
              source space — the source folders are gone afterwards)
  --dry-run   show what would be done, touch nothing
EOF
}

die() { echo "ERROR: $*" >&2; exit 1; }

SRC=""
MODE="copy"
DRY=0
while [ $# -gt 0 ]; do
  case "$1" in
    --move)    MODE=move ;;
    --dry-run) DRY=1 ;;
    -h|--help) usage; exit 0 ;;
    -*)        usage >&2; die "unknown option: $1" ;;
    *)         if [ -n "$SRC" ]; then die "unexpected extra argument: $1"; fi
               SRC="$1" ;;
  esac
  shift
done

[ -n "$SRC" ] || { usage >&2; exit 1; }
[ -d "$SRC" ] || die "$SRC is not a folder"
SRC="$(cd "$SRC" && pwd)"

HERE="$(cd "$(dirname "$0")" && pwd)"
DEST="$HERE/data"

# ---------------------------------------------------------------------------
# Find the data root: the folder itself, or a data/ subfolder one level
# down (so pointing at another checkout of this repo works too).
# ---------------------------------------------------------------------------
has_required() { # $1 = dir — true only if all five required folders exist
  local d
  for d in $REQUIRED; do
    if [ ! -d "$1/$d" ]; then return 1; fi
  done
  return 0
}

ROOT=""
if has_required "$SRC"; then
  ROOT="$SRC"
elif has_required "$SRC/data"; then
  ROOT="$SRC/data"
  echo "  found the data in $ROOT — using that"
else
  # Some but not all of the required folders: take the folder as-is and let
  # the final check name what is missing.
  partial=""
  for d in $REQUIRED; do
    if [ -d "$SRC/$d" ]; then partial="$partial $d"; fi
  done
  if [ -n "$partial" ]; then
    echo "  WARNING: $SRC only has:$partial"
    ROOT="$SRC"
  else
    die "$SRC does not look like extracted client data — no dbc/maps/vmaps/mmaps/gt folders were found there (or in $SRC/data)."
  fi
fi

if [ "$ROOT" = "$DEST" ]; then
  echo "  the data is already in ./data — nothing to do."
  exit 0
fi

# ---------------------------------------------------------------------------
# Plan, then copy or move
# ---------------------------------------------------------------------------
echo "== placing existing data into ./data =="
echo "   source : $ROOT"
echo "   target : $DEST"
echo "   mode   : $MODE"
echo

if [ "$DRY" -eq 0 ]; then
  mkdir -p "$DEST"
fi

for d in $ALL; do
  if [ ! -d "$ROOT/$d" ]; then continue; fi
  size="$(du -sh "$ROOT/$d" 2>/dev/null | cut -f1 || echo '?')"
  if [ -d "$DEST/$d" ]; then
    echo "   $d ($size) -> data/$d   [replaces existing]"
  else
    echo "   $d ($size) -> data/$d"
  fi
  if [ "$DRY" -eq 1 ]; then continue; fi
  if [ -d "$DEST/$d" ]; then rm -rf "$DEST/$d"; fi
  if [ "$MODE" = "move" ]; then
    mv "$ROOT/$d" "$DEST/$d"
  else
    cp -a "$ROOT/$d" "$DEST/$d"
  fi
done

if [ "$DRY" -eq 1 ]; then
  echo
  echo "== dry run — nothing was touched =="
  exit 0
fi

# ---------------------------------------------------------------------------
# Verify — the same five folders worldserver's preflight demands, non-empty.
# ---------------------------------------------------------------------------
missing=""
for d in $REQUIRED; do
  if [ ! -d "$DEST/$d" ] || [ -z "$(ls -A "$DEST/$d" 2>/dev/null)" ]; then
    missing="$missing $d"
  fi
done
if [ -n "$missing" ]; then
  echo
  echo "ERROR: required data is missing or empty:$missing"
  echo "       worldserver will not start. Check the source folder and re-run."
  exit 1
fi

echo
echo "== done — ./data is ready =="
if [ -d "$DEST/cameras" ]; then
  echo "   (cameras included)"
else
  echo "   note: cameras/ was not found — it is optional, but some maps"
  echo "         are darker without it"
fi
echo
echo "   a running worldserver picks it up within 60 s, or restart it now:"
echo "       docker compose restart worldserver"
