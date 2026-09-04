#!/usr/bin/env bash
# Health: is a server process running AND listening on its port?
# worldserver -> 8085, bnetserver -> 1119
set -u
check_port() {
  (exec 3<>"/dev/tcp/127.0.0.1/$1") 2>/dev/null || return 1
  exec 3>&- 3<&- || true
  return 0
}
if pgrep -x worldserver >/dev/null 2>&1; then
  check_port 8085 || exit 1
  exit 0
fi
if pgrep -x bnetserver >/dev/null 2>&1; then
  check_port 1119 || exit 1
  exit 0
fi
exit 1
