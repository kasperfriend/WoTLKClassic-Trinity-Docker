#!/usr/bin/env bash
# Health: is a server process running AND listening on its port?
# worldserver -> 8085, bnetserver -> 1119
set -u
check_port() {
  (exec 3<>"/dev/tcp/127.0.0.1/$1") 2>/dev/null || return 1
  exec 3>&- 3<&- || true
  return 0
}
# bnetserver speaks TLS on 1119. A bare /dev/tcp probe only makes a raw TCP
# connection and immediately closes it, which bnetserver logs as
# "SSL Handshake failed stream truncated" every time Docker's healthcheck runs.
# Use a real TLS handshake when openssl is available (the image ships it).
check_bnet_tls() {
  command -v openssl >/dev/null 2>&1 || return 1
  timeout 3 openssl s_client -connect 127.0.0.1:1119 -tls1_2 </dev/null >/dev/null 2>&1
}
if pgrep -x worldserver >/dev/null 2>&1; then
  check_port 8085 || exit 1
  exit 0
fi
if pgrep -x bnetserver >/dev/null 2>&1; then
  check_bnet_tls || check_port 1119 || exit 1
  exit 0
fi
exit 1
