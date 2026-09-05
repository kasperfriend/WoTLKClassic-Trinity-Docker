#!/usr/bin/env bash
# ============================================================================
# Extract client data (dbc / maps / vmaps / mmaps) from a WoW 3.4.3
# (WotLK Classic) client using the tools built inside the Docker image.
#
# Usage:
#   ./helpers/extract-data.sh /path/to/3.4.3/client
#
# After it finishes, the data sits in ./data/ — exactly where the compose
# stack mounts it. Restart the stack and worldserver can load the world.
#
# Notes:
#   * The client folder is mounted READ-WRITE — the extractors write their
#     output next to the game files. Keep ~10-20 GB of free disk space.
#   * Files are created as root (container default). The servers run as
#     root in the container too, so this is fine; on the host you may want
#     to `sudo chown -R $USER ./data` afterwards.
# ============================================================================
set -euo pipefail

CLIENT="${1:-}"
[ -n "$CLIENT" ] || { echo "usage: $0 /path/to/3.4.3/client"; exit 1; }
CLIENT="$(cd "$CLIENT" && pwd)"

IMAGE="${SERVER_IMAGE:-trinitycore-3.4.3:local}"
# Fall back to a locally built image if the configured one isn't available
if ! docker image inspect "$IMAGE" >/dev/null 2>&1; then
  IMAGE="trinitycore-3.4.3:local"
  echo "Image not found locally — building $IMAGE ..."
  docker build -t "$IMAGE" "$(cd "$(dirname "$0")/.." && pwd)"
fi

echo "== running extraction tools inside $IMAGE =="
docker run --rm \
  -v "$CLIENT:/client" \
  -w /client \
  --entrypoint /bin/bash \
  "$IMAGE" -euo pipefail -c '
    echo "--- mapextractor (dbc + maps + cameras + gt)"
    /opt/tc/bin/mapextractor
    echo "--- vmap4extractor (raw model data -> ./Buildings)"
    # It refuses to start if ./Buildings already holds dir/dir_bin from a
    # previous, possibly aborted run.
    rm -rf ./Buildings
    /opt/tc/bin/vmap4extractor
    echo "--- vmap4assembler (./Buildings -> ./vmaps)"
    # ARGV: <raw data dir> <vmap dest dir>. vmap4extractor writes its raw
    # output to ./Buildings, so that — not "." — is the source directory.
    rm -rf ./vmaps
    /opt/tc/bin/vmap4assembler Buildings vmaps
    echo "--- mmaps_generator (needs ./maps + ./vmaps in the cwd)"
    /opt/tc/bin/mmaps_generator
    echo "--- all tools finished"
    # The raw intermediate is ~10 GB and is not needed by the server.
    rm -rf ./Buildings
'

echo "== copying results into ./data =="
mkdir -p data
# gt/ is MANDATORY: worldserver aborts with "Some required *.txt GameTable
# files not found" without it. cameras/ is optional (cinematics only) but
# tiny, so it comes along too.
for d in dbc maps vmaps mmaps cameras gt; do
  if [ -d "$CLIENT/$d" ]; then
    rm -rf "data/$d"
    mv "$CLIENT/$d" "data/$d"
    echo "  data/$d  ($(du -sh "data/$d" | cut -f1))"
  else
    echo "  WARNING: $d was not produced" >&2
  fi
done

echo "== done. restart the stack:  docker compose restart worldserver =="
