# build report (2026-09-05T08:28:13Z)

## A. unfixed image (Dockerfile from main): ldd
```
--- /opt/tc/bin/bnetserver
	libmysqlclient.so.21 => not found
	libboost_filesystem.so.1.83.0 => /lib/x86_64-linux-gnu/libboost_filesystem.so.1.83.0 (0x00007f6243a8d000)
	libboost_program_options.so.1.83.0 => /lib/x86_64-linux-gnu/libboost_program_options.so.1.83.0 (0x00007f6243a4b000)
	libboost_locale.so.1.83.0 => /lib/x86_64-linux-gnu/libboost_locale.so.1.83.0 (0x00007f62439b6000)
	libssl.so.3 => /lib/x86_64-linux-gnu/libssl.so.3 (0x00007f624390c000)
	libboost_thread.so.1.83.0 => /lib/x86_64-linux-gnu/libboost_thread.so.1.83.0 (0x00007f6242ef9000)
--- /opt/tc/bin/bnetserver.cert.pem
--- /opt/tc/bin/bnetserver.key.pem
--- /opt/tc/bin/mapextractor
	libboost_filesystem.so.1.83.0 => /lib/x86_64-linux-gnu/libboost_filesystem.so.1.83.0 (0x00007fcba856f000)
	libboost_locale.so.1.83.0 => /lib/x86_64-linux-gnu/libboost_locale.so.1.83.0 (0x00007fcba84da000)
	libssl.so.3 => /lib/x86_64-linux-gnu/libssl.so.3 (0x00007fcba8414000)
	libboost_thread.so.1.83.0 => /lib/x86_64-linux-gnu/libboost_thread.so.1.83.0 (0x00007fcba7a1f000)
--- /opt/tc/bin/mmaps_generator
	libboost_filesystem.so.1.83.0 => /lib/x86_64-linux-gnu/libboost_filesystem.so.1.83.0 (0x00007f548cbb1000)
	libboost_locale.so.1.83.0 => /lib/x86_64-linux-gnu/libboost_locale.so.1.83.0 (0x00007f548cb1c000)
	libboost_thread.so.1.83.0 => /lib/x86_64-linux-gnu/libboost_thread.so.1.83.0 (0x00007f548c536000)
--- /opt/tc/bin/vmap4assembler
	libboost_filesystem.so.1.83.0 => /lib/x86_64-linux-gnu/libboost_filesystem.so.1.83.0 (0x00007ff2e2753000)
	libboost_locale.so.1.83.0 => /lib/x86_64-linux-gnu/libboost_locale.so.1.83.0 (0x00007ff2e26be000)
	libboost_thread.so.1.83.0 => /lib/x86_64-linux-gnu/libboost_thread.so.1.83.0 (0x00007ff2e20d8000)
--- /opt/tc/bin/vmap4extractor
	libboost_filesystem.so.1.83.0 => /lib/x86_64-linux-gnu/libboost_filesystem.so.1.83.0 (0x00007f24f9974000)
	libboost_locale.so.1.83.0 => /lib/x86_64-linux-gnu/libboost_locale.so.1.83.0 (0x00007f24f98df000)
	libssl.so.3 => /lib/x86_64-linux-gnu/libssl.so.3 (0x00007f24f9819000)
	libboost_thread.so.1.83.0 => /lib/x86_64-linux-gnu/libboost_thread.so.1.83.0 (0x00007f24f8d3b000)
--- /opt/tc/bin/worldserver
	libmysqlclient.so.21 => not found
	libboost_filesystem.so.1.83.0 => /lib/x86_64-linux-gnu/libboost_filesystem.so.1.83.0 (0x00007fad4bc7b000)
	libboost_program_options.so.1.83.0 => /lib/x86_64-linux-gnu/libboost_program_options.so.1.83.0 (0x00007fad4bc39000)
	libboost_locale.so.1.83.0 => /lib/x86_64-linux-gnu/libboost_locale.so.1.83.0 (0x00007fad4bba4000)
	libopenssl_ed25519.so => /opt/tc/lib/libopenssl_ed25519.so (0x00007fad4bb8f000)
	libreadline.so.8 => /lib/x86_64-linux-gnu/libreadline.so.8 (0x00007fad4bb1c000)
	libssl.so.3 => /lib/x86_64-linux-gnu/libssl.so.3 (0x00007fad4ba72000)
	libboost_thread.so.1.83.0 => /lib/x86_64-linux-gnu/libboost_thread.so.1.83.0 (0x00007fad4af94000)
=== mysql/mariadb sonames present in image ===
	libmariadb.so.3 (libc6,x86-64) => /lib/x86_64-linux-gnu/libmariadb.so.3
=== installed mysql/mariadb packages ===
ii  libmariadb3:amd64                    1:10.11.14-0ubuntu0.24.04.1       amd64        MariaDB database client library
ii  mariadb-client                       1:10.11.14-0ubuntu0.24.04.1       amd64        MariaDB database client binaries
ii  mariadb-client-core                  1:10.11.14-0ubuntu0.24.04.1       amd64        MariaDB database core client binaries
ii  mariadb-common                       1:10.11.14-0ubuntu0.24.04.1       all          MariaDB database common files (e.g. /etc/mysql/mariadb.conf.d/)
ii  mysql-common                         5.8+1.1.0build1                   all          MySQL database common files, e.g. /etc/mysql/my.cnf
```

## B. unfixed image: the EXACT daily-rebuild link check
```
LINKCHECK_FAIL  <-- this is what fails the daily-rebuild smoke test
```

## C. unfixed image: bnetserver banner check
```
/opt/tc/bin/bnetserver: error while loading shared libraries: libmysqlclient.so.21: cannot open shared object file: No such file or directory
```
BANNER_PASS
