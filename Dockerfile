# syntax=docker/dockerfile:1
#
# ============================================================================
#  TrinityCore 3.4.3 (WotLK Classic) — Docker build
#  Source: https://github.com/xHashii/3.4.3_Source
#
#  Multi-stage build:
#    builder  – clones the upstream source and compiles worldserver,
#               bnetserver and the map/vmap/mmap extraction tools
#    runtime  – slim image with only the runtime libraries + the built
#               artifacts + the SQL tree (so the built-in DB auto-updater
#               can apply sql/updates on startup)
#
#  The upstream commit that gets built can be pinned from CI via
#  SOURCE_SHA (see .github/workflows/poll-and-build.yml). Locally, a plain
#  `docker build .` always builds the latest upstream main branch.
# ============================================================================

ARG UBUNTU_VERSION=24.04

# ----------------------------------------------------------------------------
# Stage 1 — builder
# ----------------------------------------------------------------------------
FROM ubuntu:${UBUNTU_VERSION} AS builder

ARG DEBIAN_FRONTEND=noninteractive
# Where the code comes from (overridable so you can point at your own fork)
ARG SOURCE_REPO=https://github.com/xHashii/3.4.3_Source.git
ARG SOURCE_BRANCH=main
ARG SOURCE_SHA=
# Changing CACHEBUST forces a fresh git clone (used by the daily CI job)
ARG CACHEBUST=0

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      build-essential \
      ca-certificates \
      ccache \
      cmake \
      default-libmysqlclient-dev \
      git \
      libboost-all-dev \
      libreadline-dev \
      libssl-dev \
      ninja-build \
      pkg-config \
 && rm -rf /var/lib/apt/lists/*

# Clone the upstream source (pinned to SOURCE_SHA when provided)
RUN git clone --depth 1 --branch "${SOURCE_BRANCH}" "${SOURCE_REPO}" /src \
 && cd /src \
 && if [ -n "${SOURCE_SHA}" ]; then \
      git fetch --depth 1 origin "${SOURCE_SHA}" \
      && git checkout --quiet --detach "${SOURCE_SHA}"; \
    fi \
 && git rev-parse HEAD

WORKDIR /src
# NOTE: -Wno-changes-meaning — GCC >= 14 turns this conformance warning into
# an error; upstream TrinityCore headers (BattlePay packets) rely on the
# previously-legal name shadowing. Purely diagnostic, no codegen impact.
RUN cmake -B build -G Ninja \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_INSTALL_PREFIX=/opt/tc \
      -DCMAKE_C_COMPILER_LAUNCHER=ccache \
      -DCMAKE_CXX_COMPILER_LAUNCHER=ccache \
      -DCMAKE_CXX_FLAGS="-Wno-changes-meaning" \
      -DSERVERS=ON \
      -DTOOLS=ON \
      -DWITH_DYNAMIC_LINKING=OFF \
      -DCOPY_CONF=ON \
 && ninja -C build -j"$(nproc)" \
 && DESTDIR=/stage ninja -C build install

# The SQL tree travels with the image so worldserver's auto-updater can
# apply sql/updates/<db>/*.sql on every start (SourceDirectory in conf).
# ----------------------------------------------------------------------------
# Stage 2 — runtime
# ----------------------------------------------------------------------------
FROM ubuntu:${UBUNTU_VERSION}

ARG DEBIAN_FRONTEND=noninteractive

# NOTE: libmysqlclient21 is NOT optional — the builder's default-libmysqlclient-dev
# links worldserver/bnetserver against libmysqlclient.so.21 (see the core's
# cmake/macros/FindMySQL.cmake, which resolves `mysql_config --libs_r`).
# libmariadb3 only provides libmariadb.so.3, so without it both servers die at
# the dynamic loader with "error while loading shared libraries".
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      bash \
      ca-certificates \
      curl \
      libboost-filesystem1.83.0 \
      libboost-iostreams1.83.0 \
      libboost-locale1.83.0 \
      libboost-program-options1.83.0 \
      libboost-regex1.83.0 \
      libboost-system1.83.0 \
      libboost-thread1.83.0 \
      libmariadb3 \
      libmysqlclient21 \
      libreadline8t64 \
      libssl3t64 \
      mariadb-client \
      p7zip-full \
      procps \
      tzdata \
      zlib1g \
 && rm -rf /var/lib/apt/lists/*

# Binaries + configs + SQL tree from the builder
COPY --from=builder /stage/opt/tc /opt/tc
COPY --from=builder /src/sql /opt/tc/sql
# bnetserver TLS certs (upstream's bundled self-signed pair)
COPY --from=builder /src/src/server/bnetserver/bnetserver.cert.pem /opt/tc/etc/
COPY --from=builder /src/src/server/bnetserver/bnetserver.key.pem /opt/tc/etc/

COPY runtime/entrypoint.sh /usr/local/bin/entrypoint.sh
COPY runtime/healthcheck.sh /usr/local/bin/healthcheck.sh
COPY runtime/export-tools.sh /usr/local/bin/export-tools.sh
RUN chmod +x /usr/local/bin/entrypoint.sh /usr/local/bin/healthcheck.sh \
      /usr/local/bin/export-tools.sh \
 && mkdir -p /opt/tc/data /opt/tc/logs /opt/tc/import/world /opt/tc/conf

ENV TZ=UTC \
    AUTO_DOWNLOAD_DB=true \
    TC_CONF_DIR=/opt/tc/conf \
    REALM_NAME="TrinityCore 3.4.3" \
    REALM_ADDRESS=127.0.0.1

WORKDIR /opt/tc
VOLUME ["/opt/tc/data", "/opt/tc/logs"]
EXPOSE 1119 8081 8085

LABEL org.opencontainers.image.title="TrinityCore 3.4.3 (WotLK Classic)" \
      org.opencontainers.image.description="worldserver + bnetserver + extraction tools built daily from xHashii/3.4.3_Source" \
      org.opencontainers.image.source="https://github.com/xHashii/3.4.3_Source" \
      org.opencontainers.image.licenses="GPL-2.0"

# CMD: "worldserver" or "bnetserver" — or any tool/command (map_extractor, ...)
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["worldserver"]
