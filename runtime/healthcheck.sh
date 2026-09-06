#!/usr/bin/env bash
# Health: is the expected server process running AND listening on every port it
# needs? worldserver -> 8085; bnetserver -> 1119 (Battle.net) + 8081 (REST).
set -u

# Do not connect to a TLS port just to test it. A TCP probe that closes before
# completing/cleanly shutting down TLS makes bnetserver log:
#
#   SSL Handshake failed stream truncated
#
# Even `openssl s_client` is unsuitable here: once stdin reaches EOF it can
# close in a way the server reports as a truncated stream. Read Linux's socket
# table instead. State 0A is LISTEN; port matching is independent of the bind
# address and covers both IPv4 and IPv6.
check_listening_port() {
  local port_hex
  printf -v port_hex '%04X' "$1"

  awk -v port="$port_hex" '
    NR > 1 {
      split($2, endpoint, ":")
      if (toupper(endpoint[2]) == port && $4 == "0A")
        found = 1
    }
    END { exit(found ? 0 : 1) }
  ' /proc/net/tcp /proc/net/tcp6 2>/dev/null
}

if pgrep -x worldserver >/dev/null 2>&1; then
  check_listening_port 8085 || exit 1
  exit 0
fi

if pgrep -x bnetserver >/dev/null 2>&1; then
  check_listening_port 1119 || exit 1
  check_listening_port 8081 || exit 1
  exit 0
fi

exit 1
