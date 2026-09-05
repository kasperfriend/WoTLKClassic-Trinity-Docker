# smoke diagnosis

- image attempted: `ghcr.io/kasperfriend/wotlkclassic-trinity-docker:latest`
- generated: 2026-09-05T08:07:47Z

## 1. pull
Error response from daemon: manifest unknown
PULL_FAILED

## 1b. fallback candidates
- trying ghcr.io/kasperfriend/wotlkclassic-trinity-docker:latest
Error response from daemon: manifest unknown
  PULL_FAILED
- trying ghcr.io/kasperfriend/trinitycore-3.4.3:latest
Error response from daemon: manifest unknown
  PULL_FAILED

## 6. candidate fix: libmysqlclient21 in ubuntu:24.04
Unable to find image 'ubuntu:24.04' locally
24.04: Pulling from library/ubuntu
0926a8eb0e60: Already exists
Digest: sha256:33ceb71981b602c1a7443a53469e4dba065f7503eab3078a2d7a57a2ab987517
Status: Downloaded newer image for ubuntu:24.04
libmysqlclient21 INSTALL_OK
/usr/lib/x86_64-linux-gnu/libmysqlclient.so.21.2.46
/usr/lib/x86_64-linux-gnu/libmysqlclient.so.21
