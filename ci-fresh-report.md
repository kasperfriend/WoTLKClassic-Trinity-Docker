# fresh-clone report (2026-09-05T12:42:40Z)

## 1. clone + cp .env.example .env + docker compose up -d
```
CLONE_OK (29e9f58)
total 76
drwxr-xr-x  7 runner runner  4096 Sep  5 12:42 .
drwxr-x--- 12 runner runner  4096 Sep  5 12:42 ..
-rw-r--r--  1 runner runner   142 Sep  5 12:42 .dockerignore
-rw-r--r--  1 runner runner  1262 Sep  5 12:42 .env.example
drwxr-xr-x  7 runner runner  4096 Sep  5 12:42 .git
drwxr-xr-x  3 runner runner  4096 Sep  5 12:42 .github
-rw-r--r--  1 runner runner   148 Sep  5 12:42 .gitignore
-rw-r--r--  1 runner runner  5373 Sep  5 12:42 Dockerfile
-rw-r--r--  1 runner runner 12958 Sep  5 12:42 README.md
-rw-r--r--  1 runner runner  4548 Sep  5 12:42 ci-db-report.md
-rw-r--r--  1 runner runner  3564 Sep  5 12:42 docker-compose.yml
drwxr-xr-x  2 runner runner  4096 Sep  5 12:42 helpers
drwxr-xr-x  3 runner runner  4096 Sep  5 12:42 import
drwxr-xr-x  2 runner runner  4096 Sep  5 12:42 runtime
--- host folders BEFORE up:
  import exists
--- docker compose up -d (no prior docker build):
 worldserver Pulling 
 mysql Pulling 
 bnetserver Pulling 
 worldserver Warning pull access denied for trinitycore-3.4.3, repository does not exist or may require 'docker login': denied: requested access to the resource is denied
 bnetserver Warning pull access denied for trinitycore-3.4.3, repository does not exist or may require 'docker login': denied: requested access to the resource is denied
 edf85873f64e Pulling fs layer 
 6ef6c7b50a93 Pulling fs layer 
 e3e5d1ac74c1 Pulling fs layer 
 0d74d296605b Pulling fs layer 
 297d04cfe470 Pulling fs layer 
 4c8a3e0d4e4b Pulling fs layer 
 a63160a5eda1 Pulling fs layer 
 7534d1db9f8d Pulling fs layer 
 49ec2dab01d9 Pulling fs layer 
 ab24264a27e9 Pulling fs layer 
 96d30d9fbee8 Pulling fs layer 
 4c8a3e0d4e4b Waiting 
 a63160a5eda1 Waiting 
 7534d1db9f8d Waiting 
 49ec2dab01d9 Waiting 
 ab24264a27e9 Waiting 
 0d74d296605b Waiting 
 297d04cfe470 Waiting 
 96d30d9fbee8 Waiting 
 6ef6c7b50a93 Downloading [==================================================>]     884B/884B
 e3e5d1ac74c1 Downloading [=>                                                 ]  15.74kB/783.6kB
 6ef6c7b50a93 Verifying Checksum 
 6ef6c7b50a93 Download complete 
 e3e5d1ac74c1 Downloading [==================================================>]  783.6kB/783.6kB
 e3e5d1ac74c1 Verifying Checksum 
 e3e5d1ac74c1 Download complete 
 edf85873f64e Downloading [>                                                  ]  474.5kB/47.31MB
 edf85873f64e Downloading [============================>                      ]  27.08MB/47.31MB
 edf85873f64e Verifying Checksum 
 edf85873f64e Download complete 
 0d74d296605b Downloading [>                                                  ]  64.89kB/6.173MB
 297d04cfe470 Downloading [==================================================>]  2.607kB/2.607kB
 297d04cfe470 Verifying Checksum 
 297d04cfe470 Download complete 
 edf85873f64e Extracting [>                                                  ]  491.5kB/47.31MB
 0d74d296605b Verifying Checksum 
 0d74d296605b Download complete 
 edf85873f64e Extracting [==>                                                ]  1.966MB/47.31MB
 4c8a3e0d4e4b Downloading [==================================================>]     335B/335B
 4c8a3e0d4e4b Verifying Checksum 
 4c8a3e0d4e4b Download complete 
 a63160a5eda1 Downloading [>                                                  ]  507.3kB/49.93MB
 7534d1db9f8d Downloading [==================================================>]     316B/316B
 7534d1db9f8d Verifying Checksum 
 7534d1db9f8d Download complete 
 edf85873f64e Extracting [=======>                                           ]  7.373MB/47.31MB
 a63160a5eda1 Downloading [=========================>                         ]   25.9MB/49.93MB
 a63160a5eda1 Verifying Checksum 
 a63160a5eda1 Download complete 
 49ec2dab01d9 Downloading [>                                                  ]  524.6kB/129.4MB
 edf85873f64e Extracting [==============>                                    ]  13.27MB/47.31MB
 ab24264a27e9 Downloading [================================>                  ]    3.5kB/5.327kB
 ab24264a27e9 Downloading [==================================================>]  5.327kB/5.327kB
 ab24264a27e9 Verifying Checksum 
 ab24264a27e9 Download complete 
 49ec2dab01d9 Downloading [============>                                      ]  32.05MB/129.4MB
 edf85873f64e Extracting [====================>                              ]  19.66MB/47.31MB
 49ec2dab01d9 Downloading [========================>                          ]  64.66MB/129.4MB
 edf85873f64e Extracting [===========================>                       ]  26.05MB/47.31MB
 96d30d9fbee8 Downloading [==================================================>]     120B/120B
 96d30d9fbee8 Verifying Checksum 
 96d30d9fbee8 Download complete 
 49ec2dab01d9 Downloading [=====================================>             ]  97.26MB/129.4MB
 edf85873f64e Extracting [=================================>                 ]  31.46MB/47.31MB
 49ec2dab01d9 Verifying Checksum 
 49ec2dab01d9 Download complete 
 edf85873f64e Extracting [===================================>               ]  33.42MB/47.31MB
 edf85873f64e Extracting [============================================>      ]  42.27MB/47.31MB
 edf85873f64e Extracting [==============================================>    ]  44.24MB/47.31MB
 edf85873f64e Extracting [==================================================>]  47.31MB/47.31MB
 edf85873f64e Pull complete 
 6ef6c7b50a93 Extracting [==================================================>]     884B/884B
 6ef6c7b50a93 Extracting [==================================================>]     884B/884B
 6ef6c7b50a93 Pull complete 
 e3e5d1ac74c1 Extracting [==>                                                ]  32.77kB/783.6kB
 e3e5d1ac74c1 Extracting [==================================================>]  783.6kB/783.6kB
 e3e5d1ac74c1 Extracting [==================================================>]  783.6kB/783.6kB
 e3e5d1ac74c1 Pull complete 
 0d74d296605b Extracting [>                                                  ]  65.54kB/6.173MB
 0d74d296605b Extracting [===================>                               ]  2.425MB/6.173MB
 0d74d296605b Extracting [==================================================>]  6.173MB/6.173MB
 0d74d296605b Pull complete 
 297d04cfe470 Extracting [==================================================>]  2.607kB/2.607kB
 297d04cfe470 Extracting [==================================================>]  2.607kB/2.607kB
 297d04cfe470 Pull complete 
 4c8a3e0d4e4b Extracting [==================================================>]     335B/335B
 4c8a3e0d4e4b Extracting [==================================================>]     335B/335B
 4c8a3e0d4e4b Pull complete 
 a63160a5eda1 Extracting [>                                                  ]  524.3kB/49.93MB
 a63160a5eda1 Extracting [========>                                          ]  8.913MB/49.93MB
 a63160a5eda1 Extracting [=============>                                     ]  13.63MB/49.93MB
 a63160a5eda1 Extracting [=====================>                             ]   21.5MB/49.93MB
 a63160a5eda1 Extracting [==============================>                    ]  30.93MB/49.93MB
 a63160a5eda1 Extracting [======================================>            ]  38.27MB/49.93MB
 a63160a5eda1 Extracting [=============================================>     ]  45.61MB/49.93MB
 a63160a5eda1 Extracting [==================================================>]  49.93MB/49.93MB
 a63160a5eda1 Pull complete 
 7534d1db9f8d Extracting [==================================================>]     316B/316B
 7534d1db9f8d Extracting [==================================================>]     316B/316B
 7534d1db9f8d Pull complete 
 49ec2dab01d9 Extracting [>                                                  ]  557.1kB/129.4MB
 49ec2dab01d9 Extracting [===>                                               ]  8.913MB/129.4MB
 49ec2dab01d9 Extracting [=====>                                             ]  13.37MB/129.4MB
 49ec2dab01d9 Extracting [=======>                                           ]   19.5MB/129.4MB
 49ec2dab01d9 Extracting [=========>                                         ]  23.95MB/129.4MB
 49ec2dab01d9 Extracting [==========>                                        ]  27.85MB/129.4MB
 49ec2dab01d9 Extracting [============>                                      ]   31.2MB/129.4MB
 49ec2dab01d9 Extracting [============>                                      ]  32.31MB/129.4MB
 49ec2dab01d9 Extracting [============>                                      ]  32.87MB/129.4MB
 49ec2dab01d9 Extracting [============>                                      ]  33.42MB/129.4MB
 49ec2dab01d9 Extracting [=============>                                     ]  33.98MB/129.4MB
 49ec2dab01d9 Extracting [=============>                                     ]  34.54MB/129.4MB
 49ec2dab01d9 Extracting [=============>                                     ]  35.09MB/129.4MB
 49ec2dab01d9 Extracting [=============>                                     ]  35.65MB/129.4MB
 49ec2dab01d9 Extracting [=============>                                     ]  36.21MB/129.4MB
 49ec2dab01d9 Extracting [==============>                                    ]  37.32MB/129.4MB
 49ec2dab01d9 Extracting [==============>                                    ]  37.88MB/129.4MB
 49ec2dab01d9 Extracting [==============>                                    ]  38.44MB/129.4MB
 49ec2dab01d9 Extracting [===============>                                   ]  38.99MB/129.4MB
 49ec2dab01d9 Extracting [===============>                                   ]  39.55MB/129.4MB
 49ec2dab01d9 Extracting [===============>                                   ]  40.11MB/129.4MB
 49ec2dab01d9 Extracting [===============>                                   ]  40.67MB/129.4MB
 49ec2dab01d9 Extracting [===============>                                   ]  41.22MB/129.4MB
 49ec2dab01d9 Extracting [================>                                  ]  41.78MB/129.4MB
 49ec2dab01d9 Extracting [================>                                  ]  42.34MB/129.4MB
 49ec2dab01d9 Extracting [================>                                  ]  42.89MB/129.4MB
 49ec2dab01d9 Extracting [================>                                  ]  43.45MB/129.4MB
 49ec2dab01d9 Extracting [=================>                                 ]  44.01MB/129.4MB
 49ec2dab01d9 Extracting [=================>                                 ]  44.56MB/129.4MB
 49ec2dab01d9 Extracting [=================>                                 ]  45.12MB/129.4MB
 49ec2dab01d9 Extracting [=================>                                 ]  45.68MB/129.4MB
 49ec2dab01d9 Extracting [=================>                                 ]  46.24MB/129.4MB
 49ec2dab01d9 Extracting [==================>                                ]  46.79MB/129.4MB
 49ec2dab01d9 Extracting [==================>                                ]  49.02MB/129.4MB
 49ec2dab01d9 Extracting [===================>                               ]  49.58MB/129.4MB
 49ec2dab01d9 Extracting [===================>                               ]  50.69MB/129.4MB
 49ec2dab01d9 Extracting [=====================>                             ]  56.26MB/129.4MB
 49ec2dab01d9 Extracting [========================>                          ]  64.62MB/129.4MB
 49ec2dab01d9 Extracting [============================>                      ]  72.97MB/129.4MB
 49ec2dab01d9 Extracting [===============================>                   ]  81.33MB/129.4MB
 49ec2dab01d9 Extracting [===================================>               ]   90.8MB/129.4MB
 49ec2dab01d9 Extracting [======================================>            ]  99.16MB/129.4MB
 49ec2dab01d9 Extracting [==========================================>        ]  109.2MB/129.4MB
 49ec2dab01d9 Extracting [==============================================>    ]  121.4MB/129.4MB
 49ec2dab01d9 Extracting [=================================================> ]  127.6MB/129.4MB
 49ec2dab01d9 Extracting [==================================================>]  129.4MB/129.4MB
 49ec2dab01d9 Pull complete 
 ab24264a27e9 Extracting [==================================================>]  5.327kB/5.327kB
 ab24264a27e9 Extracting [==================================================>]  5.327kB/5.327kB
 ab24264a27e9 Pull complete 
 96d30d9fbee8 Extracting [==================================================>]     120B/120B
 96d30d9fbee8 Extracting [==================================================>]     120B/120B
 96d30d9fbee8 Pull complete 
 mysql Pulled 
#1 [internal] load local bake definitions
#1 reading from stdin 619B done
#1 DONE 0.0s

#2 [bnetserver internal] load build definition from Dockerfile
#2 transferring dockerfile: 5.41kB 0.0s done
#2 DONE 0.0s

#3 [worldserver] resolve image config for docker-image://docker.io/docker/dockerfile:1
#3 ...

#4 [auth] docker/dockerfile:pull token for registry-1.docker.io
#4 DONE 0.0s

#3 [worldserver] resolve image config for docker-image://docker.io/docker/dockerfile:1
#3 DONE 0.8s

#5 [worldserver] docker-image://docker.io/docker/dockerfile:1@sha256:ecfaec9ed6d810b56388c508f4121597bfbba70d41a6dfeee4d8cad5f295fc32
#5 resolve docker.io/docker/dockerfile:1@sha256:ecfaec9ed6d810b56388c508f4121597bfbba70d41a6dfeee4d8cad5f295fc32 done
#5 sha256:ecfaec9ed6d810b56388c508f4121597bfbba70d41a6dfeee4d8cad5f295fc32 9.08kB / 9.08kB done
#5 sha256:34b128e419449565adc5ed7f487a6f503a73f1077012cfed86354c731338c44f 1.13kB / 1.13kB done
#5 sha256:c844dc65644b70ea8b391444db20ff38537384d800ea9896d46ab8f3ce897f51 1.33kB / 1.33kB done
#5 sha256:9f624ef51ad55db0ea52d755cc777566386156106fbb4f465eecb22c67ac55ed 12.58MB / 14.14MB 0.1s
#5 sha256:ecfaec9ed6d810b56388c508f4121597bfbba70d41a6dfeee4d8cad5f295fc32 9.08kB / 9.08kB done
#5 sha256:34b128e419449565adc5ed7f487a6f503a73f1077012cfed86354c731338c44f 1.13kB / 1.13kB done
#5 sha256:c844dc65644b70ea8b391444db20ff38537384d800ea9896d46ab8f3ce897f51 1.33kB / 1.33kB done
#5 sha256:9f624ef51ad55db0ea52d755cc777566386156106fbb4f465eecb22c67ac55ed 14.14MB / 14.14MB 0.1s done
#5 extracting sha256:9f624ef51ad55db0ea52d755cc777566386156106fbb4f465eecb22c67ac55ed 0.1s
#5 extracting sha256:9f624ef51ad55db0ea52d755cc777566386156106fbb4f465eecb22c67ac55ed 0.1s done
#5 DONE 0.2s

#6 [worldserver internal] load metadata for docker.io/library/ubuntu:24.04
#6 ...

#7 [auth] library/ubuntu:pull token for registry-1.docker.io
#7 DONE 0.0s

#6 [bnetserver internal] load metadata for docker.io/library/ubuntu:24.04
#6 DONE 0.8s

#8 [bnetserver internal] load .dockerignore
#8 transferring context: 184B done
#8 DONE 0.0s

#9 [bnetserver internal] load build context
#9 transferring context: 14.31kB done
#9 DONE 0.0s

#10 [worldserver builder 1/5] FROM docker.io/library/ubuntu:24.04@sha256:33ceb71981b602c1a7443a53469e4dba065f7503eab3078a2d7a57a2ab987517
#10 resolve docker.io/library/ubuntu:24.04@sha256:33ceb71981b602c1a7443a53469e4dba065f7503eab3078a2d7a57a2ab987517 done
#10 sha256:a6f81fb630d51837271b89f8193810a5fc493fa4f30a55d7ebcdb3a66f3cc63a 2.05kB / 2.05kB done
#10 sha256:33ceb71981b602c1a7443a53469e4dba065f7503eab3078a2d7a57a2ab987517 6.69kB / 6.69kB done
#10 sha256:1e0a86e57d247923571b75e0aaf48a1449cf8c543d51fb3e07a4a7d7bfa79316 424B / 424B done
#10 DONE 0.0s

#11 [bnetserver stage-1  2/10] RUN apt-get update  && apt-get install -y --no-install-recommends       bash       ca-certificates       curl       libboost-filesystem1.83.0       libboost-iostreams1.83.0       libboost-locale1.83.0       libboost-program-options1.83.0       libboost-regex1.83.0       libboost-system1.83.0       libboost-thread1.83.0       libmariadb3       libmysqlclient21       libreadline8t64       libssl3t64       mariadb-client       p7zip-full       procps       tzdata       zlib1g  && rm -rf /var/lib/apt/lists/*
#11 2.233 Get:1 http://archive.ubuntu.com/ubuntu noble InRelease [256 kB]
#11 2.233 Get:2 http://security.ubuntu.com/ubuntu noble-security InRelease [126 kB]
#11 2.929 Get:3 http://archive.ubuntu.com/ubuntu noble-updates InRelease [126 kB]
#11 3.120 Get:4 http://archive.ubuntu.com/ubuntu noble-backports InRelease [126 kB]
#11 3.185 Get:5 http://security.ubuntu.com/ubuntu noble-security/main amd64 Packages [1237 kB]
#11 3.312 Get:6 http://archive.ubuntu.com/ubuntu noble/multiverse amd64 Packages [331 kB]
#11 3.490 Get:7 http://archive.ubuntu.com/ubuntu noble/main amd64 Packages [1808 kB]
#11 3.915 Get:8 http://archive.ubuntu.com/ubuntu noble/restricted amd64 Packages [117 kB]
#11 3.926 Get:9 http://archive.ubuntu.com/ubuntu noble/universe amd64 Packages [19.3 MB]
#11 4.210 Get:10 http://security.ubuntu.com/ubuntu noble-security/restricted amd64 Packages [1786 kB]
#11 4.550 Get:11 http://security.ubuntu.com/ubuntu noble-security/universe amd64 Packages [1530 kB]
#11 4.712 Get:12 http://security.ubuntu.com/ubuntu noble-security/multiverse amd64 Packages [50.0 kB]
#11 4.746 Get:13 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 Packages [2151 kB]
#11 4.811 Get:14 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 Packages [1562 kB]
#11 4.830 Get:15 http://archive.ubuntu.com/ubuntu noble-updates/multiverse amd64 Packages [55.8 kB]
#11 4.831 Get:16 http://archive.ubuntu.com/ubuntu noble-updates/restricted amd64 Packages [1903 kB]
#11 4.854 Get:17 http://archive.ubuntu.com/ubuntu noble-backports/universe amd64 Packages [35.9 kB]
#11 4.854 Get:18 http://archive.ubuntu.com/ubuntu noble-backports/main amd64 Packages [48.9 kB]
#11 4.854 Get:19 http://archive.ubuntu.com/ubuntu noble-backports/multiverse amd64 Packages [671 B]
#11 5.597 Fetched 32.6 MB in 4s (8382 kB/s)
#11 5.597 Reading package lists...
#11 6.385 Reading package lists...
#11 7.173 Building dependency tree...
#11 7.372 Reading state information...
#11 7.590 bash is already the newest version (5.2.21-2ubuntu4).
#11 7.590 The following additional packages will be installed:
#11 7.591   7zip libbrotli1 libbsd0 libconfig-inifiles-perl libcurl4t64 libedit2
#11 7.591   libgdbm-compat4t64 libgdbm6t64 libgssapi-krb5-2 libicu74 libk5crypto3
#11 7.591   libkeyutils1 libkrb5-3 libkrb5support0 libldap2 libncurses6 libncursesw6
#11 7.591   libnghttp2-14 libperl5.38t64 libproc2-0 libpsl5t64 librtmp1 libsasl2-2
#11 7.591   libsasl2-modules-db libssh-4 libtinfo6 mariadb-client-core mariadb-common
#11 7.592   mysql-common ncurses-base ncurses-bin openssl perl perl-base
#11 7.592   perl-modules-5.38 readline-common
#11 7.593 Suggested packages:
#11 7.593   7zip-standalone 7zip-rar gdbm-l10n krb5-doc krb5-user perl-doc
#11 7.593   libterm-readline-gnu-perl | libterm-readline-perl-perl make
#11 7.593   libtap-harness-archive-perl readline-doc
#11 7.593 Recommended packages:
#11 7.593   krb5-locales libldap-common libgpm2 publicsuffix libsasl2-modules
#11 7.593   libdbd-mariadb-perl | libdbd-mysql-perl libdbi-perl libterm-readkey-perl
#11 7.593   netbase psmisc
#11 7.705 The following NEW packages will be installed:
#11 7.705   7zip ca-certificates curl libboost-filesystem1.83.0 libboost-iostreams1.83.0
#11 7.705   libboost-locale1.83.0 libboost-program-options1.83.0 libboost-regex1.83.0
#11 7.705   libboost-system1.83.0 libboost-thread1.83.0 libbrotli1 libbsd0
#11 7.706   libconfig-inifiles-perl libcurl4t64 libedit2 libgdbm-compat4t64 libgdbm6t64
#11 7.706   libgssapi-krb5-2 libicu74 libk5crypto3 libkeyutils1 libkrb5-3
#11 7.706   libkrb5support0 libldap2 libmariadb3 libmysqlclient21 libncurses6
#11 7.706   libnghttp2-14 libperl5.38t64 libpsl5t64 libreadline8t64 librtmp1 libsasl2-2
#11 7.706   libsasl2-modules-db libssh-4 mariadb-client mariadb-client-core
#11 7.707   mariadb-common mysql-common openssl p7zip-full perl perl-modules-5.38
#11 7.707   readline-common tzdata
#11 7.708 The following packages will be upgraded:
#11 7.708   libncursesw6 libproc2-0 libssl3t64 libtinfo6 ncurses-base ncurses-bin
#11 7.709   perl-base procps zlib1g
#11 8.050 9 upgraded, 45 newly installed, 0 to remove and 18 not upgraded.
#11 8.050 Need to get 37.3 MB of archives.
#11 8.050 After this operation, 210 MB of additional disk space will be used.
#11 8.050 Get:1 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 ncurses-bin amd64 6.4+20240113-1ubuntu2.2 [188 kB]
#11 8.780 Get:2 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 perl-base amd64 5.38.2-3.2ubuntu0.4 [1826 kB]
#11 ...

#12 [worldserver builder 2/5] RUN apt-get update  && apt-get install -y --no-install-recommends       build-essential       ca-certificates       ccache       cmake       default-libmysqlclient-dev       git       libboost-all-dev       libreadline-dev       libssl-dev       ninja-build       pkg-config  && rm -rf /var/lib/apt/lists/*
#12 2.233 Get:1 http://archive.ubuntu.com/ubuntu noble InRelease [256 kB]
#12 2.233 Get:2 http://security.ubuntu.com/ubuntu noble-security InRelease [126 kB]
#12 2.932 Get:3 http://archive.ubuntu.com/ubuntu noble-updates InRelease [126 kB]
#12 3.124 Get:4 http://archive.ubuntu.com/ubuntu noble-backports InRelease [126 kB]
#12 3.160 Get:5 http://security.ubuntu.com/ubuntu noble-security/multiverse amd64 Packages [50.0 kB]
#12 3.318 Get:6 http://archive.ubuntu.com/ubuntu noble/restricted amd64 Packages [117 kB]
#12 3.358 Get:7 http://security.ubuntu.com/ubuntu noble-security/universe amd64 Packages [1530 kB]
#12 3.370 Get:8 http://archive.ubuntu.com/ubuntu noble/main amd64 Packages [1808 kB]
#12 3.907 Get:9 http://archive.ubuntu.com/ubuntu noble/universe amd64 Packages [19.3 MB]
#12 4.203 Get:10 http://security.ubuntu.com/ubuntu noble-security/main amd64 Packages [1237 kB]
#12 4.391 Get:11 http://security.ubuntu.com/ubuntu noble-security/restricted amd64 Packages [1786 kB]
#12 4.763 Get:12 http://archive.ubuntu.com/ubuntu noble/multiverse amd64 Packages [331 kB]
#12 4.765 Get:13 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 Packages [2151 kB]
#12 4.833 Get:14 http://archive.ubuntu.com/ubuntu noble-updates/restricted amd64 Packages [1903 kB]
#12 4.854 Get:15 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 Packages [1562 kB]
#12 4.873 Get:16 http://archive.ubuntu.com/ubuntu noble-updates/multiverse amd64 Packages [55.8 kB]
#12 4.874 Get:17 http://archive.ubuntu.com/ubuntu noble-backports/main amd64 Packages [48.9 kB]
#12 4.874 Get:18 http://archive.ubuntu.com/ubuntu noble-backports/multiverse amd64 Packages [671 B]
#12 4.875 Get:19 http://archive.ubuntu.com/ubuntu noble-backports/universe amd64 Packages [35.9 kB]
#12 5.590 Fetched 32.6 MB in 4s (8417 kB/s)
#12 5.590 Reading package lists...
#12 6.386 Reading package lists...
#12 7.159 Building dependency tree...
#12 7.354 Reading state information...
#12 7.598 The following additional packages will be installed:
#12 7.598   adduser autoconf automake autotools-dev binutils binutils-common
#12 7.598   binutils-x86-64-linux-gnu bzip2 cmake-data cpp cpp-13
#12 7.598   cpp-13-x86-64-linux-gnu cpp-x86-64-linux-gnu dpkg-dev g++ g++-13
#12 7.598   g++-13-x86-64-linux-gnu g++-x86-64-linux-gnu gcc gcc-13 gcc-13-base
#12 7.598   gcc-13-x86-64-linux-gnu gcc-x86-64-linux-gnu gfortran-13
#12 7.598   gfortran-13-x86-64-linux-gnu git-man ibverbs-providers icu-devtools
#12 7.599   libamd-comgr2 libamdhip64-5 libarchive13t64 libasan8 libatomic1 libbinutils
#12 7.599   libboost-atomic-dev libboost-atomic1.83-dev libboost-atomic1.83.0
#12 7.599   libboost-chrono-dev libboost-chrono1.83-dev libboost-chrono1.83.0t64
#12 7.599   libboost-container-dev libboost-container1.83-dev libboost-container1.83.0
#12 7.599   libboost-context-dev libboost-context1.83-dev libboost-context1.83.0
#12 7.599   libboost-coroutine-dev libboost-coroutine1.83-dev libboost-coroutine1.83.0
#12 7.599   libboost-date-time-dev libboost-date-time1.83-dev libboost-date-time1.83.0
#12 7.599   libboost-dev libboost-exception-dev libboost-exception1.83-dev
#12 7.599   libboost-fiber-dev libboost-fiber1.83-dev libboost-fiber1.83.0
#12 7.599   libboost-filesystem-dev libboost-filesystem1.83-dev
#12 7.599   libboost-filesystem1.83.0 libboost-graph-dev libboost-graph-parallel-dev
#12 7.599   libboost-graph-parallel1.83-dev libboost-graph-parallel1.83.0
#12 7.599   libboost-graph1.83-dev libboost-graph1.83.0 libboost-iostreams-dev
#12 7.599   libboost-iostreams1.83-dev libboost-iostreams1.83.0 libboost-json-dev
#12 7.599   libboost-json1.83-dev libboost-json1.83.0 libboost-locale-dev
#12 7.599   libboost-locale1.83-dev libboost-locale1.83.0 libboost-log-dev
#12 7.599   libboost-log1.83-dev libboost-log1.83.0 libboost-math-dev
#12 7.599   libboost-math1.83-dev libboost-math1.83.0 libboost-mpi-dev
#12 7.599   libboost-mpi-python-dev libboost-mpi-python1.83-dev
#12 7.599   libboost-mpi-python1.83.0 libboost-mpi1.83-dev libboost-mpi1.83.0
#12 7.599   libboost-nowide-dev libboost-nowide1.83-dev libboost-nowide1.83.0
#12 7.599   libboost-numpy-dev libboost-numpy1.83-dev libboost-numpy1.83.0
#12 7.599   libboost-program-options-dev libboost-program-options1.83-dev
#12 7.599   libboost-program-options1.83.0 libboost-python-dev libboost-python1.83-dev
#12 7.599   libboost-python1.83.0 libboost-random-dev libboost-random1.83-dev
#12 7.599   libboost-random1.83.0 libboost-regex-dev libboost-regex1.83-dev
#12 7.599   libboost-regex1.83.0 libboost-serialization-dev
#12 7.599   libboost-serialization1.83-dev libboost-serialization1.83.0
#12 7.599   libboost-stacktrace-dev libboost-stacktrace1.83-dev
#12 7.599   libboost-stacktrace1.83.0 libboost-system-dev libboost-system1.83-dev
#12 7.599   libboost-system1.83.0 libboost-test-dev libboost-test1.83-dev
#12 7.599   libboost-test1.83.0 libboost-thread-dev libboost-thread1.83-dev
#12 7.599   libboost-thread1.83.0 libboost-timer-dev libboost-timer1.83-dev
#12 7.599   libboost-timer1.83.0 libboost-tools-dev libboost-type-erasure-dev
#12 7.599   libboost-type-erasure1.83-dev libboost-type-erasure1.83.0 libboost-url-dev
#12 7.599   libboost-url1.83-dev libboost-url1.83.0 libboost-wave-dev
#12 7.599   libboost-wave1.83-dev libboost-wave1.83.0 libboost1.83-dev
#12 7.599   libboost1.83-tools-dev libbrotli1 libbsd0 libbz2-1.0 libc-dev-bin libc6-dev
#12 7.599   libcbor0.10 libcc1-0 libcrypt-dev libctf-nobfd0 libctf0 libcurl3t64-gnutls
#12 7.599   libcurl4t64 libdpkg-perl libdrm-amdgpu1 libdrm-common libdrm2 libedit2
#12 7.599   libelf1t64 liberror-perl libevent-2.1-7t64 libevent-core-2.1-7t64
#12 7.599   libevent-dev libevent-extra-2.1-7t64 libevent-openssl-2.1-7t64
#12 7.599   libevent-pthreads-2.1-7t64 libexpat1 libexpat1-dev libfabric1 libfido2-1
#12 7.599   libgcc-13-dev libgdbm-compat4t64 libgdbm6t64 libgfortran-13-dev libgfortran5
#12 7.599   libgomp1 libgprofng0 libgssapi-krb5-2 libhiredis1.1.0 libhsa-runtime64-1
#12 7.599   libhsakmt1 libhwasan0 libhwloc-dev libhwloc-plugins libhwloc15
#12 7.599   libibverbs-dev libibverbs1 libicu-dev libicu74 libisl23 libitm1 libjansson4
#12 7.599   libjs-jquery libjs-jquery-ui libjs-sphinxdoc libjs-underscore libjsoncpp25
#12 7.599   libk5crypto3 libkeyutils1 libkrb5-3 libkrb5support0 libldap2 libllvm17t64
#12 7.599   liblsan0 libltdl-dev libltdl7 libmpc3 libmpfr6 libmunge2 libmysqlclient-dev
#12 7.599   libmysqlclient21 libncurses-dev libncurses6 libncursesw6 libnghttp2-14
#12 7.599   libnl-3-200 libnl-3-dev libnl-route-3-200 libnl-route-3-dev libnuma-dev
#12 7.599   libnuma1 libopenmpi-dev libopenmpi3t64 libpciaccess0 libperl5.38t64
#12 7.599   libpkgconf3 libpmix-dev libpmix2t64 libpsl5t64 libpsm-infinipath1 libpsm2-2
#12 7.599   libpython3-dev libpython3-stdlib libpython3.12-dev libpython3.12-minimal
#12 7.599   libpython3.12-stdlib libpython3.12t64 libquadmath0 librdmacm1t64
#12 7.599   libreadline8t64 librhash0 librtmp1 libsasl2-2 libsasl2-modules-db libsframe1
#12 7.599   libsqlite3-0 libssh-4 libssl3t64 libstdc++-13-dev libtinfo6 libtsan2
#12 7.599   libubsan1 libucx0 libuv1t64 libx11-6 libx11-data libxau6 libxcb1 libxdmcp6
#12 7.599   libxext6 libxml2 libxnvctrl0 libzstd-dev linux-libc-dev lto-disabled-list m4
#12 7.599   make media-types mpi-default-bin mpi-default-dev mysql-common ncurses-base
#12 7.599   ncurses-bin netbase ocl-icd-libopencl1 openmpi-bin openmpi-common
#12 7.599   openssh-client openssl patch perl perl-base perl-modules-5.38 pkgconf
#12 7.599   pkgconf-bin python3 python3-dev python3-minimal python3.12 python3.12-dev
#12 7.600   python3.12-minimal readline-common rpcsvc-proto tzdata xz-utils zlib1g
#12 7.600   zlib1g-dev
#12 7.601 Suggested packages:
#12 7.601   liblocale-gettext-perl cron quota ecryptfs-utils autoconf-archive
#12 7.601   gnu-standards autoconf-doc libtool gettext binutils-doc gprofng-gui
#12 7.601   bzip2-doc distcc | icecc cmake-doc cmake-format elpa-cmake-mode cpp-doc
#12 7.601   gcc-13-locales cpp-13-doc debian-keyring g++-multilib g++-13-multilib
#12 7.601   gcc-13-doc gcc-multilib manpages-dev flex bison gdb gcc-doc gcc-13-multilib
#12 7.601   gdb-x86-64-linux-gnu gfortran-13-multilib gfortran-13-doc libcoarrays-dev
#12 7.601   gettext-base git-daemon-run | git-daemon-sysvinit git-doc git-email git-gui
#12 7.601   gitk gitweb git-cvs git-mediawiki git-svn lrzip libboost-doc graphviz
#12 7.601   libboost1.83-doc gccxml libboost-contract1.83-dev libmpfrc++-dev libntl-dev
#12 7.601   xsltproc doxygen docbook-xml docbook-xsl default-jdk fop glibc-doc gnupg
#12 7.601   | sq | sqop | pgpainless-cli | sequoia-chameleon-gnupg bzr gdbm-l10n
#12 7.601   krb5-doc krb5-user libhwloc-contrib-plugins icu-doc libjs-jquery-ui-docs
#12 7.601   libtool-doc ncurses-doc openmpi-doc pciutils readline-doc libssl-doc
#12 7.601   libstdc++-13-doc m4-doc make-doc opencl-icd gfortran | fortran-compiler
#12 7.601   keychain libpam-ssh monkeysphere ssh-askpass ed diffutils-doc perl-doc
#12 7.601   libterm-readline-gnu-perl | libterm-readline-perl-perl
#12 7.601   libtap-harness-archive-perl python3-doc python3-tk python3-venv
#12 7.601   python3.12-venv python3.12-doc binfmt-support
#12 7.601 Recommended packages:
#12 7.601   fakeroot gnupg | sq | sqop | pgpainless-cli | sequoia-chameleon-gnupg
#12 7.601   libalgorithm-merge-perl less manpages manpages-dev libc-devtools
#12 7.601   libfile-fcntllock-perl liblocale-gettext-perl javascript-common krb5-locales
#12 7.601   libldap-common libtool libgpm2 libcoarrays-openmpi-dev publicsuffix
#12 7.601   libsasl2-modules xauth
#12 8.073 The following NEW packages will be installed:
#12 8.073   adduser autoconf automake autotools-dev binutils binutils-common
#12 8.074   binutils-x86-64-linux-gnu build-essential bzip2 ca-certificates ccache cmake
#12 8.074   cmake-data cpp cpp-13 cpp-13-x86-64-linux-gnu cpp-x86-64-linux-gnu
#12 8.074   default-libmysqlclient-dev dpkg-dev g++ g++-13 g++-13-x86-64-linux-gnu
#12 8.074   g++-x86-64-linux-gnu gcc gcc-13 gcc-13-base gcc-13-x86-64-linux-gnu
#12 8.074   gcc-x86-64-linux-gnu gfortran-13 gfortran-13-x86-64-linux-gnu git git-man
#12 8.074   ibverbs-providers icu-devtools libamd-comgr2 libamdhip64-5 libarchive13t64
#12 8.074   libasan8 libatomic1 libbinutils libboost-all-dev libboost-atomic-dev
#12 8.074   libboost-atomic1.83-dev libboost-atomic1.83.0 libboost-chrono-dev
#12 8.074   libboost-chrono1.83-dev libboost-chrono1.83.0t64 libboost-container-dev
#12 8.074   libboost-container1.83-dev libboost-container1.83.0 libboost-context-dev
#12 8.074   libboost-context1.83-dev libboost-context1.83.0 libboost-coroutine-dev
#12 8.074   libboost-coroutine1.83-dev libboost-coroutine1.83.0 libboost-date-time-dev
#12 8.074   libboost-date-time1.83-dev libboost-date-time1.83.0 libboost-dev
#12 8.074   libboost-exception-dev libboost-exception1.83-dev libboost-fiber-dev
#12 8.074   libboost-fiber1.83-dev libboost-fiber1.83.0 libboost-filesystem-dev
#12 8.074   libboost-filesystem1.83-dev libboost-filesystem1.83.0 libboost-graph-dev
#12 8.074   libboost-graph-parallel-dev libboost-graph-parallel1.83-dev
#12 8.074   libboost-graph-parallel1.83.0 libboost-graph1.83-dev libboost-graph1.83.0
#12 8.074   libboost-iostreams-dev libboost-iostreams1.83-dev libboost-iostreams1.83.0
#12 8.074   libboost-json-dev libboost-json1.83-dev libboost-json1.83.0
#12 8.074   libboost-locale-dev libboost-locale1.83-dev libboost-locale1.83.0
#12 8.074   libboost-log-dev libboost-log1.83-dev libboost-log1.83.0 libboost-math-dev
#12 8.074   libboost-math1.83-dev libboost-math1.83.0 libboost-mpi-dev
#12 8.074   libboost-mpi-python-dev libboost-mpi-python1.83-dev
#12 8.074   libboost-mpi-python1.83.0 libboost-mpi1.83-dev libboost-mpi1.83.0
#12 8.074   libboost-nowide-dev libboost-nowide1.83-dev libboost-nowide1.83.0
#12 8.074   libboost-numpy-dev libboost-numpy1.83-dev libboost-numpy1.83.0
#12 8.074   libboost-program-options-dev libboost-program-options1.83-dev
#12 8.074   libboost-program-options1.83.0 libboost-python-dev libboost-python1.83-dev
#12 8.074   libboost-python1.83.0 libboost-random-dev libboost-random1.83-dev
#12 8.074   libboost-random1.83.0 libboost-regex-dev libboost-regex1.83-dev
#12 8.074   libboost-regex1.83.0 libboost-serialization-dev
#12 8.074   libboost-serialization1.83-dev libboost-serialization1.83.0
#12 8.074   libboost-stacktrace-dev libboost-stacktrace1.83-dev
#12 8.074   libboost-stacktrace1.83.0 libboost-system-dev libboost-system1.83-dev
#12 8.074   libboost-system1.83.0 libboost-test-dev libboost-test1.83-dev
#12 8.074   libboost-test1.83.0 libboost-thread-dev libboost-thread1.83-dev
#12 8.074   libboost-thread1.83.0 libboost-timer-dev libboost-timer1.83-dev
#12 8.074   libboost-timer1.83.0 libboost-tools-dev libboost-type-erasure-dev
#12 8.074   libboost-type-erasure1.83-dev libboost-type-erasure1.83.0 libboost-url-dev
#12 8.074   libboost-url1.83-dev libboost-url1.83.0 libboost-wave-dev
#12 8.074   libboost-wave1.83-dev libboost-wave1.83.0 libboost1.83-dev
#12 8.074   libboost1.83-tools-dev libbrotli1 libbsd0 libc-dev-bin libc6-dev libcbor0.10
#12 8.074   libcc1-0 libcrypt-dev libctf-nobfd0 libctf0 libcurl3t64-gnutls libcurl4t64
#12 8.074   libdpkg-perl libdrm-amdgpu1 libdrm-common libdrm2 libedit2 libelf1t64
#12 8.074   liberror-perl libevent-2.1-7t64 libevent-core-2.1-7t64 libevent-dev
#12 8.074   libevent-extra-2.1-7t64 libevent-openssl-2.1-7t64 libevent-pthreads-2.1-7t64
#12 8.074   libexpat1 libexpat1-dev libfabric1 libfido2-1 libgcc-13-dev
#12 8.074   libgdbm-compat4t64 libgdbm6t64 libgfortran-13-dev libgfortran5 libgomp1
#12 8.074   libgprofng0 libgssapi-krb5-2 libhiredis1.1.0 libhsa-runtime64-1 libhsakmt1
#12 8.074   libhwasan0 libhwloc-dev libhwloc-plugins libhwloc15 libibverbs-dev
#12 8.074   libibverbs1 libicu-dev libicu74 libisl23 libitm1 libjansson4 libjs-jquery
#12 8.074   libjs-jquery-ui libjs-sphinxdoc libjs-underscore libjsoncpp25 libk5crypto3
#12 8.074   libkeyutils1 libkrb5-3 libkrb5support0 libldap2 libllvm17t64 liblsan0
#12 8.074   libltdl-dev libltdl7 libmpc3 libmpfr6 libmunge2 libmysqlclient-dev
#12 8.074   libmysqlclient21 libncurses-dev libncurses6 libnghttp2-14 libnl-3-200
#12 8.074   libnl-3-dev libnl-route-3-200 libnl-route-3-dev libnuma-dev libnuma1
#12 8.074   libopenmpi-dev libopenmpi3t64 libpciaccess0 libperl5.38t64 libpkgconf3
#12 8.074   libpmix-dev libpmix2t64 libpsl5t64 libpsm-infinipath1 libpsm2-2
#12 8.074   libpython3-dev libpython3-stdlib libpython3.12-dev libpython3.12-minimal
#12 8.074   libpython3.12-stdlib libpython3.12t64 libquadmath0 librdmacm1t64
#12 8.075   libreadline-dev libreadline8t64 librhash0 librtmp1 libsasl2-2
#12 8.075   libsasl2-modules-db libsframe1 libsqlite3-0 libssh-4 libssl-dev
#12 8.075   libstdc++-13-dev libtsan2 libubsan1 libucx0 libuv1t64 libx11-6 libx11-data
#12 8.075   libxau6 libxcb1 libxdmcp6 libxext6 libxml2 libxnvctrl0 libzstd-dev
#12 8.075   linux-libc-dev lto-disabled-list m4 make media-types mpi-default-bin
#12 8.075   mpi-default-dev mysql-common netbase ninja-build ocl-icd-libopencl1
#12 8.075   openmpi-bin openmpi-common openssh-client openssl patch perl
#12 8.075   perl-modules-5.38 pkg-config pkgconf pkgconf-bin python3 python3-dev
#12 8.076   python3-minimal python3.12 python3.12-dev python3.12-minimal readline-common
#12 8.076   rpcsvc-proto tzdata xz-utils zlib1g-dev
#12 8.077 The following packages will be upgraded:
#12 8.077   libbz2-1.0 libncursesw6 libssl3t64 libtinfo6 ncurses-base ncurses-bin
#12 8.078   perl-base zlib1g
#12 8.587 8 upgraded, 295 newly installed, 0 to remove and 19 not upgraded.
#12 8.587 Need to get 269 MB of archives.
#12 8.587 After this operation, 1258 MB of additional disk space will be used.
#12 8.587 Get:1 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 ncurses-bin amd64 6.4+20240113-1ubuntu2.2 [188 kB]
#12 9.559 Get:2 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 perl-base amd64 5.38.2-3.2ubuntu0.4 [1826 kB]
#12 ...

#11 [bnetserver stage-1  2/10] RUN apt-get update  && apt-get install -y --no-install-recommends       bash       ca-certificates       curl       libboost-filesystem1.83.0       libboost-iostreams1.83.0       libboost-locale1.83.0       libboost-program-options1.83.0       libboost-regex1.83.0       libboost-system1.83.0       libboost-thread1.83.0       libmariadb3       libmysqlclient21       libreadline8t64       libssl3t64       mariadb-client       p7zip-full       procps       tzdata       zlib1g  && rm -rf /var/lib/apt/lists/*
#11 10.79 Get:3 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 ncurses-base all 6.4+20240113-1ubuntu2.2 [25.8 kB]
#11 10.80 Get:4 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 perl-modules-5.38 all 5.38.2-3.2ubuntu0.4 [3110 kB]
#11 13.22 Get:5 http://archive.ubuntu.com/ubuntu noble/main amd64 libgdbm6t64 amd64 1.23-5.1build1 [34.4 kB]
#11 13.23 Get:6 http://archive.ubuntu.com/ubuntu noble/main amd64 libgdbm-compat4t64 amd64 1.23-5.1build1 [6710 B]
#11 13.23 Get:7 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 zlib1g amd64 1:1.3.dfsg-3.1ubuntu2.2 [63.0 kB]
#11 13.27 Get:8 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libperl5.38t64 amd64 5.38.2-3.2ubuntu0.4 [4870 kB]
#11 16.21 Get:9 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 perl amd64 5.38.2-3.2ubuntu0.4 [231 kB]
#11 16.41 Get:10 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libssl3t64 amd64 3.0.13-0ubuntu3.15 [1944 kB]
#11 ...

#12 [worldserver builder 2/5] RUN apt-get update  && apt-get install -y --no-install-recommends       build-essential       ca-certificates       ccache       cmake       default-libmysqlclient-dev       git       libboost-all-dev       libreadline-dev       libssl-dev       ninja-build       pkg-config  && rm -rf /var/lib/apt/lists/*
#12 10.98 Get:3 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 ncurses-base all 6.4+20240113-1ubuntu2.2 [25.8 kB]
#12 11.12 Get:4 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libssl3t64 amd64 3.0.13-0ubuntu3.15 [1944 kB]
#12 11.53 Get:5 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libpython3.12-minimal amd64 3.12.3-1ubuntu0.16 [838 kB]
#12 11.71 Get:6 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libexpat1 amd64 2.6.1-2ubuntu0.4 [88.2 kB]
#12 11.85 Get:7 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 zlib1g amd64 1:1.3.dfsg-3.1ubuntu2.2 [63.0 kB]
#12 11.99 Get:8 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 python3.12-minimal amd64 3.12.3-1ubuntu0.16 [2335 kB]
#12 12.29 Get:9 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 python3-minimal amd64 3.12.3-0ubuntu2.1 [27.4 kB]
#12 12.42 Get:10 http://archive.ubuntu.com/ubuntu noble/main amd64 media-types all 10.1.0 [27.5 kB]
#12 12.56 Get:11 http://archive.ubuntu.com/ubuntu noble/main amd64 netbase all 6.4 [13.1 kB]
#12 12.70 Get:12 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 tzdata all 2026c-0ubuntu0.24.04.1 [280 kB]
#12 12.84 Get:13 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libbz2-1.0 amd64 1.0.8-5.1ubuntu0.1 [34.6 kB]
#12 12.98 Get:14 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libncursesw6 amd64 6.4+20240113-1ubuntu2.2 [148 kB]
#12 13.12 Get:15 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libtinfo6 amd64 6.4+20240113-1ubuntu2.2 [108 kB]
#12 13.26 Get:16 http://archive.ubuntu.com/ubuntu noble/main amd64 readline-common all 8.2-4build1 [56.5 kB]
#12 13.39 Get:17 http://archive.ubuntu.com/ubuntu noble/main amd64 libreadline8t64 amd64 8.2-4build1 [153 kB]
#12 13.53 Get:18 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libsqlite3-0 amd64 3.45.1-1ubuntu2.7 [701 kB]
#12 13.69 Get:19 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libpython3.12-stdlib amd64 3.12.3-1ubuntu0.16 [2070 kB]
#12 13.88 Get:20 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 python3.12 amd64 3.12.3-1ubuntu0.16 [651 kB]
#12 14.03 Get:21 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libpython3-stdlib amd64 3.12.3-0ubuntu2.1 [10.1 kB]
#12 14.17 Get:22 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 python3 amd64 3.12.3-0ubuntu2.1 [23.0 kB]
#12 14.31 Get:23 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 perl-modules-5.38 all 5.38.2-3.2ubuntu0.4 [3110 kB]
#12 14.52 Get:24 http://archive.ubuntu.com/ubuntu noble/main amd64 libgdbm6t64 amd64 1.23-5.1build1 [34.4 kB]
#12 14.66 Get:25 http://archive.ubuntu.com/ubuntu noble/main amd64 libgdbm-compat4t64 amd64 1.23-5.1build1 [6710 B]
#12 14.80 Get:26 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libperl5.38t64 amd64 5.38.2-3.2ubuntu0.4 [4870 kB]
#12 15.09 Get:27 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 perl amd64 5.38.2-3.2ubuntu0.4 [231 kB]
#12 15.40 Get:28 http://archive.ubuntu.com/ubuntu noble/main amd64 adduser all 3.137ubuntu1 [101 kB]
#12 15.54 Get:29 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 openssl amd64 3.0.13-0ubuntu3.15 [1003 kB]
#12 15.69 Get:30 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 ca-certificates all 20260601~24.04.1 [139 kB]
#12 15.83 Get:31 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libbsd0 amd64 0.12.1-1build1.1 [41.2 kB]
#12 15.96 Get:32 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libelf1t64 amd64 0.190-1.1ubuntu0.1 [57.8 kB]
#12 16.10 Get:33 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libkrb5support0 amd64 1.20.1-6ubuntu2.8 [34.7 kB]
#12 16.24 Get:34 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libk5crypto3 amd64 1.20.1-6ubuntu2.8 [81.9 kB]
#12 16.37 Get:35 http://archive.ubuntu.com/ubuntu noble/main amd64 libkeyutils1 amd64 1.6.3-3build1 [9490 B]
#12 16.51 Get:36 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libkrb5-3 amd64 1.20.1-6ubuntu2.8 [348 kB]
#12 16.65 Get:37 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libgssapi-krb5-2 amd64 1.20.1-6ubuntu2.8 [143 kB]
#12 16.79 Get:38 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libicu74 amd64 74.2-1ubuntu3.1 [10.9 MB]
#12 17.09 Get:39 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libxml2 amd64 2.9.14+dfsg-1.3ubuntu3.8 [764 kB]
#12 17.23 Get:40 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libnl-3-200 amd64 3.7.0-0.3build1.1 [55.7 kB]
#12 17.37 Get:41 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libnl-route-3-200 amd64 3.7.0-0.3build1.1 [189 kB]
#12 17.51 Get:42 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libibverbs1 amd64 50.0-2ubuntu0.2 [68.0 kB]
#12 ...

#11 [bnetserver stage-1  2/10] RUN apt-get update  && apt-get install -y --no-install-recommends       bash       ca-certificates       curl       libboost-filesystem1.83.0       libboost-iostreams1.83.0       libboost-locale1.83.0       libboost-program-options1.83.0       libboost-regex1.83.0       libboost-system1.83.0       libboost-thread1.83.0       libmariadb3       libmysqlclient21       libreadline8t64       libssl3t64       mariadb-client       p7zip-full       procps       tzdata       zlib1g  && rm -rf /var/lib/apt/lists/*
#11 17.61 Get:11 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libncursesw6 amd64 6.4+20240113-1ubuntu2.2 [148 kB]
#11 17.70 Get:12 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libtinfo6 amd64 6.4+20240113-1ubuntu2.2 [108 kB]
#11 17.84 Get:13 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libproc2-0 amd64 2:4.0.4-4ubuntu3.3 [58.9 kB]
#11 17.87 Get:14 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 procps amd64 2:4.0.4-4ubuntu3.3 [707 kB]
#11 18.26 Get:15 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 openssl amd64 3.0.13-0ubuntu3.15 [1003 kB]
#11 18.84 Get:16 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 ca-certificates all 20260601~24.04.1 [139 kB]
#11 18.87 Get:17 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libbsd0 amd64 0.12.1-1build1.1 [41.2 kB]
#11 18.89 Get:18 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libkrb5support0 amd64 1.20.1-6ubuntu2.8 [34.7 kB]
#11 18.92 Get:19 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libk5crypto3 amd64 1.20.1-6ubuntu2.8 [81.9 kB]
#11 18.95 Get:20 http://archive.ubuntu.com/ubuntu noble/main amd64 libkeyutils1 amd64 1.6.3-3build1 [9490 B]
#11 18.95 Get:21 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libkrb5-3 amd64 1.20.1-6ubuntu2.8 [348 kB]
#11 19.14 Get:22 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libgssapi-krb5-2 amd64 1.20.1-6ubuntu2.8 [143 kB]
#11 19.18 Get:23 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libicu74 amd64 74.2-1ubuntu3.1 [10.9 MB]
#11 ...

#12 [worldserver builder 2/5] RUN apt-get update  && apt-get install -y --no-install-recommends       build-essential       ca-certificates       ccache       cmake       default-libmysqlclient-dev       git       libboost-all-dev       libreadline-dev       libssl-dev       ninja-build       pkg-config  && rm -rf /var/lib/apt/lists/*
#12 17.65 Get:43 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 ibverbs-providers amd64 50.0-2ubuntu0.2 [381 kB]
#12 17.79 Get:44 http://archive.ubuntu.com/ubuntu noble/main amd64 libcbor0.10 amd64 0.10.2-1.2ubuntu2 [25.8 kB]
#12 17.92 Get:45 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libdrm-common all 2.4.125-1ubuntu0.1~24.04.2 [9250 B]
#12 18.06 Get:46 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libdrm2 amd64 2.4.125-1ubuntu0.1~24.04.2 [41.4 kB]
#12 18.20 Get:47 http://archive.ubuntu.com/ubuntu noble/main amd64 libedit2 amd64 3.1-20230828-1build1 [97.6 kB]
#12 18.33 Get:48 http://archive.ubuntu.com/ubuntu noble/main amd64 libfido2-1 amd64 1.14.0-1build3 [83.5 kB]
#12 18.47 Get:49 http://archive.ubuntu.com/ubuntu noble/main amd64 libjansson4 amd64 2.14-2build2 [32.8 kB]
#12 18.61 Get:50 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libncurses6 amd64 6.4+20240113-1ubuntu2.2 [112 kB]
#12 18.75 Get:51 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libnghttp2-14 amd64 1.59.0-1ubuntu0.4 [74.6 kB]
#12 18.88 Get:52 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libnuma1 amd64 2.0.18-1ubuntu0.24.04.1 [23.4 kB]
#12 19.02 Get:53 http://archive.ubuntu.com/ubuntu noble/main amd64 libpsl5t64 amd64 0.21.2-1.1build1 [57.1 kB]
#12 19.16 Get:54 http://archive.ubuntu.com/ubuntu noble/main amd64 libuv1t64 amd64 1.48.0-1.1build1 [97.3 kB]
#12 19.47 Get:55 http://archive.ubuntu.com/ubuntu noble/main amd64 libxau6 amd64 1:1.0.9-1build6 [7160 B]
#12 19.61 Get:56 http://archive.ubuntu.com/ubuntu noble/main amd64 libxdmcp6 amd64 1:1.1.3-0ubuntu6 [10.3 kB]
#12 19.75 Get:57 http://archive.ubuntu.com/ubuntu noble/main amd64 libxcb1 amd64 1.15-1ubuntu2 [47.7 kB]
#12 19.88 Get:58 http://archive.ubuntu.com/ubuntu noble/main amd64 libx11-data all 2:1.8.7-1build1 [115 kB]
#12 20.02 Get:59 http://archive.ubuntu.com/ubuntu noble/main amd64 libx11-6 amd64 2:1.8.7-1build1 [650 kB]
#12 20.16 Get:60 http://archive.ubuntu.com/ubuntu noble/main amd64 libxext6 amd64 2:1.3.4-1build2 [30.4 kB]
#12 20.30 Get:61 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 openssh-client amd64 1:9.6p1-3ubuntu13.19 [908 kB]
#12 20.44 Get:62 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 xz-utils amd64 5.6.1+really5.4.5-1ubuntu0.3 [267 kB]
#12 20.58 Get:63 http://archive.ubuntu.com/ubuntu noble/main amd64 m4 amd64 1.4.19-4build1 [244 kB]
#12 20.72 Get:64 http://archive.ubuntu.com/ubuntu noble/main amd64 autoconf all 2.71-3 [339 kB]
#12 20.86 Get:65 http://archive.ubuntu.com/ubuntu noble/main amd64 autotools-dev all 20220109.1 [44.9 kB]
#12 21.00 Get:66 http://archive.ubuntu.com/ubuntu noble/main amd64 automake all 1:1.16.5-1.3ubuntu1 [558 kB]
#12 21.14 Get:67 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 binutils-common amd64 2.42-4ubuntu2.10 [240 kB]
#12 21.27 Get:68 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libsframe1 amd64 2.42-4ubuntu2.10 [15.7 kB]
#12 21.41 Get:69 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libbinutils amd64 2.42-4ubuntu2.10 [577 kB]
#12 21.55 Get:70 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libctf-nobfd0 amd64 2.42-4ubuntu2.10 [98.0 kB]
#12 21.69 Get:71 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libctf0 amd64 2.42-4ubuntu2.10 [94.5 kB]
#12 21.83 Get:72 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libgprofng0 amd64 2.42-4ubuntu2.10 [849 kB]
#12 21.97 Get:73 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 binutils-x86-64-linux-gnu amd64 2.42-4ubuntu2.10 [2463 kB]
#12 22.12 Get:74 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 binutils amd64 2.42-4ubuntu2.10 [18.2 kB]
#12 22.26 Get:75 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libc-dev-bin amd64 2.39-0ubuntu8.8 [20.4 kB]
#12 22.39 Get:76 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 linux-libc-dev amd64 6.8.0-139.139 [1527 kB]
#12 22.54 Get:77 http://archive.ubuntu.com/ubuntu noble/main amd64 libcrypt-dev amd64 1:4.4.36-4build1 [112 kB]
#12 22.68 Get:78 http://archive.ubuntu.com/ubuntu noble/main amd64 rpcsvc-proto amd64 1.4.2-0ubuntu7 [67.4 kB]
#12 22.81 Get:79 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libc6-dev amd64 2.39-0ubuntu8.8 [2125 kB]
#12 22.96 Get:80 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 gcc-13-base amd64 13.3.0-6ubuntu2~24.04.1 [51.6 kB]
#12 23.10 Get:81 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libisl23 amd64 0.26-3build1.1 [680 kB]
#12 23.24 Get:82 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libmpfr6 amd64 4.2.1-1build1.1 [353 kB]
#12 23.56 Get:83 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libmpc3 amd64 1.3.1-1build1.1 [54.6 kB]
#12 23.70 Get:84 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 cpp-13-x86-64-linux-gnu amd64 13.3.0-6ubuntu2~24.04.1 [10.7 MB]
#12 23.90 Get:85 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 cpp-13 amd64 13.3.0-6ubuntu2~24.04.1 [1042 B]
#12 24.03 Get:86 http://archive.ubuntu.com/ubuntu noble/main amd64 cpp-x86-64-linux-gnu amd64 4:13.2.0-7ubuntu1 [5326 B]
#12 24.17 Get:87 http://archive.ubuntu.com/ubuntu noble/main amd64 cpp amd64 4:13.2.0-7ubuntu1 [22.4 kB]
#12 24.31 Get:88 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libcc1-0 amd64 14.2.0-4ubuntu2~24.04.1 [48.0 kB]
#12 24.44 Get:89 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libgomp1 amd64 14.2.0-4ubuntu2~24.04.1 [148 kB]
#12 24.58 Get:90 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libitm1 amd64 14.2.0-4ubuntu2~24.04.1 [29.7 kB]
#12 24.72 Get:91 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libatomic1 amd64 14.2.0-4ubuntu2~24.04.1 [10.5 kB]
#12 ...

#11 [bnetserver stage-1  2/10] RUN apt-get update  && apt-get install -y --no-install-recommends       bash       ca-certificates       curl       libboost-filesystem1.83.0       libboost-iostreams1.83.0       libboost-locale1.83.0       libboost-program-options1.83.0       libboost-regex1.83.0       libboost-system1.83.0       libboost-thread1.83.0       libmariadb3       libmysqlclient21       libreadline8t64       libssl3t64       mariadb-client       p7zip-full       procps       tzdata       zlib1g  && rm -rf /var/lib/apt/lists/*
#11 24.64 Get:24 http://archive.ubuntu.com/ubuntu noble/main amd64 readline-common all 8.2-4build1 [56.5 kB]
#11 24.66 Get:25 http://archive.ubuntu.com/ubuntu noble/main amd64 libreadline8t64 amd64 8.2-4build1 [153 kB]
#11 24.75 Get:26 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 tzdata all 2026c-0ubuntu0.24.04.1 [280 kB]
#11 24.92 Get:27 http://archive.ubuntu.com/ubuntu noble/main amd64 libedit2 amd64 3.1-20230828-1build1 [97.6 kB]
#11 25.22 Get:28 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libncurses6 amd64 6.4+20240113-1ubuntu2.2 [112 kB]
#11 25.28 Get:29 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libnghttp2-14 amd64 1.59.0-1ubuntu0.4 [74.6 kB]
#11 25.32 Get:30 http://archive.ubuntu.com/ubuntu noble/main amd64 libpsl5t64 amd64 0.21.2-1.1build1 [57.1 kB]
#11 25.34 Get:31 http://archive.ubuntu.com/ubuntu noble/universe amd64 7zip amd64 23.01+dfsg-11 [1846 kB]
#11 26.37 Get:32 http://archive.ubuntu.com/ubuntu noble/main amd64 libbrotli1 amd64 1.1.0-2build2 [331 kB]
#11 26.63 Get:33 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libsasl2-modules-db amd64 2.1.28+dfsg1-5ubuntu3.1 [20.4 kB]
#11 26.63 Get:34 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libsasl2-2 amd64 2.1.28+dfsg1-5ubuntu3.1 [53.2 kB]
#11 26.63 Get:35 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libldap2 amd64 2.6.10+dfsg-0ubuntu0.24.04.1 [198 kB]
#11 26.70 Get:36 http://archive.ubuntu.com/ubuntu noble/main amd64 librtmp1 amd64 2.4+20151223.gitfa8646d.1-2build7 [56.3 kB]
#11 26.70 Get:37 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libssh-4 amd64 0.10.6-2ubuntu0.5 [191 kB]
#11 26.75 Get:38 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libcurl4t64 amd64 8.5.0-2ubuntu10.13 [343 kB]
#11 26.95 Get:39 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 curl amd64 8.5.0-2ubuntu10.13 [226 kB]
#11 27.08 Get:40 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-filesystem1.83.0 amd64 1.83.0-2.1ubuntu3.2 [284 kB]
#11 27.21 Get:41 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-iostreams1.83.0 amd64 1.83.0-2.1ubuntu3.2 [260 kB]
#11 27.31 Get:42 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-thread1.83.0 amd64 1.83.0-2.1ubuntu3.2 [276 kB]
#11 27.48 Get:43 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-locale1.83.0 amd64 1.83.0-2.1ubuntu3.2 [413 kB]
#11 27.67 Get:44 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-program-options1.83.0 amd64 1.83.0-2.1ubuntu3.2 [321 kB]
#11 27.83 Get:45 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-regex1.83.0 amd64 1.83.0-2.1ubuntu3.2 [340 kB]
#11 27.98 Get:46 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-system1.83.0 amd64 1.83.0-2.1ubuntu3.2 [236 kB]
#11 28.08 Get:47 http://archive.ubuntu.com/ubuntu noble/main amd64 mysql-common all 5.8+1.1.0build1 [6746 B]
#11 28.08 Get:48 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 mariadb-common all 1:10.11.14-0ubuntu0.24.04.1 [28.6 kB]
#11 28.13 Get:49 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libmariadb3 amd64 1:10.11.14-0ubuntu0.24.04.1 [196 kB]
#11 28.22 Get:50 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libmysqlclient21 amd64 8.0.46-0ubuntu0.24.04.4 [1255 kB]
#11 28.88 Get:51 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libconfig-inifiles-perl all 3.000003-2ubuntu0.1 [38.5 kB]
#11 28.88 Get:52 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 mariadb-client-core amd64 1:10.11.14-0ubuntu0.24.04.1 [1039 kB]
#11 29.39 Get:53 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 mariadb-client amd64 1:10.11.14-0ubuntu0.24.04.1 [2502 kB]
#11 30.61 Get:54 http://archive.ubuntu.com/ubuntu noble/universe amd64 p7zip-full all 16.02+transitional.1 [2500 B]
#11 31.88 debconf: delaying package configuration, since apt-utils is not installed
#11 31.92 Fetched 37.3 MB in 23s (1626 kB/s)
#11 32.04 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 4381 files and directories currently installed.)
#11 32.27 Preparing to unpack .../ncurses-bin_6.4+20240113-1ubuntu2.2_amd64.deb ...
#11 32.28 Unpacking ncurses-bin (6.4+20240113-1ubuntu2.2) over (6.4+20240113-1ubuntu2.1) ...
#11 32.43 Setting up ncurses-bin (6.4+20240113-1ubuntu2.2) ...
#11 32.44 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 4381 files and directories currently installed.)
#11 32.45 Preparing to unpack .../perl-base_5.38.2-3.2ubuntu0.4_amd64.deb ...
#11 32.47 Unpacking perl-base (5.38.2-3.2ubuntu0.4) over (5.38.2-3.2ubuntu0.3) ...
#11 33.76 Setting up perl-base (5.38.2-3.2ubuntu0.4) ...
#11 33.78 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 4381 files and directories currently installed.)
#11 33.78 Preparing to unpack .../ncurses-base_6.4+20240113-1ubuntu2.2_all.deb ...
#11 33.79 Unpacking ncurses-base (6.4+20240113-1ubuntu2.2) over (6.4+20240113-1ubuntu2.1) ...
#11 33.90 Setting up ncurses-base (6.4+20240113-1ubuntu2.2) ...
#11 33.91 Selecting previously unselected package perl-modules-5.38.
#11 33.91 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 4381 files and directories currently installed.)
#11 33.92 Preparing to unpack .../perl-modules-5.38_5.38.2-3.2ubuntu0.4_all.deb ...
#11 33.92 Unpacking perl-modules-5.38 (5.38.2-3.2ubuntu0.4) ...
#11 34.19 Selecting previously unselected package libgdbm6t64:amd64.
#11 34.19 Preparing to unpack .../libgdbm6t64_1.23-5.1build1_amd64.deb ...
#11 34.19 Unpacking libgdbm6t64:amd64 (1.23-5.1build1) ...
#11 34.20 Selecting previously unselected package libgdbm-compat4t64:amd64.
#11 34.20 Preparing to unpack .../libgdbm-compat4t64_1.23-5.1build1_amd64.deb ...
#11 34.21 Unpacking libgdbm-compat4t64:amd64 (1.23-5.1build1) ...
#11 34.22 Preparing to unpack .../zlib1g_1%3a1.3.dfsg-3.1ubuntu2.2_amd64.deb ...
#11 34.22 Unpacking zlib1g:amd64 (1:1.3.dfsg-3.1ubuntu2.2) over (1:1.3.dfsg-3.1ubuntu2.1) ...
#11 34.25 Setting up zlib1g:amd64 (1:1.3.dfsg-3.1ubuntu2.2) ...
#11 34.27 Selecting previously unselected package libperl5.38t64:amd64.
#11 34.27 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 5806 files and directories currently installed.)
#11 34.27 Preparing to unpack .../libperl5.38t64_5.38.2-3.2ubuntu0.4_amd64.deb ...
#11 34.27 Unpacking libperl5.38t64:amd64 (5.38.2-3.2ubuntu0.4) ...
#11 34.45 Selecting previously unselected package perl.
#11 34.45 Preparing to unpack .../perl_5.38.2-3.2ubuntu0.4_amd64.deb ...
#11 34.45 Unpacking perl (5.38.2-3.2ubuntu0.4) ...
#11 34.48 Preparing to unpack .../libssl3t64_3.0.13-0ubuntu3.15_amd64.deb ...
#11 34.48 Unpacking libssl3t64:amd64 (3.0.13-0ubuntu3.15) over (3.0.13-0ubuntu3.12) ...
#11 34.83 Setting up libssl3t64:amd64 (3.0.13-0ubuntu3.15) ...
#11 34.85 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 6393 files and directories currently installed.)
#11 34.86 Preparing to unpack .../libncursesw6_6.4+20240113-1ubuntu2.2_amd64.deb ...
#11 34.86 Unpacking libncursesw6:amd64 (6.4+20240113-1ubuntu2.2) over (6.4+20240113-1ubuntu2.1) ...
#11 ...

#12 [worldserver builder 2/5] RUN apt-get update  && apt-get install -y --no-install-recommends       build-essential       ca-certificates       ccache       cmake       default-libmysqlclient-dev       git       libboost-all-dev       libreadline-dev       libssl-dev       ninja-build       pkg-config  && rm -rf /var/lib/apt/lists/*
#12 24.86 Get:92 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libasan8 amd64 14.2.0-4ubuntu2~24.04.1 [3027 kB]
#12 25.01 Get:93 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 liblsan0 amd64 14.2.0-4ubuntu2~24.04.1 [1322 kB]
#12 25.16 Get:94 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libtsan2 amd64 14.2.0-4ubuntu2~24.04.1 [2772 kB]
#12 25.31 Get:95 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libubsan1 amd64 14.2.0-4ubuntu2~24.04.1 [1184 kB]
#12 25.45 Get:96 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libhwasan0 amd64 14.2.0-4ubuntu2~24.04.1 [1641 kB]
#12 25.60 Get:97 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libquadmath0 amd64 14.2.0-4ubuntu2~24.04.1 [153 kB]
#12 25.74 Get:98 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libgcc-13-dev amd64 13.3.0-6ubuntu2~24.04.1 [2681 kB]
#12 25.89 Get:99 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 gcc-13-x86-64-linux-gnu amd64 13.3.0-6ubuntu2~24.04.1 [21.1 MB]
#12 26.15 Get:100 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 gcc-13 amd64 13.3.0-6ubuntu2~24.04.1 [494 kB]
#12 26.29 Get:101 http://archive.ubuntu.com/ubuntu noble/main amd64 gcc-x86-64-linux-gnu amd64 4:13.2.0-7ubuntu1 [1212 B]
#12 26.42 Get:102 http://archive.ubuntu.com/ubuntu noble/main amd64 gcc amd64 4:13.2.0-7ubuntu1 [5018 B]
#12 26.76 Get:103 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libstdc++-13-dev amd64 13.3.0-6ubuntu2~24.04.1 [2420 kB]
#12 28.66 Get:104 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 g++-13-x86-64-linux-gnu amd64 13.3.0-6ubuntu2~24.04.1 [12.2 MB]
#12 29.59 Get:105 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 g++-13 amd64 13.3.0-6ubuntu2~24.04.1 [16.0 kB]
#12 29.76 Get:106 http://archive.ubuntu.com/ubuntu noble/main amd64 g++-x86-64-linux-gnu amd64 4:13.2.0-7ubuntu1 [964 B]
#12 29.93 Get:107 http://archive.ubuntu.com/ubuntu noble/main amd64 g++ amd64 4:13.2.0-7ubuntu1 [1100 B]
#12 30.09 Get:108 http://archive.ubuntu.com/ubuntu noble/main amd64 make amd64 4.3-4.1build2 [180 kB]
#12 30.26 Get:109 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libdpkg-perl all 1.22.6ubuntu6.6 [268 kB]
#12 30.43 Get:110 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 bzip2 amd64 1.0.8-5.1ubuntu0.1 [34.6 kB]
#12 30.60 Get:111 http://archive.ubuntu.com/ubuntu noble/main amd64 patch amd64 2.7.6-7build3 [104 kB]
#12 30.77 Get:112 http://archive.ubuntu.com/ubuntu noble/main amd64 lto-disabled-list all 47 [12.4 kB]
#12 30.94 Get:113 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 dpkg-dev all 1.22.6ubuntu6.6 [1074 kB]
#12 31.12 Get:114 http://archive.ubuntu.com/ubuntu noble/main amd64 build-essential amd64 12.10ubuntu1 [4928 B]
#12 31.28 Get:115 http://archive.ubuntu.com/ubuntu noble/universe amd64 libhiredis1.1.0 amd64 1.2.0-6ubuntu3 [41.4 kB]
#12 31.45 Get:116 http://archive.ubuntu.com/ubuntu noble/universe amd64 ccache amd64 4.9.1-1 [592 kB]
#12 31.63 Get:117 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libarchive13t64 amd64 3.7.2-2ubuntu0.8 [383 kB]
#12 31.80 Get:118 http://archive.ubuntu.com/ubuntu noble/main amd64 libbrotli1 amd64 1.1.0-2build2 [331 kB]
#12 31.97 Get:119 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libsasl2-modules-db amd64 2.1.28+dfsg1-5ubuntu3.1 [20.4 kB]
#12 32.14 Get:120 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libsasl2-2 amd64 2.1.28+dfsg1-5ubuntu3.1 [53.2 kB]
#12 32.30 Get:121 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libldap2 amd64 2.6.10+dfsg-0ubuntu0.24.04.1 [198 kB]
#12 32.47 Get:122 http://archive.ubuntu.com/ubuntu noble/main amd64 librtmp1 amd64 2.4+20151223.gitfa8646d.1-2build7 [56.3 kB]
#12 32.64 Get:123 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libssh-4 amd64 0.10.6-2ubuntu0.5 [191 kB]
#12 32.81 Get:124 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libcurl4t64 amd64 8.5.0-2ubuntu10.13 [343 kB]
#12 32.98 Get:125 http://archive.ubuntu.com/ubuntu noble/main amd64 libjsoncpp25 amd64 1.9.5-6build1 [82.8 kB]
#12 33.15 Get:126 http://archive.ubuntu.com/ubuntu noble/main amd64 librhash0 amd64 1.4.3-3build1 [129 kB]
#12 33.32 Get:127 http://archive.ubuntu.com/ubuntu noble/main amd64 cmake-data all 3.28.3-1build7 [2155 kB]
#12 33.51 Get:128 http://archive.ubuntu.com/ubuntu noble/main amd64 cmake amd64 3.28.3-1build7 [11.2 MB]
#12 34.09 Get:129 http://archive.ubuntu.com/ubuntu noble/main amd64 mysql-common all 5.8+1.1.0build1 [6746 B]
#12 34.25 Get:130 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libmysqlclient21 amd64 8.0.46-0ubuntu0.24.04.4 [1255 kB]
#12 34.43 Get:131 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libssl-dev amd64 3.0.13-0ubuntu3.15 [2408 kB]
#12 34.61 Get:132 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libzstd-dev amd64 1.5.5+dfsg2-2build1.1 [364 kB]
#12 34.78 Get:133 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 zlib1g-dev amd64 1:1.3.dfsg-3.1ubuntu2.2 [894 kB]
#12 34.96 Get:134 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libmysqlclient-dev amd64 8.0.46-0ubuntu0.24.04.4 [1591 kB]
#12 ...

#11 [bnetserver stage-1  2/10] RUN apt-get update  && apt-get install -y --no-install-recommends       bash       ca-certificates       curl       libboost-filesystem1.83.0       libboost-iostreams1.83.0       libboost-locale1.83.0       libboost-program-options1.83.0       libboost-regex1.83.0       libboost-system1.83.0       libboost-thread1.83.0       libmariadb3       libmysqlclient21       libreadline8t64       libssl3t64       mariadb-client       p7zip-full       procps       tzdata       zlib1g  && rm -rf /var/lib/apt/lists/*
#11 34.97 Preparing to unpack .../libtinfo6_6.4+20240113-1ubuntu2.2_amd64.deb ...
#11 34.97 Unpacking libtinfo6:amd64 (6.4+20240113-1ubuntu2.2) over (6.4+20240113-1ubuntu2.1) ...
#11 35.03 Setting up libtinfo6:amd64 (6.4+20240113-1ubuntu2.2) ...
#11 35.05 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 6393 files and directories currently installed.)
#11 35.05 Preparing to unpack .../00-libproc2-0_2%3a4.0.4-4ubuntu3.3_amd64.deb ...
#11 35.06 Unpacking libproc2-0:amd64 (2:4.0.4-4ubuntu3.3) over (2:4.0.4-4ubuntu3.2) ...
#11 35.11 Preparing to unpack .../01-procps_2%3a4.0.4-4ubuntu3.3_amd64.deb ...
#11 35.12 Unpacking procps (2:4.0.4-4ubuntu3.3) over (2:4.0.4-4ubuntu3.2) ...
#11 35.40 Selecting previously unselected package openssl.
#11 35.40 Preparing to unpack .../02-openssl_3.0.13-0ubuntu3.15_amd64.deb ...
#11 35.40 Unpacking openssl (3.0.13-0ubuntu3.15) ...
#11 35.44 Selecting previously unselected package ca-certificates.
#11 35.44 Preparing to unpack .../03-ca-certificates_20260601~24.04.1_all.deb ...
#11 35.44 Unpacking ca-certificates (20260601~24.04.1) ...
#11 35.48 Selecting previously unselected package libbsd0:amd64.
#11 35.48 Preparing to unpack .../04-libbsd0_0.12.1-1build1.1_amd64.deb ...
#11 35.48 Unpacking libbsd0:amd64 (0.12.1-1build1.1) ...
#11 35.49 Selecting previously unselected package libkrb5support0:amd64.
#11 35.49 Preparing to unpack .../05-libkrb5support0_1.20.1-6ubuntu2.8_amd64.deb ...
#11 35.50 Unpacking libkrb5support0:amd64 (1.20.1-6ubuntu2.8) ...
#11 35.51 Selecting previously unselected package libk5crypto3:amd64.
#11 35.51 Preparing to unpack .../06-libk5crypto3_1.20.1-6ubuntu2.8_amd64.deb ...
#11 35.51 Unpacking libk5crypto3:amd64 (1.20.1-6ubuntu2.8) ...
#11 35.53 Selecting previously unselected package libkeyutils1:amd64.
#11 35.53 Preparing to unpack .../07-libkeyutils1_1.6.3-3build1_amd64.deb ...
#11 35.53 Unpacking libkeyutils1:amd64 (1.6.3-3build1) ...
#11 35.54 Selecting previously unselected package libkrb5-3:amd64.
#11 35.54 Preparing to unpack .../08-libkrb5-3_1.20.1-6ubuntu2.8_amd64.deb ...
#11 35.55 Unpacking libkrb5-3:amd64 (1.20.1-6ubuntu2.8) ...
#11 35.56 Selecting previously unselected package libgssapi-krb5-2:amd64.
#11 35.57 Preparing to unpack .../09-libgssapi-krb5-2_1.20.1-6ubuntu2.8_amd64.deb ...
#11 35.57 Unpacking libgssapi-krb5-2:amd64 (1.20.1-6ubuntu2.8) ...
#11 35.58 Selecting previously unselected package libicu74:amd64.
#11 35.58 Preparing to unpack .../10-libicu74_74.2-1ubuntu3.1_amd64.deb ...
#11 35.58 Unpacking libicu74:amd64 (74.2-1ubuntu3.1) ...
#11 35.72 Selecting previously unselected package readline-common.
#11 35.73 Preparing to unpack .../11-readline-common_8.2-4build1_all.deb ...
#11 35.73 Unpacking readline-common (8.2-4build1) ...
#11 35.74 Selecting previously unselected package libreadline8t64:amd64.
#11 35.74 Preparing to unpack .../12-libreadline8t64_8.2-4build1_amd64.deb ...
#11 35.77 Adding 'diversion of /lib/x86_64-linux-gnu/libhistory.so.8 to /lib/x86_64-linux-gnu/libhistory.so.8.usr-is-merged by libreadline8t64'
#11 35.77 Adding 'diversion of /lib/x86_64-linux-gnu/libhistory.so.8.2 to /lib/x86_64-linux-gnu/libhistory.so.8.2.usr-is-merged by libreadline8t64'
#11 35.78 Adding 'diversion of /lib/x86_64-linux-gnu/libreadline.so.8 to /lib/x86_64-linux-gnu/libreadline.so.8.usr-is-merged by libreadline8t64'
#11 35.78 Adding 'diversion of /lib/x86_64-linux-gnu/libreadline.so.8.2 to /lib/x86_64-linux-gnu/libreadline.so.8.2.usr-is-merged by libreadline8t64'
#11 35.78 Unpacking libreadline8t64:amd64 (8.2-4build1) ...
#11 35.80 Selecting previously unselected package tzdata.
#11 35.80 Preparing to unpack .../13-tzdata_2026c-0ubuntu0.24.04.1_all.deb ...
#11 35.80 Unpacking tzdata (2026c-0ubuntu0.24.04.1) ...
#11 35.89 Selecting previously unselected package libedit2:amd64.
#11 35.89 Preparing to unpack .../14-libedit2_3.1-20230828-1build1_amd64.deb ...
#11 35.89 Unpacking libedit2:amd64 (3.1-20230828-1build1) ...
#11 35.90 Selecting previously unselected package libncurses6:amd64.
#11 35.91 Preparing to unpack .../15-libncurses6_6.4+20240113-1ubuntu2.2_amd64.deb ...
#11 35.91 Unpacking libncurses6:amd64 (6.4+20240113-1ubuntu2.2) ...
#11 35.92 Selecting previously unselected package libnghttp2-14:amd64.
#11 35.92 Preparing to unpack .../16-libnghttp2-14_1.59.0-1ubuntu0.4_amd64.deb ...
#11 35.92 Unpacking libnghttp2-14:amd64 (1.59.0-1ubuntu0.4) ...
#11 35.94 Selecting previously unselected package libpsl5t64:amd64.
#11 35.94 Preparing to unpack .../17-libpsl5t64_0.21.2-1.1build1_amd64.deb ...
#11 35.94 Unpacking libpsl5t64:amd64 (0.21.2-1.1build1) ...
#11 35.95 Selecting previously unselected package 7zip.
#11 35.95 Preparing to unpack .../18-7zip_23.01+dfsg-11_amd64.deb ...
#11 35.95 Unpacking 7zip (23.01+dfsg-11) ...
#11 35.99 Selecting previously unselected package libbrotli1:amd64.
#11 35.99 Preparing to unpack .../19-libbrotli1_1.1.0-2build2_amd64.deb ...
#11 35.99 Unpacking libbrotli1:amd64 (1.1.0-2build2) ...
#11 36.01 Selecting previously unselected package libsasl2-modules-db:amd64.
#11 36.01 Preparing to unpack .../20-libsasl2-modules-db_2.1.28+dfsg1-5ubuntu3.1_amd64.deb ...
#11 36.01 Unpacking libsasl2-modules-db:amd64 (2.1.28+dfsg1-5ubuntu3.1) ...
#11 36.02 Selecting previously unselected package libsasl2-2:amd64.
#11 36.02 Preparing to unpack .../21-libsasl2-2_2.1.28+dfsg1-5ubuntu3.1_amd64.deb ...
#11 36.03 Unpacking libsasl2-2:amd64 (2.1.28+dfsg1-5ubuntu3.1) ...
#11 36.04 Selecting previously unselected package libldap2:amd64.
#11 36.04 Preparing to unpack .../22-libldap2_2.6.10+dfsg-0ubuntu0.24.04.1_amd64.deb ...
#11 36.04 Unpacking libldap2:amd64 (2.6.10+dfsg-0ubuntu0.24.04.1) ...
#11 36.06 Selecting previously unselected package librtmp1:amd64.
#11 36.06 Preparing to unpack .../23-librtmp1_2.4+20151223.gitfa8646d.1-2build7_amd64.deb ...
#11 36.06 Unpacking librtmp1:amd64 (2.4+20151223.gitfa8646d.1-2build7) ...
#11 36.07 Selecting previously unselected package libssh-4:amd64.
#11 36.07 Preparing to unpack .../24-libssh-4_0.10.6-2ubuntu0.5_amd64.deb ...
#11 36.08 Unpacking libssh-4:amd64 (0.10.6-2ubuntu0.5) ...
#11 36.09 Selecting previously unselected package libcurl4t64:amd64.
#11 36.09 Preparing to unpack .../25-libcurl4t64_8.5.0-2ubuntu10.13_amd64.deb ...
#11 36.10 Unpacking libcurl4t64:amd64 (8.5.0-2ubuntu10.13) ...
#11 36.11 Selecting previously unselected package curl.
#11 36.11 Preparing to unpack .../26-curl_8.5.0-2ubuntu10.13_amd64.deb ...
#11 36.11 Unpacking curl (8.5.0-2ubuntu10.13) ...
#11 36.13 Selecting previously unselected package libboost-filesystem1.83.0:amd64.
#11 36.13 Preparing to unpack .../27-libboost-filesystem1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#11 36.13 Unpacking libboost-filesystem1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#11 36.15 Selecting previously unselected package libboost-iostreams1.83.0:amd64.
#11 36.15 Preparing to unpack .../28-libboost-iostreams1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#11 36.15 Unpacking libboost-iostreams1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#11 36.17 Selecting previously unselected package libboost-thread1.83.0:amd64.
#11 36.17 Preparing to unpack .../29-libboost-thread1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#11 36.17 Unpacking libboost-thread1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#11 36.19 Selecting previously unselected package libboost-locale1.83.0:amd64.
#11 36.19 Preparing to unpack .../30-libboost-locale1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#11 36.20 Unpacking libboost-locale1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#11 36.22 Selecting previously unselected package libboost-program-options1.83.0:amd64.
#11 36.22 Preparing to unpack .../31-libboost-program-options1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#11 36.22 Unpacking libboost-program-options1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#11 36.24 Selecting previously unselected package libboost-regex1.83.0:amd64.
#11 36.24 Preparing to unpack .../32-libboost-regex1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#11 36.24 Unpacking libboost-regex1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#11 36.26 Selecting previously unselected package libboost-system1.83.0:amd64.
#11 36.26 Preparing to unpack .../33-libboost-system1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#11 36.26 Unpacking libboost-system1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#11 36.28 Selecting previously unselected package mysql-common.
#11 36.28 Preparing to unpack .../34-mysql-common_5.8+1.1.0build1_all.deb ...
#11 36.29 Unpacking mysql-common (5.8+1.1.0build1) ...
#11 36.31 Selecting previously unselected package mariadb-common.
#11 36.31 Preparing to unpack .../35-mariadb-common_1%3a10.11.14-0ubuntu0.24.04.1_all.deb ...
#11 36.31 Unpacking mariadb-common (1:10.11.14-0ubuntu0.24.04.1) ...
#11 36.33 Selecting previously unselected package libmariadb3:amd64.
#11 36.33 Preparing to unpack .../36-libmariadb3_1%3a10.11.14-0ubuntu0.24.04.1_amd64.deb ...
#11 36.33 Unpacking libmariadb3:amd64 (1:10.11.14-0ubuntu0.24.04.1) ...
#11 36.35 Selecting previously unselected package libmysqlclient21:amd64.
#11 36.35 Preparing to unpack .../37-libmysqlclient21_8.0.46-0ubuntu0.24.04.4_amd64.deb ...
#11 36.35 Unpacking libmysqlclient21:amd64 (8.0.46-0ubuntu0.24.04.4) ...
#11 36.38 Selecting previously unselected package libconfig-inifiles-perl.
#11 36.38 Preparing to unpack .../38-libconfig-inifiles-perl_3.000003-2ubuntu0.1_all.deb ...
#11 36.38 Unpacking libconfig-inifiles-perl (3.000003-2ubuntu0.1) ...
#11 36.40 Selecting previously unselected package mariadb-client-core.
#11 36.40 Preparing to unpack .../39-mariadb-client-core_1%3a10.11.14-0ubuntu0.24.04.1_amd64.deb ...
#11 36.40 Unpacking mariadb-client-core (1:10.11.14-0ubuntu0.24.04.1) ...
#11 36.45 Selecting previously unselected package mariadb-client.
#11 36.45 Preparing to unpack .../40-mariadb-client_1%3a10.11.14-0ubuntu0.24.04.1_amd64.deb ...
#11 36.45 Unpacking mariadb-client (1:10.11.14-0ubuntu0.24.04.1) ...
#11 36.64 Selecting previously unselected package p7zip-full.
#11 36.64 Preparing to unpack .../41-p7zip-full_16.02+transitional.1_all.deb ...
#11 36.65 Unpacking p7zip-full (16.02+transitional.1) ...
#11 36.67 Setting up libconfig-inifiles-perl (3.000003-2ubuntu0.1) ...
#11 36.67 Setting up libboost-program-options1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#11 36.67 Setting up mysql-common (5.8+1.1.0build1) ...
#11 36.70 update-alternatives: using /etc/mysql/my.cnf.fallback to provide /etc/mysql/my.cnf (my.cnf) in auto mode
#11 36.70 Setting up libmysqlclient21:amd64 (8.0.46-0ubuntu0.24.04.4) ...
#11 36.71 Setting up libkeyutils1:amd64 (1.6.3-3build1) ...
#11 36.71 Setting up libgdbm6t64:amd64 (1.23-5.1build1) ...
#11 36.71 Setting up libgdbm-compat4t64:amd64 (1.23-5.1build1) ...
#11 36.71 Setting up libboost-regex1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#11 36.72 Setting up libbrotli1:amd64 (1.1.0-2build2) ...
#11 36.72 Setting up libboost-system1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#11 36.72 Setting up libpsl5t64:amd64 (0.21.2-1.1build1) ...
#11 36.73 Setting up libnghttp2-14:amd64 (1.59.0-1ubuntu0.4) ...
#11 36.73 Setting up libboost-thread1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#11 36.73 Setting up 7zip (23.01+dfsg-11) ...
#11 36.73 Setting up libboost-filesystem1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#11 36.74 Setting up libkrb5support0:amd64 (1.20.1-6ubuntu2.8) ...
#11 36.74 Setting up libsasl2-modules-db:amd64 (2.1.28+dfsg1-5ubuntu3.1) ...
#11 36.74 Setting up tzdata (2026c-0ubuntu0.24.04.1) ...
#11 36.87 
#11 36.87 Current default time zone: 'Etc/UTC'
#11 36.88 Local time is now:      Sat Sep  5 12:43:38 UTC 2026.
#11 36.88 Universal Time is now:  Sat Sep  5 12:43:38 UTC 2026.
#11 36.88 Run 'dpkg-reconfigure tzdata' if you wish to change it.
#11 36.88 
#11 36.89 Setting up mariadb-common (1:10.11.14-0ubuntu0.24.04.1) ...
#11 36.90 update-alternatives: using /etc/mysql/mariadb.cnf to provide /etc/mysql/my.cnf (my.cnf) in auto mode
#11 36.92 Setting up librtmp1:amd64 (2.4+20151223.gitfa8646d.1-2build7) ...
#11 36.92 Setting up libboost-iostreams1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#11 36.92 Setting up libncurses6:amd64 (6.4+20240113-1ubuntu2.2) ...
#11 36.92 Setting up perl-modules-5.38 (5.38.2-3.2ubuntu0.4) ...
#11 36.93 Setting up libproc2-0:amd64 (2:4.0.4-4ubuntu3.3) ...
#11 36.93 Setting up libmariadb3:amd64 (1:10.11.14-0ubuntu0.24.04.1) ...
#11 36.93 Setting up libncursesw6:amd64 (6.4+20240113-1ubuntu2.2) ...
#11 36.93 Setting up libk5crypto3:amd64 (1.20.1-6ubuntu2.8) ...
#11 36.94 Setting up libsasl2-2:amd64 (2.1.28+dfsg1-5ubuntu3.1) ...
#11 36.94 Setting up libicu74:amd64 (74.2-1ubuntu3.1) ...
#11 36.94 Setting up procps (2:4.0.4-4ubuntu3.3) ...
#11 37.01 Setting up libkrb5-3:amd64 (1.20.1-6ubuntu2.8) ...
#11 37.01 Setting up libperl5.38t64:amd64 (5.38.2-3.2ubuntu0.4) ...
#11 37.01 Setting up openssl (3.0.13-0ubuntu3.15) ...
#11 37.02 Setting up libbsd0:amd64 (0.12.1-1build1.1) ...
#11 37.02 Setting up readline-common (8.2-4build1) ...
#11 37.05 Setting up libldap2:amd64 (2.6.10+dfsg-0ubuntu0.24.04.1) ...
#11 37.05 Setting up libedit2:amd64 (3.1-20230828-1build1) ...
#11 37.06 Setting up libboost-locale1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#11 37.06 Setting up p7zip-full (16.02+transitional.1) ...
#11 37.07 Setting up mariadb-client-core (1:10.11.14-0ubuntu0.24.04.1) ...
#11 37.07 Setting up ca-certificates (20260601~24.04.1) ...
#11 37.54 Updating certificates in /etc/ssl/certs...
#11 38.01 121 added, 0 removed; done.
#11 38.03 Setting up perl (5.38.2-3.2ubuntu0.4) ...
#11 38.04 Setting up libgssapi-krb5-2:amd64 (1.20.1-6ubuntu2.8) ...
#11 38.04 Setting up libssh-4:amd64 (0.10.6-2ubuntu0.5) ...
#11 38.04 Setting up libreadline8t64:amd64 (8.2-4build1) ...
#11 38.04 Setting up mariadb-client (1:10.11.14-0ubuntu0.24.04.1) ...
#11 38.05 Setting up libcurl4t64:amd64 (8.5.0-2ubuntu10.13) ...
#11 38.05 Setting up curl (8.5.0-2ubuntu10.13) ...
#11 38.05 Processing triggers for libc-bin (2.39-0ubuntu8.8) ...
#11 38.58 Processing triggers for ca-certificates (20260601~24.04.1) ...
#11 38.59 Updating certificates in /etc/ssl/certs...
#11 38.97 0 added, 0 removed; done.
#11 38.97 Running hooks in /etc/ca-certificates/update.d...
#11 38.98 done.
#11 DONE 39.3s

#12 [worldserver builder 2/5] RUN apt-get update  && apt-get install -y --no-install-recommends       build-essential       ca-certificates       ccache       cmake       default-libmysqlclient-dev       git       libboost-all-dev       libreadline-dev       libssl-dev       ninja-build       pkg-config  && rm -rf /var/lib/apt/lists/*
#12 35.40 Get:135 http://archive.ubuntu.com/ubuntu noble/main amd64 default-libmysqlclient-dev amd64 1.1.0build1 [3132 B]
#12 35.54 Get:136 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libgfortran5 amd64 14.2.0-4ubuntu2~24.04.1 [916 kB]
#12 36.69 Get:137 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libgfortran-13-dev amd64 13.3.0-6ubuntu2~24.04.1 [928 kB]
#12 37.04 Get:138 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 gfortran-13-x86-64-linux-gnu amd64 13.3.0-6ubuntu2~24.04.1 [11.4 MB]
#12 37.89 Get:139 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 gfortran-13 amd64 13.3.0-6ubuntu2~24.04.1 [13.9 kB]
#12 38.03 Get:140 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libcurl3t64-gnutls amd64 8.5.0-2ubuntu10.13 [335 kB]
#12 38.17 Get:141 http://archive.ubuntu.com/ubuntu noble/main amd64 liberror-perl all 0.17029-2 [25.6 kB]
#12 38.31 Get:142 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 git-man all 1:2.43.0-1ubuntu7.3 [1100 kB]
#12 38.46 Get:143 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 git amd64 1:2.43.0-1ubuntu7.3 [3680 kB]
#12 38.64 Get:144 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 icu-devtools amd64 74.2-1ubuntu3.1 [212 kB]
#12 38.78 Get:145 http://archive.ubuntu.com/ubuntu noble/main amd64 libllvm17t64 amd64 1:17.0.6-9ubuntu1 [26.2 MB]
#12 39.27 Get:146 http://archive.ubuntu.com/ubuntu noble/universe amd64 libamd-comgr2 amd64 6.0+git20231212.4510c28+dfsg-3build2 [14.4 MB]
#12 39.49 Get:147 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libdrm-amdgpu1 amd64 2.4.125-1ubuntu0.1~24.04.2 [21.4 kB]
#12 39.63 Get:148 http://archive.ubuntu.com/ubuntu noble/universe amd64 libhsakmt1 amd64 5.7.0-1build1 [62.9 kB]
#12 39.77 Get:149 http://archive.ubuntu.com/ubuntu noble/universe amd64 libhsa-runtime64-1 amd64 5.7.1-2build1 [491 kB]
#12 39.91 Get:150 http://archive.ubuntu.com/ubuntu noble/universe amd64 libamdhip64-5 amd64 5.7.1-3 [9621 kB]
#12 40.10 Get:151 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost1.83-dev amd64 1.83.0-2.1ubuntu3.2 [10.7 MB]
#12 40.31 Get:152 http://archive.ubuntu.com/ubuntu noble/main amd64 libboost-dev amd64 1.83.0.1ubuntu2 [4308 B]
#12 40.44 Get:153 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost1.83-tools-dev amd64 1.83.0-2.1ubuntu3.2 [1402 kB]
#12 40.59 Get:154 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-tools-dev amd64 1.83.0.1ubuntu2 [4238 B]
#12 40.73 Get:155 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-atomic1.83.0 amd64 1.83.0-2.1ubuntu3.2 [240 kB]
#12 40.87 Get:156 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-atomic1.83-dev amd64 1.83.0-2.1ubuntu3.2 [235 kB]
#12 41.01 Get:157 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-atomic-dev amd64 1.83.0.1ubuntu2 [4360 B]
#12 41.15 Get:158 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-chrono1.83.0t64 amd64 1.83.0-2.1ubuntu3.2 [245 kB]
#12 41.29 Get:159 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-chrono1.83-dev amd64 1.83.0-2.1ubuntu3.2 [246 kB]
#12 41.60 Get:160 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-chrono-dev amd64 1.83.0.1ubuntu2 [4672 B]
#12 41.74 Get:161 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-container1.83.0 amd64 1.83.0-2.1ubuntu3.2 [261 kB]
#12 41.88 Get:162 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-container1.83-dev amd64 1.83.0-2.1ubuntu3.2 [267 kB]
#12 42.02 Get:163 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-container-dev amd64 1.83.0.1ubuntu2 [4530 B]
#12 42.16 Get:164 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-date-time1.83.0 amd64 1.83.0-2.1ubuntu3.2 [236 kB]
#12 42.30 Get:165 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-serialization1.83.0 amd64 1.83.0-2.1ubuntu3.2 [341 kB]
#12 42.44 Get:166 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-serialization1.83-dev amd64 1.83.0-2.1ubuntu3.2 [387 kB]
#12 42.58 Get:167 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-date-time1.83-dev amd64 1.83.0-2.1ubuntu3.2 [239 kB]
#12 42.72 Get:168 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-system1.83.0 amd64 1.83.0-2.1ubuntu3.2 [236 kB]
#12 42.86 Get:169 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-system1.83-dev amd64 1.83.0-2.1ubuntu3.2 [231 kB]
#12 43.00 Get:170 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-thread1.83.0 amd64 1.83.0-2.1ubuntu3.2 [276 kB]
#12 43.14 Get:171 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-thread1.83-dev amd64 1.83.0-2.1ubuntu3.2 [282 kB]
#12 43.28 Get:172 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-context1.83.0 amd64 1.83.0-2.1ubuntu3.2 [237 kB]
#12 43.41 Get:173 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-context1.83-dev amd64 1.83.0-2.1ubuntu3.2 [232 kB]
#12 43.55 Get:174 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-context-dev amd64 1.83.0.1ubuntu2 [4276 B]
#12 43.69 Get:175 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-coroutine1.83.0 amd64 1.83.0-2.1ubuntu3.2 [234 kB]
#12 43.83 Get:176 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-coroutine1.83-dev amd64 1.83.0-2.1ubuntu3.2 [237 kB]
#12 43.97 Get:177 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-coroutine-dev amd64 1.83.0.1ubuntu2 [4344 B]
#12 44.11 Get:178 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-date-time-dev amd64 1.83.0.1ubuntu2 [4058 B]
#12 44.25 Get:179 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-exception1.83-dev amd64 1.83.0-2.1ubuntu3.2 [229 kB]
#12 44.39 Get:180 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-exception-dev amd64 1.83.0.1ubuntu2 [4058 B]
#12 44.52 Get:181 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-filesystem1.83.0 amd64 1.83.0-2.1ubuntu3.2 [284 kB]
#12 44.66 Get:182 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-filesystem1.83-dev amd64 1.83.0-2.1ubuntu3.2 [301 kB]
#12 44.80 Get:183 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-fiber1.83.0 amd64 1.83.0-2.1ubuntu3.2 [255 kB]
#12 45.12 Get:184 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-fiber1.83-dev amd64 1.83.0-2.1ubuntu3.2 [268 kB]
#12 45.26 Get:185 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-fiber-dev amd64 1.83.0.1ubuntu2 [4486 B]
#12 45.40 Get:186 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-filesystem-dev amd64 1.83.0.1ubuntu2 [4096 B]
#12 45.54 Get:187 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-graph1.83.0 amd64 1.83.0-2.1ubuntu3.2 [361 kB]
#12 45.67 Get:188 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-regex1.83.0 amd64 1.83.0-2.1ubuntu3.2 [340 kB]
#12 45.81 Get:189 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libicu-dev amd64 74.2-1ubuntu3.1 [11.9 MB]
#12 46.02 Get:190 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-regex1.83-dev amd64 1.83.0-2.1ubuntu3.2 [355 kB]
#12 46.16 Get:191 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-test1.83.0 amd64 1.83.0-2.1ubuntu3.2 [454 kB]
#12 46.30 Get:192 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-test1.83-dev amd64 1.83.0-2.1ubuntu3.2 [566 kB]
#12 46.44 Get:193 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-graph1.83-dev amd64 1.83.0-2.1ubuntu3.2 [399 kB]
#12 46.58 Get:194 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-graph-dev amd64 1.83.0.1ubuntu2 [4160 B]
#12 46.72 Get:195 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libevent-core-2.1-7t64 amd64 2.1.12-stable-9ubuntu2.1 [91.8 kB]
#12 46.86 Get:196 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libevent-pthreads-2.1-7t64 amd64 2.1.12-stable-9ubuntu2.1 [7984 B]
#12 46.99 Get:197 http://archive.ubuntu.com/ubuntu noble/universe amd64 libpsm-infinipath1 amd64 3.3+20.604758e7-6.3build1 [178 kB]
#12 47.13 Get:198 http://archive.ubuntu.com/ubuntu noble/universe amd64 libpsm2-2 amd64 11.2.185-2build1 [194 kB]
#12 47.27 Get:199 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 librdmacm1t64 amd64 50.0-2ubuntu0.2 [70.7 kB]
#12 47.41 Get:200 http://archive.ubuntu.com/ubuntu noble/universe amd64 libfabric1 amd64 1.17.0-3build2 [657 kB]
#12 47.55 Get:201 http://archive.ubuntu.com/ubuntu noble/universe amd64 libhwloc15 amd64 2.10.0-1build1 [172 kB]
#12 47.69 Get:202 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libmunge2 amd64 0.5.15-4ubuntu0.1 [14.8 kB]
#12 47.83 Get:203 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libpciaccess0 amd64 0.17-3ubuntu0.24.04.2 [18.9 kB]
#12 47.97 Get:204 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libxnvctrl0 amd64 510.47.03-0ubuntu4.24.04.1 [12.7 kB]
#12 48.11 Get:205 http://archive.ubuntu.com/ubuntu noble/universe amd64 ocl-icd-libopencl1 amd64 2.3.2-1build1 [38.5 kB]
#12 48.24 Get:206 http://archive.ubuntu.com/ubuntu noble/universe amd64 libhwloc-plugins amd64 2.10.0-1build1 [15.7 kB]
#12 48.38 Get:207 http://archive.ubuntu.com/ubuntu noble/universe amd64 libpmix2t64 amd64 5.0.1-4.1build1 [697 kB]
#12 48.53 Get:208 http://archive.ubuntu.com/ubuntu noble/universe amd64 libucx0 amd64 1.16.0+ds-5ubuntu1 [1140 kB]
#12 48.85 Get:209 http://archive.ubuntu.com/ubuntu noble/universe amd64 libopenmpi3t64 amd64 4.1.6-7ubuntu2 [2563 kB]
#12 49.00 Get:210 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-mpi1.83.0 amd64 1.83.0-2.1ubuntu3.2 [271 kB]
#12 49.14 Get:211 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-graph-parallel1.83.0 amd64 1.83.0-2.1ubuntu3.2 [278 kB]
#12 49.28 Get:212 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-graph-parallel1.83-dev amd64 1.83.0-2.1ubuntu3.2 [288 kB]
#12 49.42 Get:213 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-graph-parallel-dev amd64 1.83.0.1ubuntu2 [4192 B]
#12 49.56 Get:214 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-iostreams1.83.0 amd64 1.83.0-2.1ubuntu3.2 [260 kB]
#12 49.70 Get:215 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-iostreams1.83-dev amd64 1.83.0-2.1ubuntu3.2 [264 kB]
#12 49.84 Get:216 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-iostreams-dev amd64 1.83.0.1ubuntu2 [4046 B]
#12 49.97 Get:217 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-json1.83.0 amd64 1.83.0-2.1ubuntu3.2 [365 kB]
#12 50.11 Get:218 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-json1.83-dev amd64 1.83.0-2.1ubuntu3.2 [380 kB]
#12 50.25 Get:219 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-json-dev amd64 1.83.0.1ubuntu2 [4172 B]
#12 50.39 Get:220 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-locale1.83.0 amd64 1.83.0-2.1ubuntu3.2 [413 kB]
#12 50.53 Get:221 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-locale1.83-dev amd64 1.83.0-2.1ubuntu3.2 [582 kB]
#12 50.67 Get:222 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-locale-dev amd64 1.83.0.1ubuntu2 [4378 B]
#12 50.81 Get:223 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-log1.83.0 amd64 1.83.0-2.1ubuntu3.2 [679 kB]
#12 50.95 Get:224 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-log1.83-dev amd64 1.83.0-2.1ubuntu3.2 [937 kB]
#12 51.10 Get:225 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-log-dev amd64 1.83.0.1ubuntu2 [4260 B]
#12 51.23 Get:226 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-math1.83.0 amd64 1.83.0-2.1ubuntu3.2 [440 kB]
#12 51.38 Get:227 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-math1.83-dev amd64 1.83.0-2.1ubuntu3.2 [586 kB]
#12 51.52 Get:228 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-math-dev amd64 1.83.0.1ubuntu2 [4264 B]
#12 51.65 Get:229 http://archive.ubuntu.com/ubuntu noble/universe amd64 openmpi-common all 4.1.6-7ubuntu2 [170 kB]
#12 51.79 Get:230 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libnl-3-dev amd64 3.7.0-0.3build1.1 [99.5 kB]
#12 51.93 Get:231 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libnl-route-3-dev amd64 3.7.0-0.3build1.1 [216 kB]
#12 52.07 Get:232 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libibverbs-dev amd64 50.0-2ubuntu0.2 [686 kB]
#12 52.21 Get:233 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libnuma-dev amd64 2.0.18-1ubuntu0.24.04.1 [37.0 kB]
#12 52.53 Get:234 http://archive.ubuntu.com/ubuntu noble/main amd64 libltdl7 amd64 2.4.7-7build1 [40.3 kB]
#12 52.67 Get:235 http://archive.ubuntu.com/ubuntu noble/main amd64 libltdl-dev amd64 2.4.7-7build1 [168 kB]
#12 52.86 Get:236 http://archive.ubuntu.com/ubuntu noble/universe amd64 libhwloc-dev amd64 2.10.0-1build1 [268 kB]
#12 54.76 Get:237 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libevent-2.1-7t64 amd64 2.1.12-stable-9ubuntu2.1 [146 kB]
#12 55.29 Get:238 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libevent-extra-2.1-7t64 amd64 2.1.12-stable-9ubuntu2.1 [64.6 kB]
#12 55.51 Get:239 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libevent-openssl-2.1-7t64 amd64 2.1.12-stable-9ubuntu2.1 [15.7 kB]
#12 55.61 Get:240 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libevent-dev amd64 2.1.12-stable-9ubuntu2.1 [274 kB]
#12 56.24 Get:241 http://archive.ubuntu.com/ubuntu noble/universe amd64 libpmix-dev amd64 5.0.1-4.1build1 [4018 kB]
#12 57.57 Get:242 http://archive.ubuntu.com/ubuntu noble/main amd64 libjs-jquery all 3.6.1+dfsg+~3.5.14-1 [328 kB]
#12 57.71 Get:243 http://archive.ubuntu.com/ubuntu noble/universe amd64 libjs-jquery-ui all 1.13.2+dfsg-1 [252 kB]
#12 58.25 Get:244 http://archive.ubuntu.com/ubuntu noble/universe amd64 openmpi-bin amd64 4.1.6-7ubuntu2 [114 kB]
#12 62.86 Get:245 http://archive.ubuntu.com/ubuntu noble/universe amd64 libopenmpi-dev amd64 4.1.6-7ubuntu2 [864 kB]
#12 63.51 Get:246 http://archive.ubuntu.com/ubuntu noble/universe amd64 mpi-default-dev amd64 1.15build1 [3154 B]
#12 63.60 Get:247 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-mpi1.83-dev amd64 1.83.0-2.1ubuntu3.2 [296 kB]
#12 64.19 Get:248 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-mpi-dev amd64 1.83.0.1ubuntu2 [4144 B]
#12 64.58 Get:249 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-python1.83.0 amd64 1.83.0-2.1ubuntu3.2 [312 kB]
#12 65.17 Get:250 http://archive.ubuntu.com/ubuntu noble/universe amd64 mpi-default-bin amd64 1.15build1 [2376 B]
#12 65.26 Get:251 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-mpi-python1.83.0 amd64 1.83.0-2.1ubuntu3.2 [362 kB]
#12 65.54 Get:252 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-mpi-python1.83-dev amd64 1.83.0-2.1ubuntu3.2 [237 kB]
#12 65.73 Get:253 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-mpi-python-dev amd64 1.83.0.1ubuntu2 [4196 B]
#12 68.25 Get:254 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-numpy1.83.0 amd64 1.83.0-2.1ubuntu3.2 [242 kB]
#12 69.18 Get:255 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-numpy1.83-dev amd64 1.83.0-2.1ubuntu3.2 [247 kB]
#12 69.69 Get:256 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-numpy-dev amd64 1.83.0.1ubuntu2 [4100 B]
#12 69.79 Get:257 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-program-options1.83.0 amd64 1.83.0-2.1ubuntu3.2 [321 kB]
#12 70.31 Get:258 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-program-options1.83-dev amd64 1.83.0-2.1ubuntu3.2 [388 kB]
#12 70.81 Get:259 http://archive.ubuntu.com/ubuntu noble/main amd64 libboost-program-options-dev amd64 1.83.0.1ubuntu2 [4086 B]
#12 71.03 Get:260 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libpython3.12t64 amd64 3.12.3-1ubuntu0.16 [2339 kB]
#12 73.44 Get:261 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libexpat1-dev amd64 2.6.1-2ubuntu0.4 [140 kB]
#12 73.66 Get:262 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libpython3.12-dev amd64 3.12.3-1ubuntu0.16 [5683 kB]
#12 78.68 Get:263 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libpython3-dev amd64 3.12.3-0ubuntu2.1 [10.3 kB]
#12 78.77 Get:264 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 python3.12-dev amd64 3.12.3-1ubuntu0.16 [498 kB]
#12 79.77 Get:265 http://archive.ubuntu.com/ubuntu noble/main amd64 libjs-underscore all 1.13.4~dfsg+~1.11.4-3 [118 kB]
#12 80.26 Get:266 http://archive.ubuntu.com/ubuntu noble/main amd64 libjs-sphinxdoc all 7.2.6-6 [149 kB]
#12 80.56 Get:267 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 python3-dev amd64 3.12.3-0ubuntu2.1 [26.7 kB]
#12 81.28 Get:268 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-python1.83-dev amd64 1.83.0-2.1ubuntu3.2 [337 kB]
#12 84.18 Get:269 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-python-dev amd64 1.83.0.1ubuntu2 [4344 B]
#12 84.28 Get:270 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-random1.83.0 amd64 1.83.0-2.1ubuntu3.2 [242 kB]
#12 84.67 Get:271 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-random1.83-dev amd64 1.83.0-2.1ubuntu3.2 [241 kB]
#12 85.12 Get:272 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-random-dev amd64 1.83.0.1ubuntu2 [4062 B]
#12 85.85 Get:273 http://archive.ubuntu.com/ubuntu noble/main amd64 libboost-regex-dev amd64 1.83.0.1ubuntu2 [4324 B]
#12 85.95 Get:274 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-serialization-dev amd64 1.83.0.1ubuntu2 [4280 B]
#12 86.63 Get:275 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-stacktrace1.83.0 amd64 1.83.0-2.1ubuntu3.2 [290 kB]
#12 87.09 Get:276 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-stacktrace1.83-dev amd64 1.83.0-2.1ubuntu3.2 [247 kB]
#12 87.51 Get:277 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-stacktrace-dev amd64 1.83.0.1ubuntu2 [4068 B]
#12 87.61 Get:278 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-system-dev amd64 1.83.0.1ubuntu2 [4206 B]
#12 87.70 Get:279 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-test-dev amd64 1.83.0.1ubuntu2 [4090 B]
#12 88.97 Get:280 http://archive.ubuntu.com/ubuntu noble/main amd64 libboost-thread-dev amd64 1.83.0.1ubuntu2 [4088 B]
#12 89.36 Get:281 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-timer1.83.0 amd64 1.83.0-2.1ubuntu3.2 [241 kB]
#12 89.78 Get:282 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-timer1.83-dev amd64 1.83.0-2.1ubuntu3.2 [237 kB]
#12 90.48 Get:283 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-timer-dev amd64 1.83.0.1ubuntu2 [4190 B]
#12 90.58 Get:284 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-type-erasure1.83.0 amd64 1.83.0-2.1ubuntu3.2 [246 kB]
#12 91.53 Get:285 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-type-erasure1.83-dev amd64 1.83.0-2.1ubuntu3.2 [250 kB]
#12 91.95 Get:286 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-type-erasure-dev amd64 1.83.0.1ubuntu2 [4162 B]
#12 92.64 Get:287 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libboost-url1.83.0 amd64 1.83.0-2.1ubuntu3.2 [343 kB]
#12 93.04 Get:288 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-url1.83-dev amd64 1.83.0-2.1ubuntu3.2 [444 kB]
#12 93.53 Get:289 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-url-dev amd64 1.83.0.1ubuntu2 [4192 B]
#12 93.92 Get:290 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-wave1.83.0 amd64 1.83.0-2.1ubuntu3.2 [454 kB]
#12 94.42 Get:291 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-wave1.83-dev amd64 1.83.0-2.1ubuntu3.2 [499 kB]
#12 95.04 Get:292 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-wave-dev amd64 1.83.0.1ubuntu2 [4096 B]
#12 95.73 Get:293 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-nowide1.83.0 amd64 1.83.0-2.1ubuntu3.2 [240 kB]
#12 96.10 Get:294 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 libboost-nowide1.83-dev amd64 1.83.0-2.1ubuntu3.2 [236 kB]
#12 96.37 Get:295 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-nowide-dev amd64 1.83.0.1ubuntu2 [4136 B]
#12 96.46 Get:296 http://archive.ubuntu.com/ubuntu noble/universe amd64 libboost-all-dev amd64 1.83.0.1ubuntu2 [2286 B]
#12 96.55 Get:297 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libncurses-dev amd64 6.4+20240113-1ubuntu2.2 [384 kB]
#12 97.01 Get:298 http://archive.ubuntu.com/ubuntu noble/main amd64 libpkgconf3 amd64 1.8.1-2build1 [30.7 kB]
#12 97.52 Get:299 http://archive.ubuntu.com/ubuntu noble/main amd64 libreadline-dev amd64 8.2-4build1 [167 kB]
#12 98.01 Get:300 http://archive.ubuntu.com/ubuntu noble/universe amd64 ninja-build amd64 1.11.1-2 [129 kB]
#12 98.73 Get:301 http://archive.ubuntu.com/ubuntu noble/main amd64 pkgconf-bin amd64 1.8.1-2build1 [20.7 kB]
#12 98.83 Get:302 http://archive.ubuntu.com/ubuntu noble/main amd64 pkgconf amd64 1.8.1-2build1 [16.8 kB]
#12 98.92 Get:303 http://archive.ubuntu.com/ubuntu noble/main amd64 pkg-config amd64 1.8.1-2build1 [7264 B]
#12 99.05 debconf: delaying package configuration, since apt-utils is not installed
#12 99.07 Fetched 269 MB in 1min 31s (2966 kB/s)
#12 99.09 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 4381 files and directories currently installed.)
#12 99.09 Preparing to unpack .../ncurses-bin_6.4+20240113-1ubuntu2.2_amd64.deb ...
#12 99.09 Unpacking ncurses-bin (6.4+20240113-1ubuntu2.2) over (6.4+20240113-1ubuntu2.1) ...
#12 99.12 Setting up ncurses-bin (6.4+20240113-1ubuntu2.2) ...
#12 99.13 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 4381 files and directories currently installed.)
#12 99.14 Preparing to unpack .../perl-base_5.38.2-3.2ubuntu0.4_amd64.deb ...
#12 99.15 Unpacking perl-base (5.38.2-3.2ubuntu0.4) over (5.38.2-3.2ubuntu0.3) ...
#12 99.67 Setting up perl-base (5.38.2-3.2ubuntu0.4) ...
#12 99.68 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 4381 files and directories currently installed.)
#12 99.69 Preparing to unpack .../ncurses-base_6.4+20240113-1ubuntu2.2_all.deb ...
#12 99.69 Unpacking ncurses-base (6.4+20240113-1ubuntu2.2) over (6.4+20240113-1ubuntu2.1) ...
#12 99.74 Setting up ncurses-base (6.4+20240113-1ubuntu2.2) ...
#12 99.76 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 4381 files and directories currently installed.)
#12 99.77 Preparing to unpack .../libssl3t64_3.0.13-0ubuntu3.15_amd64.deb ...
#12 99.77 Unpacking libssl3t64:amd64 (3.0.13-0ubuntu3.15) over (3.0.13-0ubuntu3.12) ...
#12 99.82 Setting up libssl3t64:amd64 (3.0.13-0ubuntu3.15) ...
#12 99.84 Selecting previously unselected package libpython3.12-minimal:amd64.
#12 99.84 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 4381 files and directories currently installed.)
#12 99.84 Preparing to unpack .../libpython3.12-minimal_3.12.3-1ubuntu0.16_amd64.deb ...
#12 99.84 Unpacking libpython3.12-minimal:amd64 (3.12.3-1ubuntu0.16) ...
#12 99.91 Selecting previously unselected package libexpat1:amd64.
#12 99.91 Preparing to unpack .../libexpat1_2.6.1-2ubuntu0.4_amd64.deb ...
#12 99.92 Unpacking libexpat1:amd64 (2.6.1-2ubuntu0.4) ...
#12 99.93 Preparing to unpack .../zlib1g_1%3a1.3.dfsg-3.1ubuntu2.2_amd64.deb ...
#12 99.93 Unpacking zlib1g:amd64 (1:1.3.dfsg-3.1ubuntu2.2) over (1:1.3.dfsg-3.1ubuntu2.1) ...
#12 99.95 Setting up zlib1g:amd64 (1:1.3.dfsg-3.1ubuntu2.2) ...
#12 99.97 Selecting previously unselected package python3.12-minimal.
#12 99.97 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 4689 files and directories currently installed.)
#12 99.97 Preparing to unpack .../python3.12-minimal_3.12.3-1ubuntu0.16_amd64.deb ...
#12 100.0 Unpacking python3.12-minimal (3.12.3-1ubuntu0.16) ...
#12 100.0 Setting up libpython3.12-minimal:amd64 (3.12.3-1ubuntu0.16) ...
#12 100.1 Setting up libexpat1:amd64 (2.6.1-2ubuntu0.4) ...
#12 100.1 Setting up python3.12-minimal (3.12.3-1ubuntu0.16) ...
#12 100.8 Selecting previously unselected package python3-minimal.
#12 100.8 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 4700 files and directories currently installed.)
#12 100.9 Preparing to unpack .../python3-minimal_3.12.3-0ubuntu2.1_amd64.deb ...
#12 100.9 Unpacking python3-minimal (3.12.3-0ubuntu2.1) ...
#12 100.9 Selecting previously unselected package media-types.
#12 100.9 Preparing to unpack .../media-types_10.1.0_all.deb ...
#12 100.9 Unpacking media-types (10.1.0) ...
#12 100.9 Selecting previously unselected package netbase.
#12 100.9 Preparing to unpack .../archives/netbase_6.4_all.deb ...
#12 100.9 Unpacking netbase (6.4) ...
#12 100.9 Selecting previously unselected package tzdata.
#12 100.9 Preparing to unpack .../tzdata_2026c-0ubuntu0.24.04.1_all.deb ...
#12 100.9 Unpacking tzdata (2026c-0ubuntu0.24.04.1) ...
#12 101.0 Preparing to unpack .../libbz2-1.0_1.0.8-5.1ubuntu0.1_amd64.deb ...
#12 101.0 Unpacking libbz2-1.0:amd64 (1.0.8-5.1ubuntu0.1) over (1.0.8-5.1build0.1) ...
#12 101.0 Setting up libbz2-1.0:amd64 (1.0.8-5.1ubuntu0.1) ...
#12 101.1 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 5263 files and directories currently installed.)
#12 101.1 Preparing to unpack .../libncursesw6_6.4+20240113-1ubuntu2.2_amd64.deb ...
#12 101.1 Unpacking libncursesw6:amd64 (6.4+20240113-1ubuntu2.2) over (6.4+20240113-1ubuntu2.1) ...
#12 101.1 Preparing to unpack .../libtinfo6_6.4+20240113-1ubuntu2.2_amd64.deb ...
#12 101.1 Unpacking libtinfo6:amd64 (6.4+20240113-1ubuntu2.2) over (6.4+20240113-1ubuntu2.1) ...
#12 101.1 Setting up libtinfo6:amd64 (6.4+20240113-1ubuntu2.2) ...
#12 101.1 Selecting previously unselected package readline-common.
#12 101.1 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 5263 files and directories currently installed.)
#12 101.1 Preparing to unpack .../0-readline-common_8.2-4build1_all.deb ...
#12 101.1 Unpacking readline-common (8.2-4build1) ...
#12 101.1 Selecting previously unselected package libreadline8t64:amd64.
#12 101.2 Preparing to unpack .../1-libreadline8t64_8.2-4build1_amd64.deb ...
#12 101.2 Adding 'diversion of /lib/x86_64-linux-gnu/libhistory.so.8 to /lib/x86_64-linux-gnu/libhistory.so.8.usr-is-merged by libreadline8t64'
#12 101.2 Adding 'diversion of /lib/x86_64-linux-gnu/libhistory.so.8.2 to /lib/x86_64-linux-gnu/libhistory.so.8.2.usr-is-merged by libreadline8t64'
#12 101.2 Adding 'diversion of /lib/x86_64-linux-gnu/libreadline.so.8 to /lib/x86_64-linux-gnu/libreadline.so.8.usr-is-merged by libreadline8t64'
#12 101.2 Adding 'diversion of /lib/x86_64-linux-gnu/libreadline.so.8.2 to /lib/x86_64-linux-gnu/libreadline.so.8.2.usr-is-merged by libreadline8t64'
#12 101.2 Unpacking libreadline8t64:amd64 (8.2-4build1) ...
#12 101.2 Selecting previously unselected package libsqlite3-0:amd64.
#12 101.2 Preparing to unpack .../2-libsqlite3-0_3.45.1-1ubuntu2.7_amd64.deb ...
#12 101.2 Unpacking libsqlite3-0:amd64 (3.45.1-1ubuntu2.7) ...
#12 101.2 Selecting previously unselected package libpython3.12-stdlib:amd64.
#12 101.2 Preparing to unpack .../3-libpython3.12-stdlib_3.12.3-1ubuntu0.16_amd64.deb ...
#12 101.2 Unpacking libpython3.12-stdlib:amd64 (3.12.3-1ubuntu0.16) ...
#12 101.3 Selecting previously unselected package python3.12.
#12 101.3 Preparing to unpack .../4-python3.12_3.12.3-1ubuntu0.16_amd64.deb ...
#12 101.3 Unpacking python3.12 (3.12.3-1ubuntu0.16) ...
#12 101.3 Selecting previously unselected package libpython3-stdlib:amd64.
#12 101.3 Preparing to unpack .../5-libpython3-stdlib_3.12.3-0ubuntu2.1_amd64.deb ...
#12 101.3 Unpacking libpython3-stdlib:amd64 (3.12.3-0ubuntu2.1) ...
#12 101.3 Setting up python3-minimal (3.12.3-0ubuntu2.1) ...
#12 101.4 Selecting previously unselected package python3.
#12 101.4 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 5706 files and directories currently installed.)
#12 101.5 Preparing to unpack .../0-python3_3.12.3-0ubuntu2.1_amd64.deb ...
#12 101.5 Unpacking python3 (3.12.3-0ubuntu2.1) ...
#12 101.5 Selecting previously unselected package perl-modules-5.38.
#12 101.5 Preparing to unpack .../1-perl-modules-5.38_5.38.2-3.2ubuntu0.4_all.deb ...
#12 101.5 Unpacking perl-modules-5.38 (5.38.2-3.2ubuntu0.4) ...
#12 101.7 Selecting previously unselected package libgdbm6t64:amd64.
#12 101.7 Preparing to unpack .../2-libgdbm6t64_1.23-5.1build1_amd64.deb ...
#12 101.7 Unpacking libgdbm6t64:amd64 (1.23-5.1build1) ...
#12 101.8 Selecting previously unselected package libgdbm-compat4t64:amd64.
#12 101.8 Preparing to unpack .../3-libgdbm-compat4t64_1.23-5.1build1_amd64.deb ...
#12 101.8 Unpacking libgdbm-compat4t64:amd64 (1.23-5.1build1) ...
#12 101.8 Selecting previously unselected package libperl5.38t64:amd64.
#12 101.8 Preparing to unpack .../4-libperl5.38t64_5.38.2-3.2ubuntu0.4_amd64.deb ...
#12 101.8 Unpacking libperl5.38t64:amd64 (5.38.2-3.2ubuntu0.4) ...
#12 101.9 Selecting previously unselected package perl.
#12 101.9 Preparing to unpack .../5-perl_5.38.2-3.2ubuntu0.4_amd64.deb ...
#12 101.9 Unpacking perl (5.38.2-3.2ubuntu0.4) ...
#12 102.0 Selecting previously unselected package adduser.
#12 102.0 Preparing to unpack .../6-adduser_3.137ubuntu1_all.deb ...
#12 102.0 Unpacking adduser (3.137ubuntu1) ...
#12 102.0 Setting up adduser (3.137ubuntu1) ...
#12 102.0 Selecting previously unselected package openssl.
#12 102.0 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 7787 files and directories currently installed.)
#12 102.0 Preparing to unpack .../000-openssl_3.0.13-0ubuntu3.15_amd64.deb ...
#12 102.0 Unpacking openssl (3.0.13-0ubuntu3.15) ...
#12 102.1 Selecting previously unselected package ca-certificates.
#12 102.1 Preparing to unpack .../001-ca-certificates_20260601~24.04.1_all.deb ...
#12 102.1 Unpacking ca-certificates (20260601~24.04.1) ...
#12 102.1 Selecting previously unselected package libbsd0:amd64.
#12 102.1 Preparing to unpack .../002-libbsd0_0.12.1-1build1.1_amd64.deb ...
#12 102.1 Unpacking libbsd0:amd64 (0.12.1-1build1.1) ...
#12 102.1 Selecting previously unselected package libelf1t64:amd64.
#12 102.1 Preparing to unpack .../003-libelf1t64_0.190-1.1ubuntu0.1_amd64.deb ...
#12 102.1 Unpacking libelf1t64:amd64 (0.190-1.1ubuntu0.1) ...
#12 102.1 Selecting previously unselected package libkrb5support0:amd64.
#12 102.1 Preparing to unpack .../004-libkrb5support0_1.20.1-6ubuntu2.8_amd64.deb ...
#12 102.1 Unpacking libkrb5support0:amd64 (1.20.1-6ubuntu2.8) ...
#12 102.2 Selecting previously unselected package libk5crypto3:amd64.
#12 102.2 Preparing to unpack .../005-libk5crypto3_1.20.1-6ubuntu2.8_amd64.deb ...
#12 102.2 Unpacking libk5crypto3:amd64 (1.20.1-6ubuntu2.8) ...
#12 102.2 Selecting previously unselected package libkeyutils1:amd64.
#12 102.2 Preparing to unpack .../006-libkeyutils1_1.6.3-3build1_amd64.deb ...
#12 102.2 Unpacking libkeyutils1:amd64 (1.6.3-3build1) ...
#12 102.2 Selecting previously unselected package libkrb5-3:amd64.
#12 102.2 Preparing to unpack .../007-libkrb5-3_1.20.1-6ubuntu2.8_amd64.deb ...
#12 102.2 Unpacking libkrb5-3:amd64 (1.20.1-6ubuntu2.8) ...
#12 102.2 Selecting previously unselected package libgssapi-krb5-2:amd64.
#12 102.2 Preparing to unpack .../008-libgssapi-krb5-2_1.20.1-6ubuntu2.8_amd64.deb ...
#12 102.2 Unpacking libgssapi-krb5-2:amd64 (1.20.1-6ubuntu2.8) ...
#12 102.2 Selecting previously unselected package libicu74:amd64.
#12 102.2 Preparing to unpack .../009-libicu74_74.2-1ubuntu3.1_amd64.deb ...
#12 102.2 Unpacking libicu74:amd64 (74.2-1ubuntu3.1) ...
#12 102.4 Selecting previously unselected package libxml2:amd64.
#12 102.4 Preparing to unpack .../010-libxml2_2.9.14+dfsg-1.3ubuntu3.8_amd64.deb ...
#12 102.4 Unpacking libxml2:amd64 (2.9.14+dfsg-1.3ubuntu3.8) ...
#12 102.4 Selecting previously unselected package libnl-3-200:amd64.
#12 102.4 Preparing to unpack .../011-libnl-3-200_3.7.0-0.3build1.1_amd64.deb ...
#12 102.4 Unpacking libnl-3-200:amd64 (3.7.0-0.3build1.1) ...
#12 102.4 Selecting previously unselected package libnl-route-3-200:amd64.
#12 102.4 Preparing to unpack .../012-libnl-route-3-200_3.7.0-0.3build1.1_amd64.deb ...
#12 102.4 Unpacking libnl-route-3-200:amd64 (3.7.0-0.3build1.1) ...
#12 102.4 Selecting previously unselected package libibverbs1:amd64.
#12 102.4 Preparing to unpack .../013-libibverbs1_50.0-2ubuntu0.2_amd64.deb ...
#12 102.4 Unpacking libibverbs1:amd64 (50.0-2ubuntu0.2) ...
#12 102.5 Selecting previously unselected package ibverbs-providers:amd64.
#12 102.5 Preparing to unpack .../014-ibverbs-providers_50.0-2ubuntu0.2_amd64.deb ...
#12 102.5 Unpacking ibverbs-providers:amd64 (50.0-2ubuntu0.2) ...
#12 102.5 Selecting previously unselected package libcbor0.10:amd64.
#12 102.5 Preparing to unpack .../015-libcbor0.10_0.10.2-1.2ubuntu2_amd64.deb ...
#12 102.5 Unpacking libcbor0.10:amd64 (0.10.2-1.2ubuntu2) ...
#12 102.5 Selecting previously unselected package libdrm-common.
#12 102.5 Preparing to unpack .../016-libdrm-common_2.4.125-1ubuntu0.1~24.04.2_all.deb ...
#12 102.5 Unpacking libdrm-common (2.4.125-1ubuntu0.1~24.04.2) ...
#12 102.5 Selecting previously unselected package libdrm2:amd64.
#12 102.5 Preparing to unpack .../017-libdrm2_2.4.125-1ubuntu0.1~24.04.2_amd64.deb ...
#12 102.5 Unpacking libdrm2:amd64 (2.4.125-1ubuntu0.1~24.04.2) ...
#12 102.5 Selecting previously unselected package libedit2:amd64.
#12 102.5 Preparing to unpack .../018-libedit2_3.1-20230828-1build1_amd64.deb ...
#12 102.5 Unpacking libedit2:amd64 (3.1-20230828-1build1) ...
#12 102.6 Selecting previously unselected package libfido2-1:amd64.
#12 102.6 Preparing to unpack .../019-libfido2-1_1.14.0-1build3_amd64.deb ...
#12 102.6 Unpacking libfido2-1:amd64 (1.14.0-1build3) ...
#12 102.6 Selecting previously unselected package libjansson4:amd64.
#12 102.6 Preparing to unpack .../020-libjansson4_2.14-2build2_amd64.deb ...
#12 102.6 Unpacking libjansson4:amd64 (2.14-2build2) ...
#12 102.6 Selecting previously unselected package libncurses6:amd64.
#12 102.6 Preparing to unpack .../021-libncurses6_6.4+20240113-1ubuntu2.2_amd64.deb ...
#12 102.6 Unpacking libncurses6:amd64 (6.4+20240113-1ubuntu2.2) ...
#12 102.6 Selecting previously unselected package libnghttp2-14:amd64.
#12 102.6 Preparing to unpack .../022-libnghttp2-14_1.59.0-1ubuntu0.4_amd64.deb ...
#12 102.6 Unpacking libnghttp2-14:amd64 (1.59.0-1ubuntu0.4) ...
#12 102.6 Selecting previously unselected package libnuma1:amd64.
#12 102.6 Preparing to unpack .../023-libnuma1_2.0.18-1ubuntu0.24.04.1_amd64.deb ...
#12 102.6 Unpacking libnuma1:amd64 (2.0.18-1ubuntu0.24.04.1) ...
#12 102.6 Selecting previously unselected package libpsl5t64:amd64.
#12 102.6 Preparing to unpack .../024-libpsl5t64_0.21.2-1.1build1_amd64.deb ...
#12 102.6 Unpacking libpsl5t64:amd64 (0.21.2-1.1build1) ...
#12 102.6 Selecting previously unselected package libuv1t64:amd64.
#12 102.6 Preparing to unpack .../025-libuv1t64_1.48.0-1.1build1_amd64.deb ...
#12 102.7 Unpacking libuv1t64:amd64 (1.48.0-1.1build1) ...
#12 102.7 Selecting previously unselected package libxau6:amd64.
#12 102.7 Preparing to unpack .../026-libxau6_1%3a1.0.9-1build6_amd64.deb ...
#12 102.7 Unpacking libxau6:amd64 (1:1.0.9-1build6) ...
#12 102.7 Selecting previously unselected package libxdmcp6:amd64.
#12 102.7 Preparing to unpack .../027-libxdmcp6_1%3a1.1.3-0ubuntu6_amd64.deb ...
#12 102.7 Unpacking libxdmcp6:amd64 (1:1.1.3-0ubuntu6) ...
#12 102.7 Selecting previously unselected package libxcb1:amd64.
#12 102.7 Preparing to unpack .../028-libxcb1_1.15-1ubuntu2_amd64.deb ...
#12 102.7 Unpacking libxcb1:amd64 (1.15-1ubuntu2) ...
#12 102.7 Selecting previously unselected package libx11-data.
#12 102.7 Preparing to unpack .../029-libx11-data_2%3a1.8.7-1build1_all.deb ...
#12 102.7 Unpacking libx11-data (2:1.8.7-1build1) ...
#12 102.8 Selecting previously unselected package libx11-6:amd64.
#12 102.8 Preparing to unpack .../030-libx11-6_2%3a1.8.7-1build1_amd64.deb ...
#12 102.8 Unpacking libx11-6:amd64 (2:1.8.7-1build1) ...
#12 102.8 Selecting previously unselected package libxext6:amd64.
#12 102.8 Preparing to unpack .../031-libxext6_2%3a1.3.4-1build2_amd64.deb ...
#12 102.8 Unpacking libxext6:amd64 (2:1.3.4-1build2) ...
#12 102.8 Selecting previously unselected package openssh-client.
#12 102.8 Preparing to unpack .../032-openssh-client_1%3a9.6p1-3ubuntu13.19_amd64.deb ...
#12 102.8 Unpacking openssh-client (1:9.6p1-3ubuntu13.19) ...
#12 102.8 Selecting previously unselected package xz-utils.
#12 102.8 Preparing to unpack .../033-xz-utils_5.6.1+really5.4.5-1ubuntu0.3_amd64.deb ...
#12 102.8 Unpacking xz-utils (5.6.1+really5.4.5-1ubuntu0.3) ...
#12 102.9 Selecting previously unselected package m4.
#12 102.9 Preparing to unpack .../034-m4_1.4.19-4build1_amd64.deb ...
#12 102.9 Unpacking m4 (1.4.19-4build1) ...
#12 102.9 Selecting previously unselected package autoconf.
#12 102.9 Preparing to unpack .../035-autoconf_2.71-3_all.deb ...
#12 102.9 Unpacking autoconf (2.71-3) ...
#12 102.9 Selecting previously unselected package autotools-dev.
#12 102.9 Preparing to unpack .../036-autotools-dev_20220109.1_all.deb ...
#12 102.9 Unpacking autotools-dev (20220109.1) ...
#12 102.9 Selecting previously unselected package automake.
#12 102.9 Preparing to unpack .../037-automake_1%3a1.16.5-1.3ubuntu1_all.deb ...
#12 102.9 Unpacking automake (1:1.16.5-1.3ubuntu1) ...
#12 103.0 Selecting previously unselected package binutils-common:amd64.
#12 103.0 Preparing to unpack .../038-binutils-common_2.42-4ubuntu2.10_amd64.deb ...
#12 103.0 Unpacking binutils-common:amd64 (2.42-4ubuntu2.10) ...
#12 103.0 Selecting previously unselected package libsframe1:amd64.
#12 103.0 Preparing to unpack .../039-libsframe1_2.42-4ubuntu2.10_amd64.deb ...
#12 103.0 Unpacking libsframe1:amd64 (2.42-4ubuntu2.10) ...
#12 103.0 Selecting previously unselected package libbinutils:amd64.
#12 103.0 Preparing to unpack .../040-libbinutils_2.42-4ubuntu2.10_amd64.deb ...
#12 103.0 Unpacking libbinutils:amd64 (2.42-4ubuntu2.10) ...
#12 103.0 Selecting previously unselected package libctf-nobfd0:amd64.
#12 103.0 Preparing to unpack .../041-libctf-nobfd0_2.42-4ubuntu2.10_amd64.deb ...
#12 103.0 Unpacking libctf-nobfd0:amd64 (2.42-4ubuntu2.10) ...
#12 103.0 Selecting previously unselected package libctf0:amd64.
#12 103.0 Preparing to unpack .../042-libctf0_2.42-4ubuntu2.10_amd64.deb ...
#12 103.0 Unpacking libctf0:amd64 (2.42-4ubuntu2.10) ...
#12 103.1 Selecting previously unselected package libgprofng0:amd64.
#12 103.1 Preparing to unpack .../043-libgprofng0_2.42-4ubuntu2.10_amd64.deb ...
#12 103.1 Unpacking libgprofng0:amd64 (2.42-4ubuntu2.10) ...
#12 103.1 Selecting previously unselected package binutils-x86-64-linux-gnu.
#12 103.1 Preparing to unpack .../044-binutils-x86-64-linux-gnu_2.42-4ubuntu2.10_amd64.deb ...
#12 103.1 Unpacking binutils-x86-64-linux-gnu (2.42-4ubuntu2.10) ...
#12 103.2 Selecting previously unselected package binutils.
#12 103.2 Preparing to unpack .../045-binutils_2.42-4ubuntu2.10_amd64.deb ...
#12 103.2 Unpacking binutils (2.42-4ubuntu2.10) ...
#12 103.2 Selecting previously unselected package libc-dev-bin.
#12 103.2 Preparing to unpack .../046-libc-dev-bin_2.39-0ubuntu8.8_amd64.deb ...
#12 103.2 Unpacking libc-dev-bin (2.39-0ubuntu8.8) ...
#12 103.2 Selecting previously unselected package linux-libc-dev:amd64.
#12 103.2 Preparing to unpack .../047-linux-libc-dev_6.8.0-139.139_amd64.deb ...
#12 103.2 Unpacking linux-libc-dev:amd64 (6.8.0-139.139) ...
#12 103.4 Selecting previously unselected package libcrypt-dev:amd64.
#12 103.4 Preparing to unpack .../048-libcrypt-dev_1%3a4.4.36-4build1_amd64.deb ...
#12 103.4 Unpacking libcrypt-dev:amd64 (1:4.4.36-4build1) ...
#12 103.4 Selecting previously unselected package rpcsvc-proto.
#12 103.4 Preparing to unpack .../049-rpcsvc-proto_1.4.2-0ubuntu7_amd64.deb ...
#12 103.4 Unpacking rpcsvc-proto (1.4.2-0ubuntu7) ...
#12 103.4 Selecting previously unselected package libc6-dev:amd64.
#12 103.4 Preparing to unpack .../050-libc6-dev_2.39-0ubuntu8.8_amd64.deb ...
#12 103.4 Unpacking libc6-dev:amd64 (2.39-0ubuntu8.8) ...
#12 103.6 Selecting previously unselected package gcc-13-base:amd64.
#12 103.6 Preparing to unpack .../051-gcc-13-base_13.3.0-6ubuntu2~24.04.1_amd64.deb ...
#12 103.6 Unpacking gcc-13-base:amd64 (13.3.0-6ubuntu2~24.04.1) ...
#12 103.6 Selecting previously unselected package libisl23:amd64.
#12 103.6 Preparing to unpack .../052-libisl23_0.26-3build1.1_amd64.deb ...
#12 103.6 Unpacking libisl23:amd64 (0.26-3build1.1) ...
#12 103.6 Selecting previously unselected package libmpfr6:amd64.
#12 103.6 Preparing to unpack .../053-libmpfr6_4.2.1-1build1.1_amd64.deb ...
#12 103.6 Unpacking libmpfr6:amd64 (4.2.1-1build1.1) ...
#12 103.6 Selecting previously unselected package libmpc3:amd64.
#12 103.6 Preparing to unpack .../054-libmpc3_1.3.1-1build1.1_amd64.deb ...
#12 103.6 Unpacking libmpc3:amd64 (1.3.1-1build1.1) ...
#12 103.6 Selecting previously unselected package cpp-13-x86-64-linux-gnu.
#12 103.7 Preparing to unpack .../055-cpp-13-x86-64-linux-gnu_13.3.0-6ubuntu2~24.04.1_amd64.deb ...
#12 103.7 Unpacking cpp-13-x86-64-linux-gnu (13.3.0-6ubuntu2~24.04.1) ...
#12 103.8 Selecting previously unselected package cpp-13.
#12 103.8 Preparing to unpack .../056-cpp-13_13.3.0-6ubuntu2~24.04.1_amd64.deb ...
#12 103.8 Unpacking cpp-13 (13.3.0-6ubuntu2~24.04.1) ...
#12 103.8 Selecting previously unselected package cpp-x86-64-linux-gnu.
#12 103.8 Preparing to unpack .../057-cpp-x86-64-linux-gnu_4%3a13.2.0-7ubuntu1_amd64.deb ...
#12 103.8 Unpacking cpp-x86-64-linux-gnu (4:13.2.0-7ubuntu1) ...
#12 103.8 Selecting previously unselected package cpp.
#12 103.8 Preparing to unpack .../058-cpp_4%3a13.2.0-7ubuntu1_amd64.deb ...
#12 103.8 Unpacking cpp (4:13.2.0-7ubuntu1) ...
#12 103.8 Selecting previously unselected package libcc1-0:amd64.
#12 103.8 Preparing to unpack .../059-libcc1-0_14.2.0-4ubuntu2~24.04.1_amd64.deb ...
#12 103.8 Unpacking libcc1-0:amd64 (14.2.0-4ubuntu2~24.04.1) ...
#12 103.8 Selecting previously unselected package libgomp1:amd64.
#12 103.8 Preparing to unpack .../060-libgomp1_14.2.0-4ubuntu2~24.04.1_amd64.deb ...
#12 103.8 Unpacking libgomp1:amd64 (14.2.0-4ubuntu2~24.04.1) ...
#12 103.9 Selecting previously unselected package libitm1:amd64.
#12 103.9 Preparing to unpack .../061-libitm1_14.2.0-4ubuntu2~24.04.1_amd64.deb ...
#12 103.9 Unpacking libitm1:amd64 (14.2.0-4ubuntu2~24.04.1) ...
#12 103.9 Selecting previously unselected package libatomic1:amd64.
#12 103.9 Preparing to unpack .../062-libatomic1_14.2.0-4ubuntu2~24.04.1_amd64.deb ...
#12 103.9 Unpacking libatomic1:amd64 (14.2.0-4ubuntu2~24.04.1) ...
#12 103.9 Selecting previously unselected package libasan8:amd64.
#12 103.9 Preparing to unpack .../063-libasan8_14.2.0-4ubuntu2~24.04.1_amd64.deb ...
#12 103.9 Unpacking libasan8:amd64 (14.2.0-4ubuntu2~24.04.1) ...
#12 103.9 Selecting previously unselected package liblsan0:amd64.
#12 103.9 Preparing to unpack .../064-liblsan0_14.2.0-4ubuntu2~24.04.1_amd64.deb ...
#12 103.9 Unpacking liblsan0:amd64 (14.2.0-4ubuntu2~24.04.1) ...
#12 104.0 Selecting previously unselected package libtsan2:amd64.
#12 104.0 Preparing to unpack .../065-libtsan2_14.2.0-4ubuntu2~24.04.1_amd64.deb ...
#12 104.0 Unpacking libtsan2:amd64 (14.2.0-4ubuntu2~24.04.1) ...
#12 104.0 Selecting previously unselected package libubsan1:amd64.
#12 104.0 Preparing to unpack .../066-libubsan1_14.2.0-4ubuntu2~24.04.1_amd64.deb ...
#12 104.0 Unpacking libubsan1:amd64 (14.2.0-4ubuntu2~24.04.1) ...
#12 104.1 Selecting previously unselected package libhwasan0:amd64.
#12 104.1 Preparing to unpack .../067-libhwasan0_14.2.0-4ubuntu2~24.04.1_amd64.deb ...
#12 104.1 Unpacking libhwasan0:amd64 (14.2.0-4ubuntu2~24.04.1) ...
#12 104.1 Selecting previously unselected package libquadmath0:amd64.
#12 104.1 Preparing to unpack .../068-libquadmath0_14.2.0-4ubuntu2~24.04.1_amd64.deb ...
#12 104.1 Unpacking libquadmath0:amd64 (14.2.0-4ubuntu2~24.04.1) ...
#12 104.1 Selecting previously unselected package libgcc-13-dev:amd64.
#12 104.1 Preparing to unpack .../069-libgcc-13-dev_13.3.0-6ubuntu2~24.04.1_amd64.deb ...
#12 104.1 Unpacking libgcc-13-dev:amd64 (13.3.0-6ubuntu2~24.04.1) ...
#12 104.2 Selecting previously unselected package gcc-13-x86-64-linux-gnu.
#12 104.2 Preparing to unpack .../070-gcc-13-x86-64-linux-gnu_13.3.0-6ubuntu2~24.04.1_amd64.deb ...
#12 104.2 Unpacking gcc-13-x86-64-linux-gnu (13.3.0-6ubuntu2~24.04.1) ...
#12 104.4 Selecting previously unselected package gcc-13.
#12 104.4 Preparing to unpack .../071-gcc-13_13.3.0-6ubuntu2~24.04.1_amd64.deb ...
#12 104.4 Unpacking gcc-13 (13.3.0-6ubuntu2~24.04.1) ...
#12 104.5 Selecting previously unselected package gcc-x86-64-linux-gnu.
#12 104.5 Preparing to unpack .../072-gcc-x86-64-linux-gnu_4%3a13.2.0-7ubuntu1_amd64.deb ...
#12 104.5 Unpacking gcc-x86-64-linux-gnu (4:13.2.0-7ubuntu1) ...
#12 104.5 Selecting previously unselected package gcc.
#12 104.5 Preparing to unpack .../073-gcc_4%3a13.2.0-7ubuntu1_amd64.deb ...
#12 104.5 Unpacking gcc (4:13.2.0-7ubuntu1) ...
#12 104.5 Selecting previously unselected package libstdc++-13-dev:amd64.
#12 104.5 Preparing to unpack .../074-libstdc++-13-dev_13.3.0-6ubuntu2~24.04.1_amd64.deb ...
#12 104.5 Unpacking libstdc++-13-dev:amd64 (13.3.0-6ubuntu2~24.04.1) ...
#12 104.7 Selecting previously unselected package g++-13-x86-64-linux-gnu.
#12 104.7 Preparing to unpack .../075-g++-13-x86-64-linux-gnu_13.3.0-6ubuntu2~24.04.1_amd64.deb ...
#12 104.7 Unpacking g++-13-x86-64-linux-gnu (13.3.0-6ubuntu2~24.04.1) ...
#12 104.8 Selecting previously unselected package g++-13.
#12 104.8 Preparing to unpack .../076-g++-13_13.3.0-6ubuntu2~24.04.1_amd64.deb ...
#12 104.8 Unpacking g++-13 (13.3.0-6ubuntu2~24.04.1) ...
#12 104.8 Selecting previously unselected package g++-x86-64-linux-gnu.
#12 104.8 Preparing to unpack .../077-g++-x86-64-linux-gnu_4%3a13.2.0-7ubuntu1_amd64.deb ...
#12 104.8 Unpacking g++-x86-64-linux-gnu (4:13.2.0-7ubuntu1) ...
#12 104.8 Selecting previously unselected package g++.
#12 104.8 Preparing to unpack .../078-g++_4%3a13.2.0-7ubuntu1_amd64.deb ...
#12 104.8 Unpacking g++ (4:13.2.0-7ubuntu1) ...
#12 104.9 Selecting previously unselected package make.
#12 104.9 Preparing to unpack .../079-make_4.3-4.1build2_amd64.deb ...
#12 104.9 Unpacking make (4.3-4.1build2) ...
#12 104.9 Selecting previously unselected package libdpkg-perl.
#12 104.9 Preparing to unpack .../080-libdpkg-perl_1.22.6ubuntu6.6_all.deb ...
#12 104.9 Unpacking libdpkg-perl (1.22.6ubuntu6.6) ...
#12 104.9 Selecting previously unselected package bzip2.
#12 104.9 Preparing to unpack .../081-bzip2_1.0.8-5.1ubuntu0.1_amd64.deb ...
#12 104.9 Unpacking bzip2 (1.0.8-5.1ubuntu0.1) ...
#12 104.9 Selecting previously unselected package patch.
#12 104.9 Preparing to unpack .../082-patch_2.7.6-7build3_amd64.deb ...
#12 104.9 Unpacking patch (2.7.6-7build3) ...
#12 105.0 Selecting previously unselected package lto-disabled-list.
#12 105.0 Preparing to unpack .../083-lto-disabled-list_47_all.deb ...
#12 105.0 Unpacking lto-disabled-list (47) ...
#12 105.0 Selecting previously unselected package dpkg-dev.
#12 105.0 Preparing to unpack .../084-dpkg-dev_1.22.6ubuntu6.6_all.deb ...
#12 105.0 Unpacking dpkg-dev (1.22.6ubuntu6.6) ...
#12 105.0 Selecting previously unselected package build-essential.
#12 105.0 Preparing to unpack .../085-build-essential_12.10ubuntu1_amd64.deb ...
#12 105.0 Unpacking build-essential (12.10ubuntu1) ...
#12 105.0 Selecting previously unselected package libhiredis1.1.0:amd64.
#12 105.0 Preparing to unpack .../086-libhiredis1.1.0_1.2.0-6ubuntu3_amd64.deb ...
#12 105.0 Unpacking libhiredis1.1.0:amd64 (1.2.0-6ubuntu3) ...
#12 105.1 Selecting previously unselected package ccache.
#12 105.1 Preparing to unpack .../087-ccache_4.9.1-1_amd64.deb ...
#12 105.1 Unpacking ccache (4.9.1-1) ...
#12 105.1 Selecting previously unselected package libarchive13t64:amd64.
#12 105.1 Preparing to unpack .../088-libarchive13t64_3.7.2-2ubuntu0.8_amd64.deb ...
#12 105.1 Unpacking libarchive13t64:amd64 (3.7.2-2ubuntu0.8) ...
#12 105.1 Selecting previously unselected package libbrotli1:amd64.
#12 105.1 Preparing to unpack .../089-libbrotli1_1.1.0-2build2_amd64.deb ...
#12 105.1 Unpacking libbrotli1:amd64 (1.1.0-2build2) ...
#12 105.1 Selecting previously unselected package libsasl2-modules-db:amd64.
#12 105.1 Preparing to unpack .../090-libsasl2-modules-db_2.1.28+dfsg1-5ubuntu3.1_amd64.deb ...
#12 105.1 Unpacking libsasl2-modules-db:amd64 (2.1.28+dfsg1-5ubuntu3.1) ...
#12 105.1 Selecting previously unselected package libsasl2-2:amd64.
#12 105.1 Preparing to unpack .../091-libsasl2-2_2.1.28+dfsg1-5ubuntu3.1_amd64.deb ...
#12 105.1 Unpacking libsasl2-2:amd64 (2.1.28+dfsg1-5ubuntu3.1) ...
#12 105.2 Selecting previously unselected package libldap2:amd64.
#12 105.2 Preparing to unpack .../092-libldap2_2.6.10+dfsg-0ubuntu0.24.04.1_amd64.deb ...
#12 105.2 Unpacking libldap2:amd64 (2.6.10+dfsg-0ubuntu0.24.04.1) ...
#12 105.2 Selecting previously unselected package librtmp1:amd64.
#12 105.2 Preparing to unpack .../093-librtmp1_2.4+20151223.gitfa8646d.1-2build7_amd64.deb ...
#12 105.2 Unpacking librtmp1:amd64 (2.4+20151223.gitfa8646d.1-2build7) ...
#12 105.2 Selecting previously unselected package libssh-4:amd64.
#12 105.2 Preparing to unpack .../094-libssh-4_0.10.6-2ubuntu0.5_amd64.deb ...
#12 105.2 Unpacking libssh-4:amd64 (0.10.6-2ubuntu0.5) ...
#12 105.2 Selecting previously unselected package libcurl4t64:amd64.
#12 105.2 Preparing to unpack .../095-libcurl4t64_8.5.0-2ubuntu10.13_amd64.deb ...
#12 105.2 Unpacking libcurl4t64:amd64 (8.5.0-2ubuntu10.13) ...
#12 105.2 Selecting previously unselected package libjsoncpp25:amd64.
#12 105.2 Preparing to unpack .../096-libjsoncpp25_1.9.5-6build1_amd64.deb ...
#12 105.2 Unpacking libjsoncpp25:amd64 (1.9.5-6build1) ...
#12 105.2 Selecting previously unselected package librhash0:amd64.
#12 105.2 Preparing to unpack .../097-librhash0_1.4.3-3build1_amd64.deb ...
#12 105.3 Unpacking librhash0:amd64 (1.4.3-3build1) ...
#12 105.3 Selecting previously unselected package cmake-data.
#12 105.3 Preparing to unpack .../098-cmake-data_3.28.3-1build7_all.deb ...
#12 105.3 Unpacking cmake-data (3.28.3-1build7) ...
#12 105.8 Selecting previously unselected package cmake.
#12 105.8 Preparing to unpack .../099-cmake_3.28.3-1build7_amd64.deb ...
#12 105.8 Unpacking cmake (3.28.3-1build7) ...
#12 106.0 Selecting previously unselected package mysql-common.
#12 106.0 Preparing to unpack .../100-mysql-common_5.8+1.1.0build1_all.deb ...
#12 106.0 Unpacking mysql-common (5.8+1.1.0build1) ...
#12 106.0 Selecting previously unselected package libmysqlclient21:amd64.
#12 106.0 Preparing to unpack .../101-libmysqlclient21_8.0.46-0ubuntu0.24.04.4_amd64.deb ...
#12 106.0 Unpacking libmysqlclient21:amd64 (8.0.46-0ubuntu0.24.04.4) ...
#12 106.0 Selecting previously unselected package libssl-dev:amd64.
#12 106.0 Preparing to unpack .../102-libssl-dev_3.0.13-0ubuntu3.15_amd64.deb ...
#12 106.0 Unpacking libssl-dev:amd64 (3.0.13-0ubuntu3.15) ...
#12 106.1 Selecting previously unselected package libzstd-dev:amd64.
#12 106.1 Preparing to unpack .../103-libzstd-dev_1.5.5+dfsg2-2build1.1_amd64.deb ...
#12 106.1 Unpacking libzstd-dev:amd64 (1.5.5+dfsg2-2build1.1) ...
#12 106.1 Selecting previously unselected package zlib1g-dev:amd64.
#12 106.1 Preparing to unpack .../104-zlib1g-dev_1%3a1.3.dfsg-3.1ubuntu2.2_amd64.deb ...
#12 106.1 Unpacking zlib1g-dev:amd64 (1:1.3.dfsg-3.1ubuntu2.2) ...
#12 106.1 Selecting previously unselected package libmysqlclient-dev.
#12 106.1 Preparing to unpack .../105-libmysqlclient-dev_8.0.46-0ubuntu0.24.04.4_amd64.deb ...
#12 106.1 Unpacking libmysqlclient-dev (8.0.46-0ubuntu0.24.04.4) ...
#12 106.2 Selecting previously unselected package default-libmysqlclient-dev:amd64.
#12 106.2 Preparing to unpack .../106-default-libmysqlclient-dev_1.1.0build1_amd64.deb ...
#12 106.2 Unpacking default-libmysqlclient-dev:amd64 (1.1.0build1) ...
#12 106.2 Selecting previously unselected package libgfortran5:amd64.
#12 106.2 Preparing to unpack .../107-libgfortran5_14.2.0-4ubuntu2~24.04.1_amd64.deb ...
#12 106.2 Unpacking libgfortran5:amd64 (14.2.0-4ubuntu2~24.04.1) ...
#12 106.2 Selecting previously unselected package libgfortran-13-dev:amd64.
#12 106.2 Preparing to unpack .../108-libgfortran-13-dev_13.3.0-6ubuntu2~24.04.1_amd64.deb ...
#12 106.2 Unpacking libgfortran-13-dev:amd64 (13.3.0-6ubuntu2~24.04.1) ...
#12 106.3 Selecting previously unselected package gfortran-13-x86-64-linux-gnu.
#12 106.3 Preparing to unpack .../109-gfortran-13-x86-64-linux-gnu_13.3.0-6ubuntu2~24.04.1_amd64.deb ...
#12 106.3 Unpacking gfortran-13-x86-64-linux-gnu (13.3.0-6ubuntu2~24.04.1) ...
#12 106.4 Selecting previously unselected package gfortran-13.
#12 106.4 Preparing to unpack .../110-gfortran-13_13.3.0-6ubuntu2~24.04.1_amd64.deb ...
#12 106.4 Unpacking gfortran-13 (13.3.0-6ubuntu2~24.04.1) ...
#12 106.4 Selecting previously unselected package libcurl3t64-gnutls:amd64.
#12 106.4 Preparing to unpack .../111-libcurl3t64-gnutls_8.5.0-2ubuntu10.13_amd64.deb ...
#12 106.4 Unpacking libcurl3t64-gnutls:amd64 (8.5.0-2ubuntu10.13) ...
#12 106.4 Selecting previously unselected package liberror-perl.
#12 106.4 Preparing to unpack .../112-liberror-perl_0.17029-2_all.deb ...
#12 106.4 Unpacking liberror-perl (0.17029-2) ...
#12 106.4 Selecting previously unselected package git-man.
#12 106.5 Preparing to unpack .../113-git-man_1%3a2.43.0-1ubuntu7.3_all.deb ...
#12 106.5 Unpacking git-man (1:2.43.0-1ubuntu7.3) ...
#12 106.5 Selecting previously unselected package git.
#12 106.5 Preparing to unpack .../114-git_1%3a2.43.0-1ubuntu7.3_amd64.deb ...
#12 106.5 Unpacking git (1:2.43.0-1ubuntu7.3) ...
#12 106.6 Selecting previously unselected package icu-devtools.
#12 106.6 Preparing to unpack .../115-icu-devtools_74.2-1ubuntu3.1_amd64.deb ...
#12 106.6 Unpacking icu-devtools (74.2-1ubuntu3.1) ...
#12 106.6 Selecting previously unselected package libllvm17t64:amd64.
#12 106.6 Preparing to unpack .../116-libllvm17t64_1%3a17.0.6-9ubuntu1_amd64.deb ...
#12 106.6 Unpacking libllvm17t64:amd64 (1:17.0.6-9ubuntu1) ...
#12 107.0 Selecting previously unselected package libamd-comgr2:amd64.
#12 107.0 Preparing to unpack .../117-libamd-comgr2_6.0+git20231212.4510c28+dfsg-3build2_amd64.deb ...
#12 107.0 Unpacking libamd-comgr2:amd64 (6.0+git20231212.4510c28+dfsg-3build2) ...
#12 107.2 Selecting previously unselected package libdrm-amdgpu1:amd64.
#12 107.2 Preparing to unpack .../118-libdrm-amdgpu1_2.4.125-1ubuntu0.1~24.04.2_amd64.deb ...
#12 107.2 Unpacking libdrm-amdgpu1:amd64 (2.4.125-1ubuntu0.1~24.04.2) ...
#12 107.2 Selecting previously unselected package libhsakmt1:amd64.
#12 107.2 Preparing to unpack .../119-libhsakmt1_5.7.0-1build1_amd64.deb ...
#12 107.2 Unpacking libhsakmt1:amd64 (5.7.0-1build1) ...
#12 107.3 Selecting previously unselected package libhsa-runtime64-1.
#12 107.3 Preparing to unpack .../120-libhsa-runtime64-1_5.7.1-2build1_amd64.deb ...
#12 107.3 Unpacking libhsa-runtime64-1 (5.7.1-2build1) ...
#12 107.3 Selecting previously unselected package libamdhip64-5.
#12 107.3 Preparing to unpack .../121-libamdhip64-5_5.7.1-3_amd64.deb ...
#12 107.3 Unpacking libamdhip64-5 (5.7.1-3) ...
#12 107.4 Selecting previously unselected package libboost1.83-dev:amd64.
#12 107.4 Preparing to unpack .../122-libboost1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 107.4 Unpacking libboost1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.1 Selecting previously unselected package libboost-dev:amd64.
#12 110.1 Preparing to unpack .../123-libboost-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 110.1 Unpacking libboost-dev:amd64 (1.83.0.1ubuntu2) ...
#12 110.2 Selecting previously unselected package libboost1.83-tools-dev.
#12 110.2 Preparing to unpack .../124-libboost1.83-tools-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.2 Unpacking libboost1.83-tools-dev (1.83.0-2.1ubuntu3.2) ...
#12 110.2 Selecting previously unselected package libboost-tools-dev.
#12 110.2 Preparing to unpack .../125-libboost-tools-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 110.2 Unpacking libboost-tools-dev (1.83.0.1ubuntu2) ...
#12 110.3 Selecting previously unselected package libboost-atomic1.83.0:amd64.
#12 110.3 Preparing to unpack .../126-libboost-atomic1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.3 Unpacking libboost-atomic1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.3 Selecting previously unselected package libboost-atomic1.83-dev:amd64.
#12 110.3 Preparing to unpack .../127-libboost-atomic1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.3 Unpacking libboost-atomic1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.3 Selecting previously unselected package libboost-atomic-dev:amd64.
#12 110.3 Preparing to unpack .../128-libboost-atomic-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 110.3 Unpacking libboost-atomic-dev:amd64 (1.83.0.1ubuntu2) ...
#12 110.3 Selecting previously unselected package libboost-chrono1.83.0t64:amd64.
#12 110.3 Preparing to unpack .../129-libboost-chrono1.83.0t64_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.3 Unpacking libboost-chrono1.83.0t64:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.3 Selecting previously unselected package libboost-chrono1.83-dev:amd64.
#12 110.3 Preparing to unpack .../130-libboost-chrono1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.4 Unpacking libboost-chrono1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.4 Selecting previously unselected package libboost-chrono-dev:amd64.
#12 110.4 Preparing to unpack .../131-libboost-chrono-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 110.4 Unpacking libboost-chrono-dev:amd64 (1.83.0.1ubuntu2) ...
#12 110.4 Selecting previously unselected package libboost-container1.83.0:amd64.
#12 110.4 Preparing to unpack .../132-libboost-container1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.4 Unpacking libboost-container1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.4 Selecting previously unselected package libboost-container1.83-dev:amd64.
#12 110.4 Preparing to unpack .../133-libboost-container1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.4 Unpacking libboost-container1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.4 Selecting previously unselected package libboost-container-dev:amd64.
#12 110.4 Preparing to unpack .../134-libboost-container-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 110.4 Unpacking libboost-container-dev:amd64 (1.83.0.1ubuntu2) ...
#12 110.5 Selecting previously unselected package libboost-date-time1.83.0:amd64.
#12 110.5 Preparing to unpack .../135-libboost-date-time1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.5 Unpacking libboost-date-time1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.5 Selecting previously unselected package libboost-serialization1.83.0:amd64.
#12 110.5 Preparing to unpack .../136-libboost-serialization1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.5 Unpacking libboost-serialization1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.5 Selecting previously unselected package libboost-serialization1.83-dev:amd64.
#12 110.5 Preparing to unpack .../137-libboost-serialization1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.5 Unpacking libboost-serialization1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.5 Selecting previously unselected package libboost-date-time1.83-dev:amd64.
#12 110.5 Preparing to unpack .../138-libboost-date-time1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.5 Unpacking libboost-date-time1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.6 Selecting previously unselected package libboost-system1.83.0:amd64.
#12 110.6 Preparing to unpack .../139-libboost-system1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.6 Unpacking libboost-system1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.6 Selecting previously unselected package libboost-system1.83-dev:amd64.
#12 110.6 Preparing to unpack .../140-libboost-system1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.6 Unpacking libboost-system1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.6 Selecting previously unselected package libboost-thread1.83.0:amd64.
#12 110.6 Preparing to unpack .../141-libboost-thread1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.6 Unpacking libboost-thread1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.6 Selecting previously unselected package libboost-thread1.83-dev:amd64.
#12 110.6 Preparing to unpack .../142-libboost-thread1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.6 Unpacking libboost-thread1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.7 Selecting previously unselected package libboost-context1.83.0:amd64.
#12 110.7 Preparing to unpack .../143-libboost-context1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.7 Unpacking libboost-context1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.7 Selecting previously unselected package libboost-context1.83-dev:amd64.
#12 110.7 Preparing to unpack .../144-libboost-context1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.7 Unpacking libboost-context1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.7 Selecting previously unselected package libboost-context-dev:amd64.
#12 110.7 Preparing to unpack .../145-libboost-context-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 110.7 Unpacking libboost-context-dev:amd64 (1.83.0.1ubuntu2) ...
#12 110.7 Selecting previously unselected package libboost-coroutine1.83.0:amd64.
#12 110.7 Preparing to unpack .../146-libboost-coroutine1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.7 Unpacking libboost-coroutine1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.8 Selecting previously unselected package libboost-coroutine1.83-dev:amd64.
#12 110.8 Preparing to unpack .../147-libboost-coroutine1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.8 Unpacking libboost-coroutine1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.8 Selecting previously unselected package libboost-coroutine-dev:amd64.
#12 110.8 Preparing to unpack .../148-libboost-coroutine-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 110.8 Unpacking libboost-coroutine-dev:amd64 (1.83.0.1ubuntu2) ...
#12 110.8 Selecting previously unselected package libboost-date-time-dev:amd64.
#12 110.8 Preparing to unpack .../149-libboost-date-time-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 110.8 Unpacking libboost-date-time-dev:amd64 (1.83.0.1ubuntu2) ...
#12 110.8 Selecting previously unselected package libboost-exception1.83-dev:amd64.
#12 110.8 Preparing to unpack .../150-libboost-exception1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.8 Unpacking libboost-exception1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.8 Selecting previously unselected package libboost-exception-dev:amd64.
#12 110.8 Preparing to unpack .../151-libboost-exception-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 110.8 Unpacking libboost-exception-dev:amd64 (1.83.0.1ubuntu2) ...
#12 110.9 Selecting previously unselected package libboost-filesystem1.83.0:amd64.
#12 110.9 Preparing to unpack .../152-libboost-filesystem1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.9 Unpacking libboost-filesystem1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.9 Selecting previously unselected package libboost-filesystem1.83-dev:amd64.
#12 110.9 Preparing to unpack .../153-libboost-filesystem1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.9 Unpacking libboost-filesystem1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.9 Selecting previously unselected package libboost-fiber1.83.0:amd64.
#12 110.9 Preparing to unpack .../154-libboost-fiber1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.9 Unpacking libboost-fiber1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 110.9 Selecting previously unselected package libboost-fiber1.83-dev:amd64.
#12 110.9 Preparing to unpack .../155-libboost-fiber1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 110.9 Unpacking libboost-fiber1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 111.0 Selecting previously unselected package libboost-fiber-dev:amd64.
#12 111.0 Preparing to unpack .../156-libboost-fiber-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 111.0 Unpacking libboost-fiber-dev:amd64 (1.83.0.1ubuntu2) ...
#12 111.0 Selecting previously unselected package libboost-filesystem-dev:amd64.
#12 111.0 Preparing to unpack .../157-libboost-filesystem-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 111.0 Unpacking libboost-filesystem-dev:amd64 (1.83.0.1ubuntu2) ...
#12 111.0 Selecting previously unselected package libboost-graph1.83.0:amd64.
#12 111.0 Preparing to unpack .../158-libboost-graph1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 111.0 Unpacking libboost-graph1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 111.0 Selecting previously unselected package libboost-regex1.83.0:amd64.
#12 111.0 Preparing to unpack .../159-libboost-regex1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 111.0 Unpacking libboost-regex1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 111.0 Selecting previously unselected package libicu-dev:amd64.
#12 111.0 Preparing to unpack .../160-libicu-dev_74.2-1ubuntu3.1_amd64.deb ...
#12 111.0 Unpacking libicu-dev:amd64 (74.2-1ubuntu3.1) ...
#12 111.2 Selecting previously unselected package libboost-regex1.83-dev:amd64.
#12 111.2 Preparing to unpack .../161-libboost-regex1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 111.2 Unpacking libboost-regex1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 111.3 Selecting previously unselected package libboost-test1.83.0:amd64.
#12 111.3 Preparing to unpack .../162-libboost-test1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 111.3 Unpacking libboost-test1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 111.3 Selecting previously unselected package libboost-test1.83-dev:amd64.
#12 111.3 Preparing to unpack .../163-libboost-test1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 111.3 Unpacking libboost-test1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 111.3 Selecting previously unselected package libboost-graph1.83-dev:amd64.
#12 111.3 Preparing to unpack .../164-libboost-graph1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 111.3 Unpacking libboost-graph1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 111.4 Selecting previously unselected package libboost-graph-dev:amd64.
#12 111.4 Preparing to unpack .../165-libboost-graph-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 111.4 Unpacking libboost-graph-dev:amd64 (1.83.0.1ubuntu2) ...
#12 111.4 Selecting previously unselected package libevent-core-2.1-7t64:amd64.
#12 111.4 Preparing to unpack .../166-libevent-core-2.1-7t64_2.1.12-stable-9ubuntu2.1_amd64.deb ...
#12 111.4 Unpacking libevent-core-2.1-7t64:amd64 (2.1.12-stable-9ubuntu2.1) ...
#12 111.4 Selecting previously unselected package libevent-pthreads-2.1-7t64:amd64.
#12 111.4 Preparing to unpack .../167-libevent-pthreads-2.1-7t64_2.1.12-stable-9ubuntu2.1_amd64.deb ...
#12 111.4 Unpacking libevent-pthreads-2.1-7t64:amd64 (2.1.12-stable-9ubuntu2.1) ...
#12 111.4 Selecting previously unselected package libpsm-infinipath1.
#12 111.4 Preparing to unpack .../168-libpsm-infinipath1_3.3+20.604758e7-6.3build1_amd64.deb ...
#12 111.4 Unpacking libpsm-infinipath1 (3.3+20.604758e7-6.3build1) ...
#12 111.5 Selecting previously unselected package libpsm2-2.
#12 111.5 Preparing to unpack .../169-libpsm2-2_11.2.185-2build1_amd64.deb ...
#12 111.5 Unpacking libpsm2-2 (11.2.185-2build1) ...
#12 111.5 Selecting previously unselected package librdmacm1t64:amd64.
#12 111.5 Preparing to unpack .../170-librdmacm1t64_50.0-2ubuntu0.2_amd64.deb ...
#12 111.5 Unpacking librdmacm1t64:amd64 (50.0-2ubuntu0.2) ...
#12 111.5 Selecting previously unselected package libfabric1:amd64.
#12 111.5 Preparing to unpack .../171-libfabric1_1.17.0-3build2_amd64.deb ...
#12 111.5 Unpacking libfabric1:amd64 (1.17.0-3build2) ...
#12 111.5 Selecting previously unselected package libhwloc15:amd64.
#12 111.5 Preparing to unpack .../172-libhwloc15_2.10.0-1build1_amd64.deb ...
#12 111.5 Unpacking libhwloc15:amd64 (2.10.0-1build1) ...
#12 111.6 Selecting previously unselected package libmunge2:amd64.
#12 111.6 Preparing to unpack .../173-libmunge2_0.5.15-4ubuntu0.1_amd64.deb ...
#12 111.6 Unpacking libmunge2:amd64 (0.5.15-4ubuntu0.1) ...
#12 111.6 Selecting previously unselected package libpciaccess0:amd64.
#12 111.6 Preparing to unpack .../174-libpciaccess0_0.17-3ubuntu0.24.04.2_amd64.deb ...
#12 111.6 Unpacking libpciaccess0:amd64 (0.17-3ubuntu0.24.04.2) ...
#12 111.6 Selecting previously unselected package libxnvctrl0:amd64.
#12 111.6 Preparing to unpack .../175-libxnvctrl0_510.47.03-0ubuntu4.24.04.1_amd64.deb ...
#12 111.6 Unpacking libxnvctrl0:amd64 (510.47.03-0ubuntu4.24.04.1) ...
#12 111.6 Selecting previously unselected package ocl-icd-libopencl1:amd64.
#12 111.6 Preparing to unpack .../176-ocl-icd-libopencl1_2.3.2-1build1_amd64.deb ...
#12 111.6 Unpacking ocl-icd-libopencl1:amd64 (2.3.2-1build1) ...
#12 111.6 Selecting previously unselected package libhwloc-plugins:amd64.
#12 111.6 Preparing to unpack .../177-libhwloc-plugins_2.10.0-1build1_amd64.deb ...
#12 111.6 Unpacking libhwloc-plugins:amd64 (2.10.0-1build1) ...
#12 111.7 Selecting previously unselected package libpmix2t64:amd64.
#12 111.7 Preparing to unpack .../178-libpmix2t64_5.0.1-4.1build1_amd64.deb ...
#12 111.7 Unpacking libpmix2t64:amd64 (5.0.1-4.1build1) ...
#12 111.7 Selecting previously unselected package libucx0:amd64.
#12 111.7 Preparing to unpack .../179-libucx0_1.16.0+ds-5ubuntu1_amd64.deb ...
#12 111.7 Unpacking libucx0:amd64 (1.16.0+ds-5ubuntu1) ...
#12 111.7 Selecting previously unselected package libopenmpi3t64:amd64.
#12 111.7 Preparing to unpack .../180-libopenmpi3t64_4.1.6-7ubuntu2_amd64.deb ...
#12 111.7 Unpacking libopenmpi3t64:amd64 (4.1.6-7ubuntu2) ...
#12 111.8 Selecting previously unselected package libboost-mpi1.83.0.
#12 111.8 Preparing to unpack .../181-libboost-mpi1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 111.8 Unpacking libboost-mpi1.83.0 (1.83.0-2.1ubuntu3.2) ...
#12 111.8 Selecting previously unselected package libboost-graph-parallel1.83.0.
#12 111.8 Preparing to unpack .../182-libboost-graph-parallel1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 111.8 Unpacking libboost-graph-parallel1.83.0 (1.83.0-2.1ubuntu3.2) ...
#12 111.9 Selecting previously unselected package libboost-graph-parallel1.83-dev.
#12 111.9 Preparing to unpack .../183-libboost-graph-parallel1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 111.9 Unpacking libboost-graph-parallel1.83-dev (1.83.0-2.1ubuntu3.2) ...
#12 111.9 Selecting previously unselected package libboost-graph-parallel-dev.
#12 111.9 Preparing to unpack .../184-libboost-graph-parallel-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 111.9 Unpacking libboost-graph-parallel-dev (1.83.0.1ubuntu2) ...
#12 111.9 Selecting previously unselected package libboost-iostreams1.83.0:amd64.
#12 111.9 Preparing to unpack .../185-libboost-iostreams1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 111.9 Unpacking libboost-iostreams1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 111.9 Selecting previously unselected package libboost-iostreams1.83-dev:amd64.
#12 111.9 Preparing to unpack .../186-libboost-iostreams1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 111.9 Unpacking libboost-iostreams1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 112.0 Selecting previously unselected package libboost-iostreams-dev:amd64.
#12 112.0 Preparing to unpack .../187-libboost-iostreams-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 112.0 Unpacking libboost-iostreams-dev:amd64 (1.83.0.1ubuntu2) ...
#12 112.0 Selecting previously unselected package libboost-json1.83.0:amd64.
#12 112.0 Preparing to unpack .../188-libboost-json1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 112.0 Unpacking libboost-json1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 112.0 Selecting previously unselected package libboost-json1.83-dev:amd64.
#12 112.0 Preparing to unpack .../189-libboost-json1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 112.0 Unpacking libboost-json1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 112.0 Selecting previously unselected package libboost-json-dev:amd64.
#12 112.0 Preparing to unpack .../190-libboost-json-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 112.0 Unpacking libboost-json-dev:amd64 (1.83.0.1ubuntu2) ...
#12 112.0 Selecting previously unselected package libboost-locale1.83.0:amd64.
#12 112.0 Preparing to unpack .../191-libboost-locale1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 112.0 Unpacking libboost-locale1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 112.1 Selecting previously unselected package libboost-locale1.83-dev:amd64.
#12 112.1 Preparing to unpack .../192-libboost-locale1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 112.1 Unpacking libboost-locale1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 112.1 Selecting previously unselected package libboost-locale-dev:amd64.
#12 112.1 Preparing to unpack .../193-libboost-locale-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 112.1 Unpacking libboost-locale-dev:amd64 (1.83.0.1ubuntu2) ...
#12 112.1 Selecting previously unselected package libboost-log1.83.0.
#12 112.1 Preparing to unpack .../194-libboost-log1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 112.1 Unpacking libboost-log1.83.0 (1.83.0-2.1ubuntu3.2) ...
#12 112.1 Selecting previously unselected package libboost-log1.83-dev.
#12 112.2 Preparing to unpack .../195-libboost-log1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 112.2 Unpacking libboost-log1.83-dev (1.83.0-2.1ubuntu3.2) ...
#12 112.2 Selecting previously unselected package libboost-log-dev.
#12 112.2 Preparing to unpack .../196-libboost-log-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 112.2 Unpacking libboost-log-dev (1.83.0.1ubuntu2) ...
#12 112.2 Selecting previously unselected package libboost-math1.83.0:amd64.
#12 112.2 Preparing to unpack .../197-libboost-math1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 112.2 Unpacking libboost-math1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 112.2 Selecting previously unselected package libboost-math1.83-dev:amd64.
#12 112.2 Preparing to unpack .../198-libboost-math1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 112.2 Unpacking libboost-math1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 112.3 Selecting previously unselected package libboost-math-dev:amd64.
#12 112.3 Preparing to unpack .../199-libboost-math-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 112.3 Unpacking libboost-math-dev:amd64 (1.83.0.1ubuntu2) ...
#12 112.3 Selecting previously unselected package openmpi-common.
#12 112.3 Preparing to unpack .../200-openmpi-common_4.1.6-7ubuntu2_all.deb ...
#12 112.3 Unpacking openmpi-common (4.1.6-7ubuntu2) ...
#12 112.3 Selecting previously unselected package libnl-3-dev:amd64.
#12 112.3 Preparing to unpack .../201-libnl-3-dev_3.7.0-0.3build1.1_amd64.deb ...
#12 112.3 Unpacking libnl-3-dev:amd64 (3.7.0-0.3build1.1) ...
#12 112.4 Selecting previously unselected package libnl-route-3-dev:amd64.
#12 112.4 Preparing to unpack .../202-libnl-route-3-dev_3.7.0-0.3build1.1_amd64.deb ...
#12 112.4 Unpacking libnl-route-3-dev:amd64 (3.7.0-0.3build1.1) ...
#12 112.4 Selecting previously unselected package libibverbs-dev:amd64.
#12 112.4 Preparing to unpack .../203-libibverbs-dev_50.0-2ubuntu0.2_amd64.deb ...
#12 112.4 Unpacking libibverbs-dev:amd64 (50.0-2ubuntu0.2) ...
#12 112.5 Selecting previously unselected package libnuma-dev:amd64.
#12 112.5 Preparing to unpack .../204-libnuma-dev_2.0.18-1ubuntu0.24.04.1_amd64.deb ...
#12 112.5 Unpacking libnuma-dev:amd64 (2.0.18-1ubuntu0.24.04.1) ...
#12 112.5 Selecting previously unselected package libltdl7:amd64.
#12 112.5 Preparing to unpack .../205-libltdl7_2.4.7-7build1_amd64.deb ...
#12 112.5 Unpacking libltdl7:amd64 (2.4.7-7build1) ...
#12 112.5 Selecting previously unselected package libltdl-dev:amd64.
#12 112.5 Preparing to unpack .../206-libltdl-dev_2.4.7-7build1_amd64.deb ...
#12 112.5 Unpacking libltdl-dev:amd64 (2.4.7-7build1) ...
#12 112.6 Selecting previously unselected package libhwloc-dev:amd64.
#12 112.6 Preparing to unpack .../207-libhwloc-dev_2.10.0-1build1_amd64.deb ...
#12 112.6 Unpacking libhwloc-dev:amd64 (2.10.0-1build1) ...
#12 112.6 Selecting previously unselected package libevent-2.1-7t64:amd64.
#12 112.6 Preparing to unpack .../208-libevent-2.1-7t64_2.1.12-stable-9ubuntu2.1_amd64.deb ...
#12 112.6 Unpacking libevent-2.1-7t64:amd64 (2.1.12-stable-9ubuntu2.1) ...
#12 112.6 Selecting previously unselected package libevent-extra-2.1-7t64:amd64.
#12 112.6 Preparing to unpack .../209-libevent-extra-2.1-7t64_2.1.12-stable-9ubuntu2.1_amd64.deb ...
#12 112.6 Unpacking libevent-extra-2.1-7t64:amd64 (2.1.12-stable-9ubuntu2.1) ...
#12 112.6 Selecting previously unselected package libevent-openssl-2.1-7t64:amd64.
#12 112.6 Preparing to unpack .../210-libevent-openssl-2.1-7t64_2.1.12-stable-9ubuntu2.1_amd64.deb ...
#12 112.6 Unpacking libevent-openssl-2.1-7t64:amd64 (2.1.12-stable-9ubuntu2.1) ...
#12 112.7 Selecting previously unselected package libevent-dev.
#12 112.7 Preparing to unpack .../211-libevent-dev_2.1.12-stable-9ubuntu2.1_amd64.deb ...
#12 112.7 Unpacking libevent-dev (2.1.12-stable-9ubuntu2.1) ...
#12 112.7 Selecting previously unselected package libpmix-dev:amd64.
#12 112.7 Preparing to unpack .../212-libpmix-dev_5.0.1-4.1build1_amd64.deb ...
#12 112.7 Unpacking libpmix-dev:amd64 (5.0.1-4.1build1) ...
#12 112.8 Selecting previously unselected package libjs-jquery.
#12 112.8 Preparing to unpack .../213-libjs-jquery_3.6.1+dfsg+~3.5.14-1_all.deb ...
#12 112.8 Unpacking libjs-jquery (3.6.1+dfsg+~3.5.14-1) ...
#12 112.8 Selecting previously unselected package libjs-jquery-ui.
#12 112.8 Preparing to unpack .../214-libjs-jquery-ui_1.13.2+dfsg-1_all.deb ...
#12 112.8 Unpacking libjs-jquery-ui (1.13.2+dfsg-1) ...
#12 112.9 Selecting previously unselected package openmpi-bin.
#12 112.9 Preparing to unpack .../215-openmpi-bin_4.1.6-7ubuntu2_amd64.deb ...
#12 112.9 Unpacking openmpi-bin (4.1.6-7ubuntu2) ...
#12 112.9 Selecting previously unselected package libopenmpi-dev:amd64.
#12 112.9 Preparing to unpack .../216-libopenmpi-dev_4.1.6-7ubuntu2_amd64.deb ...
#12 112.9 Unpacking libopenmpi-dev:amd64 (4.1.6-7ubuntu2) ...
#12 113.2 Selecting previously unselected package mpi-default-dev.
#12 113.2 Preparing to unpack .../217-mpi-default-dev_1.15build1_amd64.deb ...
#12 113.2 Unpacking mpi-default-dev (1.15build1) ...
#12 113.2 Selecting previously unselected package libboost-mpi1.83-dev.
#12 113.2 Preparing to unpack .../218-libboost-mpi1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 113.2 Unpacking libboost-mpi1.83-dev (1.83.0-2.1ubuntu3.2) ...
#12 113.2 Selecting previously unselected package libboost-mpi-dev.
#12 113.2 Preparing to unpack .../219-libboost-mpi-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 113.2 Unpacking libboost-mpi-dev (1.83.0.1ubuntu2) ...
#12 113.2 Selecting previously unselected package libboost-python1.83.0.
#12 113.2 Preparing to unpack .../220-libboost-python1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 113.2 Unpacking libboost-python1.83.0 (1.83.0-2.1ubuntu3.2) ...
#12 113.3 Selecting previously unselected package mpi-default-bin.
#12 113.3 Preparing to unpack .../221-mpi-default-bin_1.15build1_amd64.deb ...
#12 113.3 Unpacking mpi-default-bin (1.15build1) ...
#12 113.3 Selecting previously unselected package libboost-mpi-python1.83.0.
#12 113.3 Preparing to unpack .../222-libboost-mpi-python1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 113.3 Unpacking libboost-mpi-python1.83.0 (1.83.0-2.1ubuntu3.2) ...
#12 113.3 Selecting previously unselected package libboost-mpi-python1.83-dev.
#12 113.3 Preparing to unpack .../223-libboost-mpi-python1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 113.3 Unpacking libboost-mpi-python1.83-dev (1.83.0-2.1ubuntu3.2) ...
#12 113.3 Selecting previously unselected package libboost-mpi-python-dev.
#12 113.3 Preparing to unpack .../224-libboost-mpi-python-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 113.3 Unpacking libboost-mpi-python-dev (1.83.0.1ubuntu2) ...
#12 113.4 Selecting previously unselected package libboost-numpy1.83.0.
#12 113.4 Preparing to unpack .../225-libboost-numpy1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 113.4 Unpacking libboost-numpy1.83.0 (1.83.0-2.1ubuntu3.2) ...
#12 113.4 Selecting previously unselected package libboost-numpy1.83-dev.
#12 113.4 Preparing to unpack .../226-libboost-numpy1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 113.4 Unpacking libboost-numpy1.83-dev (1.83.0-2.1ubuntu3.2) ...
#12 113.4 Selecting previously unselected package libboost-numpy-dev.
#12 113.4 Preparing to unpack .../227-libboost-numpy-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 113.4 Unpacking libboost-numpy-dev (1.83.0.1ubuntu2) ...
#12 113.4 Selecting previously unselected package libboost-program-options1.83.0:amd64.
#12 113.4 Preparing to unpack .../228-libboost-program-options1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 113.4 Unpacking libboost-program-options1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 113.5 Selecting previously unselected package libboost-program-options1.83-dev:amd64.
#12 113.5 Preparing to unpack .../229-libboost-program-options1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 113.5 Unpacking libboost-program-options1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 113.5 Selecting previously unselected package libboost-program-options-dev:amd64.
#12 113.5 Preparing to unpack .../230-libboost-program-options-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 113.5 Unpacking libboost-program-options-dev:amd64 (1.83.0.1ubuntu2) ...
#12 113.5 Selecting previously unselected package libpython3.12t64:amd64.
#12 113.5 Preparing to unpack .../231-libpython3.12t64_3.12.3-1ubuntu0.16_amd64.deb ...
#12 113.5 Unpacking libpython3.12t64:amd64 (3.12.3-1ubuntu0.16) ...
#12 113.6 Selecting previously unselected package libexpat1-dev:amd64.
#12 113.6 Preparing to unpack .../232-libexpat1-dev_2.6.1-2ubuntu0.4_amd64.deb ...
#12 113.6 Unpacking libexpat1-dev:amd64 (2.6.1-2ubuntu0.4) ...
#12 113.6 Selecting previously unselected package libpython3.12-dev:amd64.
#12 113.6 Preparing to unpack .../233-libpython3.12-dev_3.12.3-1ubuntu0.16_amd64.deb ...
#12 113.6 Unpacking libpython3.12-dev:amd64 (3.12.3-1ubuntu0.16) ...
#12 113.7 Selecting previously unselected package libpython3-dev:amd64.
#12 113.7 Preparing to unpack .../234-libpython3-dev_3.12.3-0ubuntu2.1_amd64.deb ...
#12 113.7 Unpacking libpython3-dev:amd64 (3.12.3-0ubuntu2.1) ...
#12 113.7 Selecting previously unselected package python3.12-dev.
#12 113.8 Preparing to unpack .../235-python3.12-dev_3.12.3-1ubuntu0.16_amd64.deb ...
#12 113.8 Unpacking python3.12-dev (3.12.3-1ubuntu0.16) ...
#12 113.8 Selecting previously unselected package libjs-underscore.
#12 113.8 Preparing to unpack .../236-libjs-underscore_1.13.4~dfsg+~1.11.4-3_all.deb ...
#12 113.8 Unpacking libjs-underscore (1.13.4~dfsg+~1.11.4-3) ...
#12 113.8 Selecting previously unselected package libjs-sphinxdoc.
#12 113.8 Preparing to unpack .../237-libjs-sphinxdoc_7.2.6-6_all.deb ...
#12 113.8 Unpacking libjs-sphinxdoc (7.2.6-6) ...
#12 113.8 Selecting previously unselected package python3-dev.
#12 113.8 Preparing to unpack .../238-python3-dev_3.12.3-0ubuntu2.1_amd64.deb ...
#12 113.8 Unpacking python3-dev (3.12.3-0ubuntu2.1) ...
#12 113.8 Selecting previously unselected package libboost-python1.83-dev.
#12 113.8 Preparing to unpack .../239-libboost-python1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 113.8 Unpacking libboost-python1.83-dev (1.83.0-2.1ubuntu3.2) ...
#12 113.9 Selecting previously unselected package libboost-python-dev.
#12 113.9 Preparing to unpack .../240-libboost-python-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 113.9 Unpacking libboost-python-dev (1.83.0.1ubuntu2) ...
#12 113.9 Selecting previously unselected package libboost-random1.83.0:amd64.
#12 113.9 Preparing to unpack .../241-libboost-random1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 113.9 Unpacking libboost-random1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 113.9 Selecting previously unselected package libboost-random1.83-dev:amd64.
#12 113.9 Preparing to unpack .../242-libboost-random1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 113.9 Unpacking libboost-random1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 113.9 Selecting previously unselected package libboost-random-dev:amd64.
#12 113.9 Preparing to unpack .../243-libboost-random-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 113.9 Unpacking libboost-random-dev:amd64 (1.83.0.1ubuntu2) ...
#12 113.9 Selecting previously unselected package libboost-regex-dev:amd64.
#12 113.9 Preparing to unpack .../244-libboost-regex-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 113.9 Unpacking libboost-regex-dev:amd64 (1.83.0.1ubuntu2) ...
#12 114.0 Selecting previously unselected package libboost-serialization-dev:amd64.
#12 114.0 Preparing to unpack .../245-libboost-serialization-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 114.0 Unpacking libboost-serialization-dev:amd64 (1.83.0.1ubuntu2) ...
#12 114.0 Selecting previously unselected package libboost-stacktrace1.83.0:amd64.
#12 114.0 Preparing to unpack .../246-libboost-stacktrace1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 114.0 Unpacking libboost-stacktrace1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.0 Selecting previously unselected package libboost-stacktrace1.83-dev:amd64.
#12 114.0 Preparing to unpack .../247-libboost-stacktrace1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 114.0 Unpacking libboost-stacktrace1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.0 Selecting previously unselected package libboost-stacktrace-dev:amd64.
#12 114.0 Preparing to unpack .../248-libboost-stacktrace-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 114.0 Unpacking libboost-stacktrace-dev:amd64 (1.83.0.1ubuntu2) ...
#12 114.1 Selecting previously unselected package libboost-system-dev:amd64.
#12 114.1 Preparing to unpack .../249-libboost-system-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 114.1 Unpacking libboost-system-dev:amd64 (1.83.0.1ubuntu2) ...
#12 114.1 Selecting previously unselected package libboost-test-dev:amd64.
#12 114.1 Preparing to unpack .../250-libboost-test-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 114.1 Unpacking libboost-test-dev:amd64 (1.83.0.1ubuntu2) ...
#12 114.1 Selecting previously unselected package libboost-thread-dev:amd64.
#12 114.1 Preparing to unpack .../251-libboost-thread-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 114.1 Unpacking libboost-thread-dev:amd64 (1.83.0.1ubuntu2) ...
#12 114.1 Selecting previously unselected package libboost-timer1.83.0:amd64.
#12 114.1 Preparing to unpack .../252-libboost-timer1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 114.1 Unpacking libboost-timer1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.1 Selecting previously unselected package libboost-timer1.83-dev:amd64.
#12 114.1 Preparing to unpack .../253-libboost-timer1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 114.1 Unpacking libboost-timer1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.2 Selecting previously unselected package libboost-timer-dev:amd64.
#12 114.2 Preparing to unpack .../254-libboost-timer-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 114.2 Unpacking libboost-timer-dev:amd64 (1.83.0.1ubuntu2) ...
#12 114.2 Selecting previously unselected package libboost-type-erasure1.83.0:amd64.
#12 114.2 Preparing to unpack .../255-libboost-type-erasure1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 114.2 Unpacking libboost-type-erasure1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.2 Selecting previously unselected package libboost-type-erasure1.83-dev:amd64.
#12 114.2 Preparing to unpack .../256-libboost-type-erasure1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 114.2 Unpacking libboost-type-erasure1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.2 Selecting previously unselected package libboost-type-erasure-dev:amd64.
#12 114.2 Preparing to unpack .../257-libboost-type-erasure-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 114.2 Unpacking libboost-type-erasure-dev:amd64 (1.83.0.1ubuntu2) ...
#12 114.3 Selecting previously unselected package libboost-url1.83.0:amd64.
#12 114.3 Preparing to unpack .../258-libboost-url1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 114.3 Unpacking libboost-url1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.3 Selecting previously unselected package libboost-url1.83-dev:amd64.
#12 114.3 Preparing to unpack .../259-libboost-url1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 114.3 Unpacking libboost-url1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.3 Selecting previously unselected package libboost-url-dev:amd64.
#12 114.3 Preparing to unpack .../260-libboost-url-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 114.3 Unpacking libboost-url-dev:amd64 (1.83.0.1ubuntu2) ...
#12 114.3 Selecting previously unselected package libboost-wave1.83.0:amd64.
#12 114.3 Preparing to unpack .../261-libboost-wave1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 114.3 Unpacking libboost-wave1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.4 Selecting previously unselected package libboost-wave1.83-dev:amd64.
#12 114.4 Preparing to unpack .../262-libboost-wave1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 114.4 Unpacking libboost-wave1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.4 Selecting previously unselected package libboost-wave-dev:amd64.
#12 114.4 Preparing to unpack .../263-libboost-wave-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 114.4 Unpacking libboost-wave-dev:amd64 (1.83.0.1ubuntu2) ...
#12 114.4 Selecting previously unselected package libboost-nowide1.83.0.
#12 114.4 Preparing to unpack .../264-libboost-nowide1.83.0_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 114.4 Unpacking libboost-nowide1.83.0 (1.83.0-2.1ubuntu3.2) ...
#12 114.4 Selecting previously unselected package libboost-nowide1.83-dev.
#12 114.4 Preparing to unpack .../265-libboost-nowide1.83-dev_1.83.0-2.1ubuntu3.2_amd64.deb ...
#12 114.4 Unpacking libboost-nowide1.83-dev (1.83.0-2.1ubuntu3.2) ...
#12 114.5 Selecting previously unselected package libboost-nowide-dev.
#12 114.5 Preparing to unpack .../266-libboost-nowide-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 114.5 Unpacking libboost-nowide-dev (1.83.0.1ubuntu2) ...
#12 114.5 Selecting previously unselected package libboost-all-dev.
#12 114.5 Preparing to unpack .../267-libboost-all-dev_1.83.0.1ubuntu2_amd64.deb ...
#12 114.5 Unpacking libboost-all-dev (1.83.0.1ubuntu2) ...
#12 114.5 Selecting previously unselected package libncurses-dev:amd64.
#12 114.5 Preparing to unpack .../268-libncurses-dev_6.4+20240113-1ubuntu2.2_amd64.deb ...
#12 114.5 Unpacking libncurses-dev:amd64 (6.4+20240113-1ubuntu2.2) ...
#12 114.5 Selecting previously unselected package libpkgconf3:amd64.
#12 114.5 Preparing to unpack .../269-libpkgconf3_1.8.1-2build1_amd64.deb ...
#12 114.5 Unpacking libpkgconf3:amd64 (1.8.1-2build1) ...
#12 114.6 Selecting previously unselected package libreadline-dev:amd64.
#12 114.6 Preparing to unpack .../270-libreadline-dev_8.2-4build1_amd64.deb ...
#12 114.6 Unpacking libreadline-dev:amd64 (8.2-4build1) ...
#12 114.6 Selecting previously unselected package ninja-build.
#12 114.6 Preparing to unpack .../271-ninja-build_1.11.1-2_amd64.deb ...
#12 114.6 Unpacking ninja-build (1.11.1-2) ...
#12 114.6 Selecting previously unselected package pkgconf-bin.
#12 114.6 Preparing to unpack .../272-pkgconf-bin_1.8.1-2build1_amd64.deb ...
#12 114.6 Unpacking pkgconf-bin (1.8.1-2build1) ...
#12 114.6 Selecting previously unselected package pkgconf:amd64.
#12 114.6 Preparing to unpack .../273-pkgconf_1.8.1-2build1_amd64.deb ...
#12 114.6 Unpacking pkgconf:amd64 (1.8.1-2build1) ...
#12 114.6 Selecting previously unselected package pkg-config:amd64.
#12 114.6 Preparing to unpack .../274-pkg-config_1.8.1-2build1_amd64.deb ...
#12 114.7 Unpacking pkg-config:amd64 (1.8.1-2build1) ...
#12 114.7 Setting up media-types (10.1.0) ...
#12 114.7 Setting up libboost-python1.83.0 (1.83.0-2.1ubuntu3.2) ...
#12 114.7 Setting up libboost-program-options1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.7 Setting up libpciaccess0:amd64 (0.17-3ubuntu0.24.04.2) ...
#12 114.7 Setting up mysql-common (5.8+1.1.0build1) ...
#12 114.7 update-alternatives: using /etc/mysql/my.cnf.fallback to provide /etc/mysql/my.cnf (my.cnf) in auto mode
#12 114.7 Setting up libmysqlclient21:amd64 (8.0.46-0ubuntu0.24.04.4) ...
#12 114.7 Setting up libxau6:amd64 (1:1.0.9-1build6) ...
#12 114.7 Setting up libboost-stacktrace1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.7 Setting up libkeyutils1:amd64 (1.6.3-3build1) ...
#12 114.7 Setting up lto-disabled-list (47) ...
#12 114.7 Setting up libzstd-dev:amd64 (1.5.5+dfsg2-2build1.1) ...
#12 114.7 Setting up libgdbm6t64:amd64 (1.23-5.1build1) ...
#12 114.7 Setting up libboost-nowide1.83.0 (1.83.0-2.1ubuntu3.2) ...
#12 114.7 Setting up libboost-date-time1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.7 Setting up libgdbm-compat4t64:amd64 (1.23-5.1build1) ...
#12 114.7 Setting up libboost-json1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.7 Setting up libboost-timer1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.7 Setting up libcbor0.10:amd64 (0.10.2-1.2ubuntu2) ...
#12 114.7 Setting up libboost-regex1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.7 Setting up libbrotli1:amd64 (1.1.0-2build2) ...
#12 114.7 Setting up libsqlite3-0:amd64 (3.45.1-1ubuntu2.7) ...
#12 114.7 Setting up libboost-system1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.7 Setting up libuv1t64:amd64 (1.48.0-1.1build1) ...
#12 114.7 Setting up libboost-context1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.8 Setting up libboost-random1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.8 Setting up binutils-common:amd64 (2.42-4ubuntu2.10) ...
#12 114.8 Setting up libpsl5t64:amd64 (0.21.2-1.1build1) ...
#12 114.8 Setting up libnghttp2-14:amd64 (1.59.0-1ubuntu0.4) ...
#12 114.8 Setting up linux-libc-dev:amd64 (6.8.0-139.139) ...
#12 114.8 Setting up libctf-nobfd0:amd64 (2.42-4ubuntu2.10) ...
#12 114.8 Setting up libboost-thread1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.8 Setting up m4 (1.4.19-4build1) ...
#12 114.8 Setting up libevent-2.1-7t64:amd64 (2.1.12-stable-9ubuntu2.1) ...
#12 114.8 Setting up libboost-filesystem1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.8 Setting up libgomp1:amd64 (14.2.0-4ubuntu2~24.04.1) ...
#12 114.8 Setting up bzip2 (1.0.8-5.1ubuntu0.1) ...
#12 114.8 Setting up libboost-url1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.8 Setting up libsframe1:amd64 (2.42-4ubuntu2.10) ...
#12 114.8 Setting up ninja-build (1.11.1-2) ...
#12 114.8 Setting up libelf1t64:amd64 (0.190-1.1ubuntu0.1) ...
#12 114.8 Setting up libjansson4:amd64 (2.14-2build2) ...
#12 114.8 Setting up libkrb5support0:amd64 (1.20.1-6ubuntu2.8) ...
#12 114.8 Setting up libsasl2-modules-db:amd64 (2.1.28+dfsg1-5ubuntu3.1) ...
#12 114.8 Setting up tzdata (2026c-0ubuntu0.24.04.1) ...
#12 114.9 
#12 114.9 Current default time zone: 'Etc/UTC'
#12 114.9 Local time is now:      Sat Sep  5 12:44:56 UTC 2026.
#12 114.9 Universal Time is now:  Sat Sep  5 12:44:56 UTC 2026.
#12 114.9 Run 'dpkg-reconfigure tzdata' if you wish to change it.
#12 114.9 
#12 114.9 Setting up libboost-atomic1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.9 Setting up libboost-serialization1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.9 Setting up libboost-numpy1.83.0 (1.83.0-2.1ubuntu3.2) ...
#12 114.9 Setting up autotools-dev (20220109.1) ...
#12 114.9 Setting up libpkgconf3:amd64 (1.8.1-2build1) ...
#12 114.9 Setting up rpcsvc-proto (1.4.2-0ubuntu7) ...
#12 114.9 Setting up gcc-13-base:amd64 (13.3.0-6ubuntu2~24.04.1) ...
#12 114.9 Setting up libmunge2:amd64 (0.5.15-4ubuntu0.1) ...
#12 114.9 Setting up libx11-data (2:1.8.7-1build1) ...
#12 114.9 Setting up make (4.3-4.1build2) ...
#12 114.9 Setting up libmpfr6:amd64 (4.2.1-1build1.1) ...
#12 114.9 Setting up libboost-chrono1.83.0t64:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.9 Setting up librtmp1:amd64 (2.4+20151223.gitfa8646d.1-2build7) ...
#12 114.9 Setting up libboost-iostreams1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 114.9 Setting up libncurses6:amd64 (6.4+20240113-1ubuntu2.2) ...
#12 114.9 Setting up xz-utils (5.6.1+really5.4.5-1ubuntu0.3) ...
#12 114.9 update-alternatives: using /usr/bin/xz to provide /usr/bin/lzma (lzma) in auto mode
#12 114.9 update-alternatives: warning: skip creation of /usr/share/man/man1/lzma.1.gz because associated file /usr/share/man/man1/xz.1.gz (of link group lzma) doesn't exist
#12 114.9 update-alternatives: warning: skip creation of /usr/share/man/man1/unlzma.1.gz because associated file /usr/share/man/man1/unxz.1.gz (of link group lzma) doesn't exist
#12 114.9 update-alternatives: warning: skip creation of /usr/share/man/man1/lzcat.1.gz because associated file /usr/share/man/man1/xzcat.1.gz (of link group lzma) doesn't exist
#12 114.9 update-alternatives: warning: skip creation of /usr/share/man/man1/lzmore.1.gz because associated file /usr/share/man/man1/xzmore.1.gz (of link group lzma) doesn't exist
#12 114.9 update-alternatives: warning: skip creation of /usr/share/man/man1/lzless.1.gz because associated file /usr/share/man/man1/xzless.1.gz (of link group lzma) doesn't exist
#12 114.9 update-alternatives: warning: skip creation of /usr/share/man/man1/lzdiff.1.gz because associated file /usr/share/man/man1/xzdiff.1.gz (of link group lzma) doesn't exist
#12 114.9 update-alternatives: warning: skip creation of /usr/share/man/man1/lzcmp.1.gz because associated file /usr/share/man/man1/xzcmp.1.gz (of link group lzma) doesn't exist
#12 114.9 update-alternatives: warning: skip creation of /usr/share/man/man1/lzgrep.1.gz because associated file /usr/share/man/man1/xzgrep.1.gz (of link group lzma) doesn't exist
#12 114.9 update-alternatives: warning: skip creation of /usr/share/man/man1/lzegrep.1.gz because associated file /usr/share/man/man1/xzegrep.1.gz (of link group lzma) doesn't exist
#12 114.9 update-alternatives: warning: skip creation of /usr/share/man/man1/lzfgrep.1.gz because associated file /usr/share/man/man1/xzfgrep.1.gz (of link group lzma) doesn't exist
#12 114.9 Setting up perl-modules-5.38 (5.38.2-3.2ubuntu0.4) ...
#12 114.9 Setting up libquadmath0:amd64 (14.2.0-4ubuntu2~24.04.1) ...
#12 114.9 Setting up libssl-dev:amd64 (3.0.13-0ubuntu3.15) ...
#12 114.9 Setting up libboost-nowide1.83-dev (1.83.0-2.1ubuntu3.2) ...
#12 114.9 Setting up libhwloc15:amd64 (2.10.0-1build1) ...
#12 114.9 Setting up libmpc3:amd64 (1.3.1-1build1.1) ...
#12 114.9 Setting up libatomic1:amd64 (14.2.0-4ubuntu2~24.04.1) ...
#12 115.0 Setting up patch (2.7.6-7build3) ...
#12 115.0 Setting up libboost-numpy1.83-dev (1.83.0-2.1ubuntu3.2) ...
#12 115.0 Setting up libjsoncpp25:amd64 (1.9.5-6build1) ...
#12 115.0 Setting up pkgconf-bin (1.8.1-2build1) ...
#12 115.0 Setting up libncursesw6:amd64 (6.4+20240113-1ubuntu2.2) ...
#12 115.0 Setting up libk5crypto3:amd64 (1.20.1-6ubuntu2.8) ...
#12 115.0 Setting up libltdl7:amd64 (2.4.7-7build1) ...
#12 115.0 Setting up libboost-test1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 115.0 Setting up libsasl2-2:amd64 (2.1.28+dfsg1-5ubuntu3.1) ...
#12 115.0 Setting up libgfortran5:amd64 (14.2.0-4ubuntu2~24.04.1) ...
#12 115.0 Setting up libboost-fiber1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 115.0 Setting up libubsan1:amd64 (14.2.0-4ubuntu2~24.04.1) ...
#12 115.0 Setting up libicu74:amd64 (74.2-1ubuntu3.1) ...
#12 115.0 Setting up libnuma1:amd64 (2.0.18-1ubuntu0.24.04.1) ...
#12 115.0 Setting up ocl-icd-libopencl1:amd64 (2.3.2-1build1) ...
#12 115.0 Setting up libhwasan0:amd64 (14.2.0-4ubuntu2~24.04.1) ...
#12 115.0 Setting up librhash0:amd64 (1.4.3-3build1) ...
#12 115.0 Setting up libcrypt-dev:amd64 (1:4.4.36-4build1) ...
#12 115.0 Setting up libasan8:amd64 (14.2.0-4ubuntu2~24.04.1) ...
#12 115.0 Setting up libnl-3-200:amd64 (3.7.0-0.3build1.1) ...
#12 115.0 Setting up libboost-graph1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 115.0 Setting up libpsm2-2 (11.2.185-2build1) ...
#12 115.0 Setting up openmpi-common (4.1.6-7ubuntu2) ...
#12 115.0 Setting up libboost-container1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 115.0 Setting up git-man (1:2.43.0-1ubuntu7.3) ...
#12 115.0 Setting up netbase (6.4) ...
#12 115.0 Setting up libboost-type-erasure1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 115.0 Setting up cmake-data (3.28.3-1build7) ...
#12 115.1 Setting up libkrb5-3:amd64 (1.20.1-6ubuntu2.8) ...
#12 115.1 Setting up libevent-core-2.1-7t64:amd64 (2.1.12-stable-9ubuntu2.1) ...
#12 115.1 Setting up libperl5.38t64:amd64 (5.38.2-3.2ubuntu0.4) ...
#12 115.1 Setting up libpsm-infinipath1 (3.3+20.604758e7-6.3build1) ...
#12 115.1 update-alternatives: using /usr/lib/libpsm1/libpsm_infinipath.so.1.16 to provide /usr/lib/x86_64-linux-gnu/libpsm_infinipath.so.1 (libpsm_infinipath.so.1) in auto mode
#12 115.1 Setting up libboost-math1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 115.1 Setting up libtsan2:amd64 (14.2.0-4ubuntu2~24.04.1) ...
#12 115.1 Setting up libjs-jquery (3.6.1+dfsg+~3.5.14-1) ...
#12 115.1 Setting up libbinutils:amd64 (2.42-4ubuntu2.10) ...
#12 115.1 Setting up libfido2-1:amd64 (1.14.0-1build3) ...
#12 115.1 Setting up libisl23:amd64 (0.26-3build1.1) ...
#12 115.1 Setting up libc-dev-bin (2.39-0ubuntu8.8) ...
#12 115.1 Setting up openssl (3.0.13-0ubuntu3.15) ...
#12 115.1 Setting up libbsd0:amd64 (0.12.1-1build1.1) ...
#12 115.1 Setting up libdrm-common (2.4.125-1ubuntu0.1~24.04.2) ...
#12 115.1 Setting up libhiredis1.1.0:amd64 (1.2.0-6ubuntu3) ...
#12 115.1 Setting up readline-common (8.2-4build1) ...
#12 115.1 Setting up libxml2:amd64 (2.9.14+dfsg-1.3ubuntu3.8) ...
#12 115.1 Setting up libcc1-0:amd64 (14.2.0-4ubuntu2~24.04.1) ...
#12 115.1 Setting up libldap2:amd64 (2.6.10+dfsg-0ubuntu0.24.04.1) ...
#12 115.1 Setting up libboost1.83-tools-dev (1.83.0-2.1ubuntu3.2) ...
#12 115.1 Setting up liblsan0:amd64 (14.2.0-4ubuntu2~24.04.1) ...
#12 115.1 Setting up libitm1:amd64 (14.2.0-4ubuntu2~24.04.1) ...
#12 115.1 Setting up libjs-underscore (1.13.4~dfsg+~1.11.4-3) ...
#12 115.1 Setting up libctf0:amd64 (2.42-4ubuntu2.10) ...
#12 115.1 Setting up libxdmcp6:amd64 (1:1.1.3-0ubuntu6) ...
#12 115.1 Setting up libboost-wave1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 115.1 Setting up libxcb1:amd64 (1.15-1ubuntu2) ...
#12 115.1 Setting up libboost-coroutine1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 115.1 Setting up cpp-13-x86-64-linux-gnu (13.3.0-6ubuntu2~24.04.1) ...
#12 115.1 Setting up libevent-pthreads-2.1-7t64:amd64 (2.1.12-stable-9ubuntu2.1) ...
#12 115.1 Setting up libboost-log1.83.0 (1.83.0-2.1ubuntu3.2) ...
#12 115.1 Setting up libedit2:amd64 (3.1-20230828-1build1) ...
#12 115.1 Setting up libevent-openssl-2.1-7t64:amd64 (2.1.12-stable-9ubuntu2.1) ...
#12 115.1 Setting up ccache (4.9.1-1) ...
#12 115.2 Updating symlinks in /usr/lib/ccache ...
#12 115.2 Setting up libboost-locale1.83.0:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 115.2 Setting up libboost-tools-dev (1.83.0.1ubuntu2) ...
#12 115.2 Setting up libboost-nowide-dev (1.83.0.1ubuntu2) ...
#12 115.2 Setting up pkgconf:amd64 (1.8.1-2build1) ...
#12 115.2 Setting up libnl-route-3-200:amd64 (3.7.0-0.3build1.1) ...
#12 115.2 Setting up ca-certificates (20260601~24.04.1) ...
#12 115.5 Updating certificates in /etc/ssl/certs...
#12 116.0 121 added, 0 removed; done.
#12 116.0 Setting up perl (5.38.2-3.2ubuntu0.4) ...
#12 116.0 Setting up libgprofng0:amd64 (2.42-4ubuntu2.10) ...
#12 116.0 Setting up libjs-jquery-ui (1.13.2+dfsg-1) ...
#12 116.0 Setting up libllvm17t64:amd64 (1:17.0.6-9ubuntu1) ...
#12 116.0 Setting up libboost-numpy-dev (1.83.0.1ubuntu2) ...
#12 116.0 Setting up libgssapi-krb5-2:amd64 (1.20.1-6ubuntu2.8) ...
#12 116.0 Setting up icu-devtools (74.2-1ubuntu3.1) ...
#12 116.0 Setting up pkg-config:amd64 (1.8.1-2build1) ...
#12 116.0 Setting up libjs-sphinxdoc (7.2.6-6) ...
#12 116.0 Setting up libdpkg-perl (1.22.6ubuntu6.6) ...
#12 116.0 Setting up libssh-4:amd64 (0.10.6-2ubuntu0.5) ...
#12 116.0 Setting up autoconf (2.71-3) ...
#12 116.0 Setting up libevent-extra-2.1-7t64:amd64 (2.1.12-stable-9ubuntu2.1) ...
#12 116.0 Setting up libreadline8t64:amd64 (8.2-4build1) ...
#12 116.0 Setting up libdrm2:amd64 (2.4.125-1ubuntu0.1~24.04.2) ...
#12 116.0 Setting up libnl-3-dev:amd64 (3.7.0-0.3build1.1) ...
#12 116.0 Setting up libgcc-13-dev:amd64 (13.3.0-6ubuntu2~24.04.1) ...
#12 116.0 Setting up libc6-dev:amd64 (2.39-0ubuntu8.8) ...
#12 116.0 Setting up libx11-6:amd64 (2:1.8.7-1build1) ...
#12 116.0 Setting up libamd-comgr2:amd64 (6.0+git20231212.4510c28+dfsg-3build2) ...
#12 116.0 Setting up libgfortran-13-dev:amd64 (13.3.0-6ubuntu2~24.04.1) ...
#12 116.0 Setting up libarchive13t64:amd64 (3.7.2-2ubuntu0.8) ...
#12 116.0 Setting up libicu-dev:amd64 (74.2-1ubuntu3.1) ...
#12 116.0 Setting up libstdc++-13-dev:amd64 (13.3.0-6ubuntu2~24.04.1) ...
#12 116.0 Setting up binutils-x86-64-linux-gnu (2.42-4ubuntu2.10) ...
#12 116.1 Setting up libdrm-amdgpu1:amd64 (2.4.125-1ubuntu0.1~24.04.2) ...
#12 116.1 Setting up cpp-x86-64-linux-gnu (4:13.2.0-7ubuntu1) ...
#12 116.1 Setting up automake (1:1.16.5-1.3ubuntu1) ...
#12 116.1 update-alternatives: using /usr/bin/automake-1.16 to provide /usr/bin/automake (automake) in auto mode
#12 116.1 update-alternatives: warning: skip creation of /usr/share/man/man1/automake.1.gz because associated file /usr/share/man/man1/automake-1.16.1.gz (of link group automake) doesn't exist
#12 116.1 update-alternatives: warning: skip creation of /usr/share/man/man1/aclocal.1.gz because associated file /usr/share/man/man1/aclocal-1.16.1.gz (of link group automake) doesn't exist
#12 116.1 Setting up libibverbs1:amd64 (50.0-2ubuntu0.2) ...
#12 116.2 Setting up libboost1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 116.2 Setting up libncurses-dev:amd64 (6.4+20240113-1ubuntu2.2) ...
#12 116.2 Setting up libboost-chrono1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 116.2 Setting up libpython3.12-stdlib:amd64 (3.12.3-1ubuntu0.16) ...
#12 116.2 Setting up cpp-13 (13.3.0-6ubuntu2~24.04.1) ...
#12 116.2 Setting up libcurl4t64:amd64 (8.5.0-2ubuntu10.13) ...
#12 116.2 Setting up ibverbs-providers:amd64 (50.0-2ubuntu0.2) ...
#12 116.3 Setting up libboost-math1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 116.3 Setting up libboost-chrono-dev:amd64 (1.83.0.1ubuntu2) ...
#12 116.3 Setting up openssh-client (1:9.6p1-3ubuntu13.19) ...
#12 116.3 Setting up gcc-13-x86-64-linux-gnu (13.3.0-6ubuntu2~24.04.1) ...
#12 116.3 Setting up libboost-math-dev:amd64 (1.83.0.1ubuntu2) ...
#12 116.3 Setting up python3.12 (3.12.3-1ubuntu0.16) ...
#12 117.1 Setting up libboost-program-options1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.1 Setting up libboost-serialization1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.1 Setting up libcurl3t64-gnutls:amd64 (8.5.0-2ubuntu10.13) ...
#12 117.1 Setting up libxext6:amd64 (2:1.3.4-1build2) ...
#12 117.1 Setting up libboost-test1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.1 Setting up binutils (2.42-4ubuntu2.10) ...
#12 117.1 Setting up libreadline-dev:amd64 (8.2-4build1) ...
#12 117.1 Setting up gfortran-13-x86-64-linux-gnu (13.3.0-6ubuntu2~24.04.1) ...
#12 117.1 Setting up dpkg-dev (1.22.6ubuntu6.6) ...
#12 117.1 Setting up libnuma-dev:amd64 (2.0.18-1ubuntu0.24.04.1) ...
#12 117.1 Setting up libxnvctrl0:amd64 (510.47.03-0ubuntu4.24.04.1) ...
#12 117.1 Setting up libboost-test-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.1 Setting up liberror-perl (0.17029-2) ...
#12 117.2 Setting up libpython3.12t64:amd64 (3.12.3-1ubuntu0.16) ...
#12 117.2 Setting up libnl-route-3-dev:amd64 (3.7.0-0.3build1.1) ...
#12 117.2 Setting up libltdl-dev:amd64 (2.4.7-7build1) ...
#12 117.2 Setting up libboost-timer1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.2 Setting up libexpat1-dev:amd64 (2.6.1-2ubuntu0.4) ...
#12 117.2 Setting up libboost-program-options-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.2 Setting up libboost-container1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.2 Setting up libboost-date-time1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.2 Setting up libevent-dev (2.1.12-stable-9ubuntu2.1) ...
#12 117.2 Setting up gcc-13 (13.3.0-6ubuntu2~24.04.1) ...
#12 117.2 Setting up libboost-stacktrace1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.2 Setting up libboost-regex1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.2 Setting up libboost-serialization-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.2 Setting up git (1:2.43.0-1ubuntu7.3) ...
#12 117.2 Setting up libboost-date-time-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.2 Setting up libboost-atomic1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.2 Setting up zlib1g-dev:amd64 (1:1.3.dfsg-3.1ubuntu2.2) ...
#12 117.2 Setting up libboost-atomic-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.2 Setting up libboost-exception1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.2 Setting up cpp (4:13.2.0-7ubuntu1) ...
#12 117.2 Setting up libboost-stacktrace-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.2 Setting up cmake (3.28.3-1build7) ...
#12 117.2 Setting up librdmacm1t64:amd64 (50.0-2ubuntu0.2) ...
#12 117.2 Setting up libhwloc-dev:amd64 (2.10.0-1build1) ...
#12 117.2 Setting up libboost-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.2 Setting up libboost-system1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.2 Setting up libboost-regex-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.2 Setting up libboost-timer-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.2 Setting up libhsakmt1:amd64 (5.7.0-1build1) ...
#12 117.2 Setting up libmysqlclient-dev (8.0.46-0ubuntu0.24.04.4) ...
#12 117.2 Setting up libpython3-stdlib:amd64 (3.12.3-0ubuntu2.1) ...
#12 117.2 Setting up default-libmysqlclient-dev:amd64 (1.1.0build1) ...
#12 117.2 Setting up libboost-thread1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.2 Setting up libfabric1:amd64 (1.17.0-3build2) ...
#12 117.2 Setting up libboost-json1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.3 Setting up libboost-locale1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.3 Setting up g++-13-x86-64-linux-gnu (13.3.0-6ubuntu2~24.04.1) ...
#12 117.3 Setting up gcc-x86-64-linux-gnu (4:13.2.0-7ubuntu1) ...
#12 117.3 Setting up libboost-iostreams1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.3 Setting up libboost-system-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.3 Setting up libboost-type-erasure1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.3 Setting up libboost-url1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.3 Setting up libboost-locale-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.3 Setting up python3 (3.12.3-0ubuntu2.1) ...
#12 117.4 Setting up libpython3.12-dev:amd64 (3.12.3-1ubuntu0.16) ...
#12 117.4 Setting up libboost-filesystem1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.4 Setting up libboost-exception-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.4 Setting up libboost-iostreams-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.4 Setting up libibverbs-dev:amd64 (50.0-2ubuntu0.2) ...
#12 117.4 Setting up libhwloc-plugins:amd64 (2.10.0-1build1) ...
#12 117.4 Setting up libboost-graph1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.4 Setting up libboost-container-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.4 Setting up gcc (4:13.2.0-7ubuntu1) ...
#12 117.4 Setting up libboost-type-erasure-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.4 Setting up libboost-context1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.4 Setting up libboost-coroutine1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.4 Setting up libboost-fiber1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.4 Setting up gfortran-13 (13.3.0-6ubuntu2~24.04.1) ...
#12 117.4 Setting up python3.12-dev (3.12.3-1ubuntu0.16) ...
#12 117.4 Setting up libboost-random1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.4 Setting up libpmix2t64:amd64 (5.0.1-4.1build1) ...
#12 117.4 Setting up libhsa-runtime64-1 (5.7.1-2build1) ...
#12 117.4 Setting up g++-x86-64-linux-gnu (4:13.2.0-7ubuntu1) ...
#12 117.4 Setting up libboost-url-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.4 Setting up libboost-coroutine-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.4 Setting up libboost-log1.83-dev (1.83.0-2.1ubuntu3.2) ...
#12 117.4 Setting up libboost-json-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.4 Setting up libboost-log-dev (1.83.0.1ubuntu2) ...
#12 117.4 Setting up libboost-filesystem-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.4 Setting up libpmix-dev:amd64 (5.0.1-4.1build1) ...
#12 117.4 Setting up libboost-thread-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.4 Setting up libboost-fiber-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.5 Setting up g++-13 (13.3.0-6ubuntu2~24.04.1) ...
#12 117.5 Setting up libboost-graph-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.5 Setting up libpython3-dev:amd64 (3.12.3-0ubuntu2.1) ...
#12 117.5 Setting up libboost-wave1.83-dev:amd64 (1.83.0-2.1ubuntu3.2) ...
#12 117.5 Setting up libboost-random-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.5 Setting up libboost-wave-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.5 Setting up libboost-context-dev:amd64 (1.83.0.1ubuntu2) ...
#12 117.5 Setting up libamdhip64-5 (5.7.1-3) ...
#12 117.5 Setting up python3-dev (3.12.3-0ubuntu2.1) ...
#12 117.5 Setting up libboost-python1.83-dev (1.83.0-2.1ubuntu3.2) ...
#12 117.5 Setting up g++ (4:13.2.0-7ubuntu1) ...
#12 117.5 update-alternatives: using /usr/bin/g++ to provide /usr/bin/c++ (c++) in auto mode
#12 117.5 update-alternatives: warning: skip creation of /usr/share/man/man1/c++.1.gz because associated file /usr/share/man/man1/g++.1.gz (of link group c++) doesn't exist
#12 117.5 Setting up build-essential (12.10ubuntu1) ...
#12 117.5 Setting up libucx0:amd64 (1.16.0+ds-5ubuntu1) ...
#12 117.5 Setting up libboost-python-dev (1.83.0.1ubuntu2) ...
#12 117.5 Setting up libopenmpi3t64:amd64 (4.1.6-7ubuntu2) ...
#12 117.5 Setting up libboost-mpi1.83.0 (1.83.0-2.1ubuntu3.2) ...
#12 117.5 Setting up openmpi-bin (4.1.6-7ubuntu2) ...
#12 117.5 update-alternatives: using /usr/bin/mpirun.openmpi to provide /usr/bin/mpirun (mpirun) in auto mode
#12 117.5 update-alternatives: warning: skip creation of /usr/share/man/man1/mpirun.1.gz because associated file /usr/share/man/man1/mpirun.openmpi.1.gz (of link group mpirun) doesn't exist
#12 117.5 update-alternatives: warning: skip creation of /usr/share/man/man1/mpiexec.1.gz because associated file /usr/share/man/man1/mpiexec.openmpi.1.gz (of link group mpirun) doesn't exist
#12 117.5 update-alternatives: using /usr/bin/mpicc.openmpi to provide /usr/bin/mpicc (mpi) in auto mode
#12 117.5 update-alternatives: warning: skip creation of /usr/share/man/man1/mpicc.1.gz because associated file /usr/share/man/man1/mpicc.openmpi.1.gz (of link group mpi) doesn't exist
#12 117.5 update-alternatives: warning: skip creation of /usr/share/man/man1/mpic++.1.gz because associated file /usr/share/man/man1/mpic++.openmpi.1.gz (of link group mpi) doesn't exist
#12 117.5 update-alternatives: warning: skip creation of /usr/share/man/man1/mpicxx.1.gz because associated file /usr/share/man/man1/mpicxx.openmpi.1.gz (of link group mpi) doesn't exist
#12 117.5 update-alternatives: warning: skip creation of /usr/share/man/man1/mpiCC.1.gz because associated file /usr/share/man/man1/mpiCC.openmpi.1.gz (of link group mpi) doesn't exist
#12 117.5 update-alternatives: warning: skip creation of /usr/share/man/man1/mpif77.1.gz because associated file /usr/share/man/man1/mpif77.openmpi.1.gz (of link group mpi) doesn't exist
#12 117.5 update-alternatives: warning: skip creation of /usr/share/man/man1/mpif90.1.gz because associated file /usr/share/man/man1/mpif90.openmpi.1.gz (of link group mpi) doesn't exist
#12 117.5 update-alternatives: warning: skip creation of /usr/share/man/man1/mpifort.1.gz because associated file /usr/share/man/man1/mpifort.openmpi.1.gz (of link group mpi) doesn't exist
#12 117.5 Setting up libboost-graph-parallel1.83.0 (1.83.0-2.1ubuntu3.2) ...
#12 117.5 Setting up mpi-default-bin (1.15build1) ...
#12 117.5 Setting up libopenmpi-dev:amd64 (4.1.6-7ubuntu2) ...
#12 117.5 update-alternatives: using /usr/lib/x86_64-linux-gnu/openmpi/include to provide /usr/include/x86_64-linux-gnu/mpi (mpi-x86_64-linux-gnu) in auto mode
#12 117.5 Setting up libboost-graph-parallel1.83-dev (1.83.0-2.1ubuntu3.2) ...
#12 117.5 Setting up libboost-mpi-python1.83.0 (1.83.0-2.1ubuntu3.2) ...
#12 117.6 Setting up libboost-graph-parallel-dev (1.83.0.1ubuntu2) ...
#12 117.6 Setting up mpi-default-dev (1.15build1) ...
#12 117.6 Setting up libboost-mpi1.83-dev (1.83.0-2.1ubuntu3.2) ...
#12 117.6 Setting up libboost-mpi-dev (1.83.0.1ubuntu2) ...
#12 117.6 Setting up libboost-mpi-python1.83-dev (1.83.0-2.1ubuntu3.2) ...
#12 117.6 Setting up libboost-mpi-python-dev (1.83.0.1ubuntu2) ...
#12 117.6 Setting up libboost-all-dev (1.83.0.1ubuntu2) ...
#12 117.6 Processing triggers for libc-bin (2.39-0ubuntu8.8) ...
#12 117.6 Processing triggers for ca-certificates (20260601~24.04.1) ...
#12 117.7 Updating certificates in /etc/ssl/certs...
#12 118.0 0 added, 0 removed; done.
#12 118.0 Running hooks in /etc/ca-certificates/update.d...
#12 118.0 done.
#12 DONE 121.1s

#13 [worldserver builder 3/5] RUN git clone --depth 1 --branch "main" "https://github.com/xHashii/3.4.3_Source.git" /src  && cd /src  && if [ -n "" ]; then       git fetch --depth 1 origin ""       && git checkout --quiet --detach "";     fi  && git rev-parse HEAD
#13 0.114 Cloning into '/src'...
#13 1.661 cd398483dc209a9d09c140880fa0f3b6b936a02c
#13 DONE 1.8s

#14 [bnetserver builder 4/5] WORKDIR /src
#14 DONE 0.0s

#15 [bnetserver builder 5/5] RUN cmake -B build -G Ninja       -DCMAKE_BUILD_TYPE=Release       -DCMAKE_INSTALL_PREFIX=/opt/tc       -DCMAKE_C_COMPILER_LAUNCHER=ccache       -DCMAKE_CXX_COMPILER_LAUNCHER=ccache       -DCMAKE_CXX_FLAGS="-Wno-changes-meaning"       -DSERVERS=ON       -DTOOLS=ON       -DWITH_DYNAMIC_LINKING=OFF       -DCOPY_CONF=ON  && ninja -C build -j"$(nproc)"  && DESTDIR=/stage ninja -C build install
#15 0.189 -- The C compiler identification is GNU 13.3.0
#15 0.242 -- The CXX compiler identification is GNU 13.3.0
#15 0.259 -- Detecting C compiler ABI info
#15 0.320 -- Detecting C compiler ABI info - done
#15 0.330 -- Check for working C compiler: /usr/bin/cc - skipped
#15 0.330 -- Detecting C compile features
#15 0.331 -- Detecting C compile features - done
#15 0.341 -- Detecting CXX compiler ABI info
#15 0.407 -- Detecting CXX compiler ABI info - done
#15 0.417 -- Check for working CXX compiler: /usr/bin/c++ - skipped
#15 0.418 -- Detecting CXX compile features
#15 0.418 -- Detecting CXX compile features - done
#15 0.422 -- Detected 64-bit platform
#15 0.422 -- UNIX: Using default configuration directory
#15 0.423 -- UNIX: Configuring uninstall target
#15 0.423 -- UNIX: Created uninstall target
#15 0.423 -- UNIX: Using default system linker
#15 0.423 -- UNIX: Detected compiler: /usr/bin/cc
#15 0.423 -- GCC: Minimum version required is 10.0.0, found 13.3.0 - ok!
#15 0.423 -- GCC: SFMT enabled, SSE2 flags forced
#15 0.427 -- Found Git: /usr/bin/git (found suitable version "2.43.0", minimum required is "1.7") 
#15 0.429 -- Using mysql-config: /usr/bin/mysql_config
#15 0.447 -- Found MySQL:    missing components: binary
#15 0.792 
#15 0.792 * TrinityCore revision   : cd398483dc20 2026-09-04 22:31:49 +0300 (main branch)
#15 0.792 * TrinityCore buildtype  : Release
#15 0.792 
#15 0.792 * Install core to        : /opt/tc
#15 0.792 * Install configs to     : /opt/tc/etc
#15 0.792 
#15 0.792 * Build world/auth       : Yes (default)
#15 0.792 * Build with scripts     : Yes (static)
#15 0.792 * Build map/vmap tools   : Yes (default)
#15 0.792 * Build unit tests       : No (default)
#15 0.792 * Build core w/PCH       : Yes (default)
#15 0.792 * Build scripts w/PCH    : Yes (default)
#15 0.792 * Show compile-warnings  : No  (default)
#15 0.792 * Use coreside debug     : No  (default)
#15 0.792 * Show source tree       : Yes (hierarchical)
#15 0.792 * Use GIT revision hash  : Yes (default)
#15 0.792 
#15 0.794 -- Performing Test CMAKE_HAVE_LIBC_PTHREAD
#15 0.847 -- Performing Test CMAKE_HAVE_LIBC_PTHREAD - Success
#15 0.848 -- Found Threads: TRUE  
#15 0.871 -- Found Boost: /usr/lib/x86_64-linux-gnu/cmake/Boost-1.83.0/BoostConfig.cmake (found suitable version "1.83.0", minimum required is "1.71") found components: system filesystem program_options iostreams regex locale 
#15 0.880 -- Found ZLIB: /usr/lib/x86_64-linux-gnu/libz.so (found version "1.3")  
#15 0.927 -- Found OpenSSL: /usr/lib/x86_64-linux-gnu/libcrypto.so (found suitable version "3.0.13", minimum required is "1.1") found components: Crypto SSL 
#15 0.928 -- Looking for MADV_FREE
#15 0.978 -- Looking for MADV_FREE - found
#15 0.982 -- Using mysql-config: /usr/bin/mysql_config
#15 0.995 -- Found MySQL: /usr/lib/x86_64-linux-gnu/libmysqlclient.so  found components: lib 
#15 1.054 -- Found MySQL version: "8.0.46", minimum required is ""
#15 1.054 -- Found MySQL library: /usr/lib/x86_64-linux-gnu/libmysqlclient.so
#15 1.054 -- Found MySQL headers: /usr/include/mysql
#15 1.059 -- Found Readline: /usr/lib/x86_64-linux-gnu/libreadline.so (found version "8.2") 
#15 1.059 -- Found Readline library: /usr/lib/x86_64-linux-gnu/libreadline.so
#15 1.059 -- Found Readline headers: /usr/include
#15 1.216 
#15 1.217 * Script configuration (static):
#15 1.217     |
#15 1.217     +- worldserver
#15 1.217     |   +- Battlefield
#15 1.217     |   +- Commands
#15 1.217     |   +- Custom
#15 1.217     |   +- EasternKingdoms
#15 1.217     |   +- Events
#15 1.217     |   +- Kalimdor
#15 1.217     |   +- Northrend
#15 1.217     |   +- OutdoorPvP
#15 1.217     |   +- Outland
#15 1.217     |   +- Pet
#15 1.217     |   +- Spells
#15 1.217     |   +- World
#15 1.217     |
#15 1.315 
#15 1.326 -- Configuring done (1.2s)
#15 1.541 -- Generating done (0.2s)
#15 1.545 -- Build files have been written to: /src/build
#15 1.582 ninja: Entering directory `build'
#15 2.641 [1/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/BinaryFormat.cpp.o
#15 3.031 [2/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/AnyTableReader.cpp.o
#15 3.145 [3/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/AABox.cpp.o
#15 4.806 [4/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/Box.cpp.o
#15 5.023 [5/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/BinaryOutput.cpp.o
#15 5.483 [6/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/Any.cpp.o
#15 6.038 [7/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/BinaryInput.cpp.o
#15 6.054 [8/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/Capsule.cpp.o
#15 7.055 [9/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/Crypto.cpp.o
#15 7.344 [10/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/Cylinder.cpp.o
#15 7.534 [11/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/CollisionDetection.cpp.o
#15 8.114 [12/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/debugAssert.cpp.o
#15 8.121 [13/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/CoordinateFrame.cpp.o
#15 8.861 [14/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/g3dfnmatch.cpp.o
#15 9.148 [15/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/format.cpp.o
#15 10.08 [16/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/g3dmath.cpp.o
#15 10.65 [17/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/GThread.cpp.o
#15 10.72 [18/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/fileutils.cpp.o
#15 11.30 [19/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/Line.cpp.o
#15 11.52 [20/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/FileSystem.cpp.o
#15 11.98 [21/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/LineSegment.cpp.o
#15 12.19 [22/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/Log.cpp.o
#15 13.09 [23/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/MemoryManager.cpp.o
#15 13.26 [24/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/Matrix4.cpp.o
#15 13.59 [25/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/Matrix3.cpp.o
#15 13.62 [26/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/PhysicsFrame.cpp.o
#15 13.97 [27/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/prompt.cpp.o
#15 14.39 [28/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/Plane.cpp.o
#15 14.77 [29/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/Random.cpp.o
#15 15.08 [30/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/RegistryUtil.cpp.o
#15 15.25 [31/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/Ray.cpp.o
#15 15.54 [32/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/Quat.cpp.o
#15 16.12 [33/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/Sphere.cpp.o
#15 17.38 [34/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/stringutils.cpp.o
#15 18.23 [35/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/TextOutput.cpp.o
#15 18.42 [36/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/System.cpp.o
#15 18.60 [37/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/Triangle.cpp.o
#15 19.12 [38/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/TextInput.cpp.o
#15 19.21 [39/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/uint128.cpp.o
#15 20.01 [40/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/Vector2.cpp.o
#15 20.09 [41/1373] Building CXX object dep/recastnavigation/Detour/CMakeFiles/Detour.dir/Source/DetourAlloc.cpp.o
#15 20.12 [42/1373] Building CXX object dep/recastnavigation/Detour/CMakeFiles/Detour.dir/Source/DetourAssert.cpp.o
#15 20.60 [43/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/UprightFrame.cpp.o
#15 20.67 [44/1373] Building CXX object dep/recastnavigation/Detour/CMakeFiles/Detour.dir/Source/DetourCommon.cpp.o
#15 20.91 [45/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/Vector3.cpp.o
#15 21.17 [46/1373] Building CXX object dep/g3dlite/CMakeFiles/g3dlib.dir/source/Vector4.cpp.o
#15 21.23 [47/1373] Linking CXX static library dep/g3dlite/libg3dlib.a
#15 21.54 [48/1373] Building CXX object dep/recastnavigation/Detour/CMakeFiles/Detour.dir/Source/DetourNavMeshBuilder.cpp.o
#15 21.65 [49/1373] Building CXX object dep/recastnavigation/Detour/CMakeFiles/Detour.dir/Source/DetourNode.cpp.o
#15 21.74 [50/1373] Building CXX object dep/recastnavigation/Recast/CMakeFiles/Recast.dir/Source/RecastAlloc.cpp.o
#15 21.77 [51/1373] Building CXX object dep/recastnavigation/Recast/CMakeFiles/Recast.dir/Source/RecastAssert.cpp.o
#15 21.80 [52/1373] Building CXX object dep/recastnavigation/Detour/CMakeFiles/Detour.dir/Source/DetourNavMesh.cpp.o
#15 22.14 [53/1373] Building CXX object dep/recastnavigation/Recast/CMakeFiles/Recast.dir/Source/Recast.cpp.o
#15 22.52 [54/1373] Building CXX object dep/recastnavigation/Recast/CMakeFiles/Recast.dir/Source/RecastArea.cpp.o
#15 22.58 [55/1373] Building CXX object dep/recastnavigation/Recast/CMakeFiles/Recast.dir/Source/RecastFilter.cpp.o
#15 22.90 [56/1373] Building CXX object dep/recastnavigation/Detour/CMakeFiles/Detour.dir/Source/DetourNavMeshQuery.cpp.o
#15 22.92 [57/1373] Linking CXX static library dep/recastnavigation/Detour/libDetour.a
#15 23.12 [58/1373] Building CXX object dep/recastnavigation/Recast/CMakeFiles/Recast.dir/Source/RecastContour.cpp.o
#15 23.31 [59/1373] Building CXX object dep/recastnavigation/Recast/CMakeFiles/Recast.dir/Source/RecastLayers.cpp.o
#15 23.69 [60/1373] Building CXX object dep/recastnavigation/Recast/CMakeFiles/Recast.dir/Source/RecastRasterization.cpp.o
#15 23.98 [61/1373] Building CXX object dep/recastnavigation/Recast/CMakeFiles/Recast.dir/Source/RecastMesh.cpp.o
#15 24.84 [62/1373] Building CXX object dep/recastnavigation/Recast/CMakeFiles/Recast.dir/Source/RecastMeshDetail.cpp.o
#15 25.08 [63/1373] Building C object dep/SFMT/CMakeFiles/sfmt.dir/SFMT.c.o
#15 25.10 [64/1373] Linking CXX static library dep/SFMT/libsfmt.a
#15 25.16 [65/1373] Building CXX object dep/fmt/CMakeFiles/fmt.dir/src/os.cc.o
#15 25.58 [66/1373] Building CXX object dep/recastnavigation/Recast/CMakeFiles/Recast.dir/Source/RecastRegion.cpp.o
#15 25.61 [67/1373] Linking CXX static library dep/recastnavigation/Recast/libRecast.a
#15 25.84 [68/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/background_thread.c.o
#15 26.13 [69/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/base.c.o
#15 26.26 [70/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/bin.c.o
#15 26.48 [71/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/arena.c.o
#15 26.51 [72/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/bitmap.c.o
#15 26.71 [73/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/div.c.o
#15 26.88 [74/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/ckh.c.o
#15 27.33 [75/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/extent_dss.c.o
#15 27.73 [76/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/extent_mmap.c.o
#15 28.10 [77/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/ctl.c.o
#15 28.11 [78/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/hash.c.o
#15 28.39 [79/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/hook.c.o
#15 28.56 [80/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/extent.c.o
#15 29.26 [81/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/large.c.o
#15 29.30 [82/1373] Building CXX object dep/jemalloc/CMakeFiles/jemalloc.dir/src/jemalloc_cpp.cpp.o
#15 29.39 [83/1373] Building CXX object dep/fmt/CMakeFiles/fmt.dir/src/format.cc.o
#15 29.41 [84/1373] Linking CXX static library dep/fmt/libfmt.a
#15 29.67 [85/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/log.c.o
#15 29.82 [86/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/mutex.c.o
#15 29.96 [87/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/malloc_io.c.o
#15 30.06 [88/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/mutex_pool.c.o
#15 30.20 [89/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/nstime.c.o
#15 30.41 [90/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/pages.c.o
#15 30.43 [91/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/prng.c.o
#15 30.62 [92/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/jemalloc.c.o
#15 30.80 [93/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/safety_check.c.o
#15 30.84 [94/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/rtree.c.o
#15 31.00 [95/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/prof.c.o
#15 31.06 [96/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/sz.c.o
#15 31.08 [97/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/sc.c.o
#15 31.24 [98/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/test_hooks.c.o
#15 31.42 [99/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/stats.c.o
#15 31.45 [100/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/ticker.c.o
#15 31.72 [101/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/tsd.c.o
#15 31.76 [102/1373] Building C object dep/argon2/CMakeFiles/argon2.dir/argon2/argon2.c.o
#15 31.81 [103/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/witness.c.o
#15 31.88 [104/1373] Building C object dep/jemalloc/CMakeFiles/jemalloc.dir/src/tcache.c.o
#15 31.92 [105/1373] Linking CXX static library dep/jemalloc/libjemalloc.a
#15 31.94 [106/1373] Building C object dep/argon2/CMakeFiles/argon2.dir/argon2/blake2/blake2b.c.o
#15 31.96 [107/1373] Building C object dep/argon2/CMakeFiles/argon2.dir/argon2/core.c.o
#15 31.97 [108/1373] Building C object dep/argon2/CMakeFiles/argon2.dir/argon2/thread.c.o
#15 32.03 [109/1373] Building C object dep/argon2/CMakeFiles/argon2.dir/argon2/encoding.c.o
#15 32.25 [110/1373] Building C object dep/argon2/CMakeFiles/argon2.dir/argon2/opt.c.o
#15 32.27 [111/1373] Linking CXX static library dep/argon2/libargon2.a
#15 33.18 [112/1373] Building CXX object dep/gsoap/CMakeFiles/gsoap.dir/soapServer.cpp.o
#15 33.32 [113/1373] Building C object dep/openssl_ed25519/CMakeFiles/openssl_ed25519.dir/curve25519.c.o
#15 33.40 [114/1373] Linking CXX shared library dep/openssl_ed25519/libopenssl_ed25519.so
#15 34.01 [115/1373] Building CXX object dep/gsoap/CMakeFiles/gsoap.dir/soapC.cpp.o
#15 35.21 [116/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/compiler/importer.cc.o
#15 36.79 [117/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/compiler/parser.cc.o
#15 39.73 [118/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/descriptor_database.cc.o
#15 41.10 [119/1373] Building CXX object dep/gsoap/CMakeFiles/gsoap.dir/stdsoap2.cpp.o
#15 41.12 [120/1373] Linking CXX static library dep/gsoap/libgsoap.a
#15 41.22 [121/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/dynamic_message.cc.o
#15 41.83 [122/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/descriptor.pb.cc.o
#15 42.34 [123/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/descriptor.cc.o
#15 42.85 [124/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/generated_message_util.cc.o
#15 42.92 [125/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/extension_set_heavy.cc.o
#15 42.94 [126/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/io/gzip_stream.cc.o
#15 43.84 [127/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/extension_set.cc.o
#15 43.97 [128/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/io/printer.cc.o
#15 44.03 [129/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/io/coded_stream.cc.o
#15 44.43 [130/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/io/strtod.cc.o
#15 44.51 [131/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/io/zero_copy_stream.cc.o
#15 44.93 [132/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/generated_message_reflection.cc.o
#15 45.35 [133/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/io/zero_copy_stream_impl_lite.cc.o
#15 45.38 [134/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/io/zero_copy_stream_impl.cc.o
#15 45.56 [135/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/io/tokenizer.cc.o
#15 46.22 [136/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/repeated_field.cc.o
#15 46.30 [137/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/message_lite.cc.o
#15 46.39 [138/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/message.cc.o
#15 46.67 [139/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/reflection_ops.cc.o
#15 46.69 [140/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/service.cc.o
#15 46.88 [141/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/stubs/once.cc.o
#15 47.22 [142/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/stubs/structurally_valid.cc.o
#15 47.34 [143/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/stubs/stringprintf.cc.o
#15 47.54 [144/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/stubs/common.cc.o
#15 47.83 [145/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/stubs/substitute.cc.o
#15 48.56 [146/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/stubs/strutil.cc.o
#15 48.78 [147/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/unknown_field_set.cc.o
#15 49.26 [148/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/stubs/atomicops_internals_x86_gcc.cc.o
#15 49.52 [149/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/wire_format.cc.o
#15 49.56 [150/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/wire_format_lite.cc.o
#15 49.65 [151/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/common/Common.cpp.o
#15 49.76 [152/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/common/Directory.cpp.o
#15 49.94 [153/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/common/Csv.cpp.o
#15 50.25 [154/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/common/ListFile.cpp.o
#15 50.28 [155/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/common/FileTree.cpp.o
#15 50.37 [156/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/common/FileStream.cpp.o
#15 50.59 [157/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/common/RootHandler.cpp.o
#15 50.68 [158/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/common/Mime.cpp.o
#15 50.75 [159/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/common/Sockets.cpp.o
#15 50.77 [160/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/hashes/md5.cpp.o
#15 50.96 [161/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/hashes/sha1.cpp.o
#15 51.00 [162/1373] Building C object dep/CascLib/CMakeFiles/casc.dir/src/jenkins/lookup3.c.o
#15 51.05 [163/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/overwatch/apm.cpp.o
#15 51.16 [164/1373] Building CXX object dep/protobuf/CMakeFiles/protobuf.dir/src/google/protobuf/text_format.cc.o
#15 51.22 [165/1373] Linking CXX static library dep/protobuf/libprotobuf.a
#15 51.27 [166/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/CascDecompress.cpp.o
#15 51.37 [167/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/overwatch/aes.cpp.o
#15 51.51 [168/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/CascDumpData.cpp.o
#15 51.64 [169/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/CascDecrypt.cpp.o
#15 51.85 [170/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/CascFindFile.cpp.o
#15 52.22 [171/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/CascIndexFiles.cpp.o
#15 52.24 [172/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/CascOpenFile.cpp.o
#15 52.72 [173/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/CascFiles.cpp.o
#15 52.74 [174/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/CascReadFile.cpp.o
#15 53.00 [175/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/CascRootFile_Install.cpp.o
#15 53.02 [176/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/CascOpenStorage.cpp.o
#15 53.28 [177/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/CascRootFile_Text.cpp.o
#15 53.48 [178/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/CascRootFile_Diablo3.cpp.o
#15 53.78 [179/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/CascRootFile_TVFS.cpp.o
#15 53.82 [180/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/CascRootFile_OW.cpp.o
#15 54.22 [181/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/CascRootFile_WoW.cpp.o
#15 54.34 [182/1373] cd /src && /usr/bin/cmake -DBUILDDIR="/src/build" -P /src/cmake/genrev.cmake /src/build
#15 54.84 [183/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/CascRootFile_MNDX.cpp.o
#15 55.19 [184/1373] Building CXX object dep/CascLib/CMakeFiles/casc.dir/src/overwatch/cmf.cpp.o
#15 55.24 [185/1373] Linking CXX static library dep/CascLib/libcasc.a
#15 57.60 [186/1373] Building CXX object src/common/CMakeFiles/common.dir/cmake_pch.hxx.gch
#15 57.71 [187/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/cmake_pch.hxx.gch
#15 57.85 [188/1373] Building CXX object src/server/database/CMakeFiles/database.dir/cmake_pch.hxx.gch
#15 57.89 [189/1373] Building CXX object src/common/CMakeFiles/common.dir/Banner.cpp.o
#15 57.99 [190/1373] Building CXX object src/common/CMakeFiles/common.dir/Common.cpp.o
#15 58.11 [191/1373] Building CXX object src/common/CMakeFiles/common.dir/GitRevision.cpp.o
#15 58.70 [192/1373] Building CXX object src/common/CMakeFiles/common.dir/Collision/BoundingIntervalHierarchy.cpp.o
#15 58.94 [193/1373] Building CXX object src/common/CMakeFiles/common.dir/Asio/IpNetwork.cpp.o
#15 59.07 [194/1373] Building CXX object src/common/CMakeFiles/common.dir/Collision/Management/MMapFactory.cpp.o
#15 59.36 [195/1373] Building CXX object src/common/CMakeFiles/common.dir/Collision/Management/VMapFactory.cpp.o
#15 60.05 [196/1373] Building CXX object src/common/CMakeFiles/common.dir/Collision/Management/MMapManager.cpp.o
#15 60.27 [197/1373] Building CXX object src/common/CMakeFiles/common.dir/Collision/Maps/MapDefines.cpp.o
#15 60.78 [198/1373] Building CXX object src/common/CMakeFiles/common.dir/Collision/Management/VMapManager2.cpp.o
#15 61.39 [199/1373] Building CXX object src/server/shared/CMakeFiles/shared.dir/cmake_pch.hxx.gch
#15 61.46 [200/1373] Building CXX object src/common/CMakeFiles/common.dir/Collision/DynamicTree.cpp.o
#15 61.82 [201/1373] Building CXX object src/common/CMakeFiles/common.dir/Collision/Models/ModelInstance.cpp.o
#15 62.20 [202/1373] Building CXX object src/common/CMakeFiles/common.dir/Configuration/BuiltInConfig.cpp.o
#15 62.51 [203/1373] Building CXX object src/common/CMakeFiles/common.dir/Collision/Models/GameObjectModel.cpp.o
#15 62.77 [204/1373] Building CXX object src/common/CMakeFiles/common.dir/Collision/Maps/MapTree.cpp.o
#15 62.87 [205/1373] Building CXX object src/common/CMakeFiles/common.dir/Cryptography/AES.cpp.o
#15 63.02 [206/1373] Building CXX object src/common/CMakeFiles/common.dir/Collision/Models/WorldModel.cpp.o
#15 63.10 [207/1373] Building CXX object src/common/CMakeFiles/common.dir/Cryptography/ARC4.cpp.o
#15 63.20 [208/1373] Building CXX object src/common/CMakeFiles/common.dir/Cryptography/Argon2.cpp.o
#15 63.41 [209/1373] Building CXX object src/common/CMakeFiles/common.dir/Cryptography/CryptoRandom.cpp.o
#15 63.43 [210/1373] Building CXX object src/common/CMakeFiles/common.dir/Cryptography/BigNumber.cpp.o
#15 63.65 [211/1373] Building CXX object src/common/CMakeFiles/common.dir/Cryptography/Ed25519.cpp.o
#15 63.98 [212/1373] Building CXX object src/common/CMakeFiles/common.dir/Cryptography/TOTP.cpp.o
#15 64.03 [213/1373] Building CXX object src/common/CMakeFiles/common.dir/Cryptography/RSA.cpp.o
#15 64.17 [214/1373] Building CXX object src/common/CMakeFiles/common.dir/Cryptography/OpenSSLCrypto.cpp.o
#15 64.39 [215/1373] Building CXX object src/common/CMakeFiles/common.dir/Cryptography/Authentication/WorldPacketCrypt.cpp.o
#15 64.94 [216/1373] Building CXX object src/common/CMakeFiles/common.dir/Cryptography/Authentication/SRP6.cpp.o
#15 65.29 [217/1373] Building CXX object src/common/CMakeFiles/common.dir/DataStores/DB2FileSystemSource.cpp.o
#15 65.31 [218/1373] Building CXX object src/common/CMakeFiles/common.dir/DataStores/DB2Meta.cpp.o
#15 65.80 [219/1373] Building CXX object src/common/CMakeFiles/common.dir/Encoding/Base64.cpp.o
#15 65.80 [220/1373] Building CXX object src/common/CMakeFiles/common.dir/Encoding/Base32.cpp.o
#15 66.23 [221/1373] Building CXX object src/common/CMakeFiles/common.dir/Logging/Appender.cpp.o
#15 66.84 [222/1373] Building CXX object src/common/CMakeFiles/common.dir/Logging/AppenderConsole.cpp.o
#15 67.18 [223/1373] Building CXX object src/common/CMakeFiles/common.dir/Configuration/Config.cpp.o
#15 67.60 [224/1373] Building CXX object src/common/CMakeFiles/common.dir/Logging/AppenderFile.cpp.o
#15 67.70 [225/1373] Building CXX object src/common/CMakeFiles/common.dir/DataStores/DB2FileLoader.cpp.o
#15 67.80 [226/1373] Building CXX object src/common/CMakeFiles/common.dir/IPLocation/IPLocation.cpp.o
#15 67.98 [227/1373] Building CXX object src/common/CMakeFiles/common.dir/Logging/LogMessage.cpp.o
#15 67.98 [228/1373] Building CXX object src/common/CMakeFiles/common.dir/Logging/LogOperation.cpp.o
#15 68.19 [229/1373] Building CXX object src/common/CMakeFiles/common.dir/Logging/Logger.cpp.o
#15 68.25 [230/1373] Building CXX object src/common/CMakeFiles/common.dir/Logging/enuminfo_AppenderConsole.cpp.o
#15 68.25 [231/1373] Building CXX object src/common/CMakeFiles/common.dir/Logging/enuminfo_LogCommon.cpp.o
#15 68.57 [232/1373] Building CXX object src/common/CMakeFiles/common.dir/Threading/ProcessPriority.cpp.o
#15 69.49 [233/1373] Building CXX object src/common/CMakeFiles/common.dir/Time/Timezone.cpp.o
#15 70.06 [234/1373] Building CXX object src/common/CMakeFiles/common.dir/Utilities/EventMap.cpp.o
#15 70.41 [235/1373] Building CXX object src/common/CMakeFiles/common.dir/Utilities/Locales.cpp.o
#15 70.53 [236/1373] Building CXX object src/common/CMakeFiles/common.dir/Utilities/EventProcessor.cpp.o
#15 70.96 [237/1373] Building CXX object src/common/CMakeFiles/common.dir/Utilities/SFMTRand.cpp.o
#15 70.98 [238/1373] Building CXX object src/common/CMakeFiles/common.dir/Logging/Log.cpp.o
#15 71.70 [239/1373] Building CXX object src/common/CMakeFiles/common.dir/Utilities/Random.cpp.o
#15 73.51 [240/1373] Building CXX object src/common/CMakeFiles/common.dir/Utilities/TaskScheduler.cpp.o
#15 74.79 [241/1373] Building CXX object src/common/CMakeFiles/common.dir/Utilities/StringFormat.cpp.o
#15 74.79 In file included from /usr/include/c++/13/bits/stl_uninitialized.h:63,
#15 74.79                  from /usr/include/c++/13/memory:69,
#15 74.79                  from /usr/include/c++/13/tr1/memory:41,
#15 74.79                  from /src/dep/g3dlite/include/G3D/platform.h:369,
#15 74.79                  from /src/dep/g3dlite/include/G3D/Vector3.h:18,
#15 74.79                  from /src/src/common/Collision/BoundingIntervalHierarchy.h:21,
#15 74.79                  from /src/src/common/PrecompiledHeaders/commonPCH.h:18,
#15 74.79                  from /src/build/src/common/CMakeFiles/common.dir/cmake_pch.hxx:5,
#15 74.79                  from <command-line>:
#15 74.79 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 74.79     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 74.79     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 74.79     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 74.79     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 74.79     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 74.79     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 74.79 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 74.79   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 74.79       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 74.79 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 74.79                  from /usr/include/c++/13/bits/allocator.h:46,
#15 74.79                  from /usr/include/c++/13/memory:65:
#15 74.79 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 74.79     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 74.79     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_Up> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 74.79 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 74.79   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 74.79       |                                                       ^
#15 74.79 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 74.79     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 74.79     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 74.79     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 74.79     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 74.79     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 74.79     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2886:32,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2994:29:
#15 74.79 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 74.79   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 74.79       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 74.79 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 74.79     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 74.79     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_Up> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2886:32,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2994:29:
#15 74.79 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 74.79   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 74.79       |                                                       ^
#15 74.79 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 74.79     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 74.79     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 74.79     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 74.79     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 74.79     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 74.79     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 74.79 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 74.79   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 74.79       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 74.79 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 74.79     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 74.79     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_Up> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 74.79 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 74.79   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 74.79       |                                                       ^
#15 74.79 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 74.79     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 74.79     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 74.79     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 74.79     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 74.79     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 74.79     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2886:32,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 74.79 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 74.79   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 74.79       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 74.79 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 74.79     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 74.79     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_Up> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2886:32,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 74.79 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 74.79   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 74.79       |                                                       ^
#15 74.79 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 74.79     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 74.79     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 74.79     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 74.79     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 74.79     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 74.79     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 74.79 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 74.79   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 74.79       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 74.79 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 74.79     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 74.79     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_Up> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 74.79 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 74.79   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 74.79       |                                                       ^
#15 74.79 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 74.79     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 74.79     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 74.79     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 74.79     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 74.79     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 74.79     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = long long unsigned int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3015:19:
#15 74.79 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 74.79   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 74.79       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 74.79 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 74.79     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 74.79     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_Up> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 74.79     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = long long unsigned int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 74.79     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3015:19:
#15 74.80 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 74.80   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 74.80       |                                                       ^
#15 74.93 [242/1373] Building CXX object src/common/CMakeFiles/common.dir/Metric/Metric.cpp.o
#15 75.20 [243/1373] Building CXX object src/server/database/CMakeFiles/database.dir/Database/AdhocStatement.cpp.o
#15 75.47 [244/1373] Building CXX object src/server/database/CMakeFiles/database.dir/Database/DatabaseEnv.cpp.o
#15 75.50 [245/1373] Building CXX object src/common/CMakeFiles/common.dir/Debugging/Errors.cpp.o
#15 76.57 [246/1373] Building CXX object src/common/CMakeFiles/common.dir/Utilities/Util.cpp.o
#15 76.93 [247/1373] Building CXX object src/server/database/CMakeFiles/database.dir/Database/Field.cpp.o
#15 77.12 [248/1373] Building CXX object src/server/database/CMakeFiles/database.dir/Database/DatabaseLoader.cpp.o
#15 77.19 [249/1373] Building CXX object src/server/database/CMakeFiles/database.dir/Database/FieldValueConverter.cpp.o
#15 78.02 [250/1373] Building CXX object src/server/database/CMakeFiles/database.dir/Database/MySQLPreparedStatement.cpp.o
#15 78.25 [251/1373] Building CXX object src/server/database/CMakeFiles/database.dir/Database/MySQLThreading.cpp.o
#15 79.09 [252/1373] Building CXX object src/common/CMakeFiles/common.dir/Utilities/StartProcess.cpp.o
#15 79.17 [253/1373] Linking CXX static library src/common/libcommon.a
#15 79.56 [254/1373] Building CXX object src/server/database/CMakeFiles/database.dir/Database/PreparedStatement.cpp.o
#15 79.85 [255/1373] Building CXX object src/server/database/CMakeFiles/database.dir/Database/QueryCallback.cpp.o
#15 80.05 [256/1373] Building CXX object src/server/database/CMakeFiles/database.dir/Database/QueryHolder.cpp.o
#15 80.24 [257/1373] Building CXX object src/server/database/CMakeFiles/database.dir/Database/MySQLConnection.cpp.o
#15 80.83 [258/1373] Building CXX object src/server/database/CMakeFiles/database.dir/Database/Implementation/CharacterDatabase.cpp.o
#15 81.48 [259/1373] Building CXX object src/server/database/CMakeFiles/database.dir/Database/Transaction.cpp.o
#15 81.54 [260/1373] Building CXX object src/server/database/CMakeFiles/database.dir/Database/Implementation/HotfixDatabase.cpp.o
#15 81.87 [261/1373] Building CXX object src/server/database/CMakeFiles/database.dir/Database/Implementation/LoginDatabase.cpp.o
#15 81.89 [262/1373] Building CXX object src/server/database/CMakeFiles/database.dir/Database/Implementation/WorldDatabase.cpp.o
#15 82.15 [263/1373] Building CXX object src/server/database/CMakeFiles/database.dir/Logging/AppenderDB.cpp.o
#15 83.08 [264/1373] Building CXX object src/server/database/CMakeFiles/database.dir/Database/QueryResult.cpp.o
#15 83.94 [265/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/ServiceBase.cpp.o
#15 84.05 [266/1373] Building CXX object src/server/database/CMakeFiles/database.dir/Database/DatabaseWorkerPool.cpp.o
#15 85.35 [267/1373] Building CXX object src/server/database/CMakeFiles/database.dir/Updater/DBUpdater.cpp.o
#15 85.83 [268/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/attribute_types.pb.cc.o
#15 86.04 [269/1373] Building CXX object src/server/database/CMakeFiles/database.dir/Updater/UpdateFetcher.cpp.o
#15 86.10 [270/1373] Linking CXX static library src/server/database/libdatabase.a
#15 86.41 [271/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/account_types.pb.cc.o
#15 86.54 [272/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/account_service.pb.cc.o
#15 86.67 [273/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/challenge_service.pb.cc.o
#15 86.98 [274/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/club_ban.pb.cc.o
#15 87.01 [275/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/authentication_service.pb.cc.o
#15 87.55 [276/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/club_enum.pb.cc.o
#15 87.55 [277/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/channel_types.pb.cc.o
#15 87.71 [278/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/club_invitation.pb.cc.o
#15 88.04 [279/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/club_member_id.pb.cc.o
#15 88.07 [280/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/club_core.pb.cc.o
#15 88.12 [281/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/club_listener.pb.cc.o
#15 88.85 [282/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/club_membership_types.pb.cc.o
#15 88.86 [283/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/club_member.pb.cc.o
#15 88.88 [284/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/club_membership_listener.pb.cc.o
#15 89.20 [285/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/club_membership_service.pb.cc.o
#15 89.40 [286/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/club_name_generator.pb.cc.o
#15 89.53 [287/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/club_range_set.pb.cc.o
#15 89.85 [288/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/club_role.pb.cc.o
#15 90.35 [289/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/club_notification.pb.cc.o
#15 90.78 [290/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/club_tag.pb.cc.o
#15 91.08 [291/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/club_type.pb.cc.o
#15 91.10 [292/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/club_service.pb.cc.o
#15 91.28 [293/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/club_stream.pb.cc.o
#15 91.30 [294/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/club_types.pb.cc.o
#15 91.66 [295/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/content_handle_types.pb.cc.o
#15 91.83 [296/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/embed_types.pb.cc.o
#15 92.02 [297/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/entity_types.pb.cc.o
#15 92.12 [298/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/ets_types.pb.cc.o
#15 92.35 [299/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/event_view_types.pb.cc.o
#15 92.76 [300/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/connection_service.pb.cc.o
#15 93.27 [301/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/friends_types.pb.cc.o
#15 93.66 [302/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/game_utilities_types.pb.cc.o
#15 93.67 [303/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/club_request.pb.cc.o
#15 93.95 [304/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/message_types.pb.cc.o
#15 94.04 [305/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/invitation_types.pb.cc.o
#15 94.07 [306/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/friends_service.pb.cc.o
#15 94.49 [307/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/game_utilities_service.pb.cc.o
#15 94.66 [308/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/presence_listener.pb.cc.o
#15 94.67 [309/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/notification_types.pb.cc.o
#15 95.07 [310/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/profanity_filter_config.pb.cc.o
#15 95.12 [311/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/presence_types.pb.cc.o
#15 95.30 [312/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/report_service.pb.cc.o
#15 95.34 [313/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/presence_service.pb.cc.o
#15 95.70 [314/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/role_types.pb.cc.o
#15 95.73 [315/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/rpc_config.pb.cc.o
#15 95.74 [316/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/resource_service.pb.cc.o
#15 96.01 [317/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/report_types.pb.cc.o
#15 96.05 [318/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/semantic_version.pb.cc.o
#15 96.39 [319/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/voice_types.pb.cc.o
#15 96.44 [320/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/user_manager_types.pb.cc.o
#15 96.47 [321/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/rpc_types.pb.cc.o
#15 96.67 [322/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/api/client/v1/channel_id.pb.cc.o
#15 96.90 [323/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/api/client/v2/attribute_types.pb.cc.o
#15 97.02 [324/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/api/client/v2/report_service.pb.cc.o
#15 97.05 [325/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/user_manager_service.pb.cc.o
#15 97.21 [326/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/api/client/v2/report_types.pb.cc.o
#15 97.31 [327/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/global_extensions/message_options.pb.cc.o
#15 97.38 [328/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/global_extensions/method_options.pb.cc.o
#15 97.54 [329/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/global_extensions/register_method_types.pb.cc.o
#15 97.58 [330/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/global_extensions/range.pb.cc.o
#15 97.61 [331/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/global_extensions/routing.pb.cc.o
#15 97.70 [332/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/global_extensions/field_options.pb.cc.o
#15 97.91 [333/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Client/global_extensions/service_options.pb.cc.o
#15 98.61 [334/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/RealmList/RealmList.pb.cc.o
#15 98.61 [335/1373] Building CXX object src/server/proto/CMakeFiles/proto.dir/Login/Login.pb.cc.o
#15 98.72 [336/1373] Linking CXX static library src/server/proto/libproto.a
#15 99.10 [337/1373] Building CXX object src/server/shared/CMakeFiles/shared.dir/DataStores/DB2Store.cpp.o
#15 99.45 [338/1373] Building CXX object src/server/shared/CMakeFiles/shared.dir/DataStores/DB2DatabaseLoader.cpp.o
#15 100.9 [339/1373] Building CXX object src/server/shared/CMakeFiles/shared.dir/Packets/ByteBuffer.cpp.o
#15 101.9 [340/1373] Building CXX object src/server/shared/CMakeFiles/shared.dir/Realm/Realm.cpp.o
#15 102.4 [341/1373] Building CXX object src/server/shared/CMakeFiles/shared.dir/JSON/ProtobufJSON.cpp.o
#15 104.3 [342/1373] Building CXX object src/server/shared/CMakeFiles/shared.dir/Secrets/SecretMgr.cpp.o
#15 106.5 [343/1373] Building CXX object src/server/shared/CMakeFiles/shared.dir/Networking/Http/HttpService.cpp.o
#15 106.8 [344/1373] Building CXX object src/server/shared/CMakeFiles/shared.dir/Networking/Http/BaseHttpSocket.cpp.o
#15 107.4 [345/1373] Building CXX object src/server/shared/CMakeFiles/shared.dir/Realm/RealmList.cpp.o
#15 107.5 [346/1373] Linking CXX static library src/server/shared/libshared.a
#15 113.4 [347/1373] Building CXX object src/server/worldserver/CMakeFiles/worldserver.dir/cmake_pch.hxx.gch
#15 119.4 [348/1373] Building CXX object src/server/bnetserver/CMakeFiles/bnetserver.dir/cmake_pch.hxx.gch
#15 124.9 [349/1373] Building CXX object src/server/game/CMakeFiles/game.dir/cmake_pch.hxx.gch
#15 125.0 [350/1373] Building CXX object src/server/worldserver/CMakeFiles/worldserver.dir/Main.cpp.o
#15 128.1 [351/1373] Building CXX object src/server/bnetserver/CMakeFiles/bnetserver.dir/Main.cpp.o
#15 129.6 [352/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/cmake_pch.hxx.gch
#15 135.3 [353/1373] Building CXX object src/server/bnetserver/CMakeFiles/bnetserver.dir/Server/SessionManager.cpp.o
#15 136.5 [354/1373] Building CXX object src/server/bnetserver/CMakeFiles/bnetserver.dir/REST/LoginHttpSession.cpp.o
#15 137.3 [355/1373] Building CXX object src/server/bnetserver/CMakeFiles/bnetserver.dir/REST/LoginRESTService.cpp.o
#15 138.5 [356/1373] Building CXX object src/server/bnetserver/CMakeFiles/bnetserver.dir/Server/Session.cpp.o
#15 138.8 [357/1373] Building CXX object src/server/bnetserver/CMakeFiles/bnetserver.dir/Server/SslContext.cpp.o
#15 139.2 [358/1373] Building CXX object src/server/bnetserver/CMakeFiles/bnetserver.dir/Services/AccountService.cpp.o
#15 140.0 [359/1373] Building CXX object src/server/bnetserver/CMakeFiles/bnetserver.dir/Services/AuthenticationService.cpp.o
#15 141.4 [360/1373] Building CXX object src/server/bnetserver/CMakeFiles/bnetserver.dir/Services/GameUtilitiesService.cpp.o
#15 141.8 [361/1373] Building CXX object src/server/bnetserver/CMakeFiles/bnetserver.dir/Services/ConnectionService.cpp.o
#15 142.3 [362/1373] Building CXX object src/server/bnetserver/CMakeFiles/bnetserver.dir/Services/ServiceDispatcher.cpp.o
#15 142.7 [363/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/CreatureAI.cpp.o
#15 142.9 [364/1373] Linking CXX executable src/server/bnetserver/bnetserver
#15 144.3 [365/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/CoreAI/AreaTriggerAI.cpp.o
#15 144.3 [366/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/CreatureAISelector.cpp.o
#15 144.6 [367/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/CreatureAIRegistry.cpp.o
#15 145.2 [368/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/CoreAI/CombatAI.cpp.o
#15 145.9 [369/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/CoreAI/GameObjectAI.cpp.o
#15 146.3 [370/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/CoreAI/GuardAI.cpp.o
#15 146.3 [371/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/CoreAI/PassiveAI.cpp.o
#15 147.6 [372/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/CoreAI/ReactorAI.cpp.o
#15 147.9 [373/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/CoreAI/ScheduledChangeAI.cpp.o
#15 148.1 [374/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/CoreAI/PetAI.cpp.o
#15 148.9 [375/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/CoreAI/TotemAI.cpp.o
#15 149.6 [376/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/CoreAI/enuminfo_UnitAICommon.cpp.o
#15 149.7 [377/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/CoreAI/UnitAICommon.cpp.o
#15 150.1 [378/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/CoreAI/UnitAI.cpp.o
#15 151.4 [379/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/PlayerAI/PlayerAI.cpp.o
#15 152.4 [380/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/ScriptedAI/ScriptedEscortAI.cpp.o
#15 152.5 [381/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/ScriptedAI/ScriptedFollowerAI.cpp.o
#15 153.0 [382/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/ScriptedAI/ScriptedGossip.cpp.o
#15 154.8 [383/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/ScriptedAI/ScriptedCreature.cpp.o
#15 155.8 [384/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/SmartScripts/SmartAI.cpp.o
#15 158.0 [385/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Accounts/AccountMgr.cpp.o
#15 158.1 [386/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Accounts/BattlenetAccountMgr.cpp.o
#15 159.4 [387/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/SmartScripts/SmartScriptMgr.cpp.o
#15 160.1 [388/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Accounts/RBAC.cpp.o
#15 163.4 [389/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AI/SmartScripts/SmartScript.cpp.o
#15 164.9 [390/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Achievements/AchievementMgr.cpp.o
#15 166.5 [391/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AuctionHouseBot/AuctionHouseBot.cpp.o
#15 167.4 [392/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Achievements/CriteriaHandler.cpp.o
#15 167.6 [393/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AuctionHouseBot/AuctionHouseBotBuyer.cpp.o
#15 168.7 [394/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AuctionHouse/AuctionHouseMgr.cpp.o
#15 168.9 [395/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AuctionHouseBot/enuminfo_AuctionHouseBot.cpp.o
#15 169.7 [396/1373] Building CXX object src/server/game/CMakeFiles/game.dir/AuctionHouseBot/AuctionHouseBotSeller.cpp.o
#15 171.5 [397/1373] Building CXX object src/server/game/CMakeFiles/game.dir/BattlePay/BattlePayHandler.cpp.o
#15 172.7 [398/1373] Building CXX object src/server/game/CMakeFiles/game.dir/BattlePay/BattlePayPackets.cpp.o
#15 173.0 [399/1373] Building CXX object src/server/game/CMakeFiles/game.dir/BattlePay/BattlePayData.cpp.o
#15 173.0 /src/src/server/game/BattlePay/BattlePayData.cpp: In member function 'const std::vector<BattlePayData::Product>* BattlePayDataStoreMgr::GetProductsOfProductInfo(uint32)':
#15 173.0 /src/src/server/game/BattlePay/BattlePayData.cpp:446:16: warning: address of local variable 'subproducts' returned [-Wreturn-local-addr]
#15 173.0   446 |         return &subproducts; // warning
#15 173.0       |                ^~~~~~~~~~~~
#15 173.0 /src/src/server/game/BattlePay/BattlePayData.cpp:435:41: note: declared here
#15 173.0   435 |     std::vector<BattlePayData::Product> subproducts;
#15 173.0       |                                         ^~~~~~~~~~~
#15 173.0 /src/src/server/game/BattlePay/BattlePayData.cpp: In member function 'const BattlePayData::Visual* BattlePayDataStoreMgr::FindVisualForDisplayInfo(uint32)':
#15 173.0 /src/src/server/game/BattlePay/BattlePayData.cpp:421:12: warning: function may return address of local variable [-Wreturn-local-addr]
#15 173.0   421 |     return visual;
#15 173.0       |            ^~~~~~
#15 173.0 /src/src/server/game/BattlePay/BattlePayData.cpp:414:19: note: declared here
#15 173.0   414 |         for (auto _visual : _displayInfo.second.Visuals)
#15 173.0       |                   ^~~~~~~
#15 175.5 [400/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlefield/BattlefieldMgr.cpp.o
#15 176.2 [401/1373] Building CXX object src/server/game/CMakeFiles/game.dir/BattlePets/BattlePetMgr.cpp.o
#15 176.6 [402/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlefield/Battlefield.cpp.o
#15 176.9 [403/1373] Building CXX object src/server/game/CMakeFiles/game.dir/BattlePay/BattlePayMgr.cpp.o
#15 177.9 [404/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlegrounds/Arena.cpp.o
#15 178.0 [405/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlegrounds/ArenaScore.cpp.o
#15 178.8 [406/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlegrounds/ArenaTeam.cpp.o
#15 178.9 [407/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlegrounds/ArenaTeamMgr.cpp.o
#15 180.6 [408/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlegrounds/BattlegroundScore.cpp.o
#15 182.2 [409/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlegrounds/enuminfo_ArenaTeam.cpp.o
#15 182.3 [410/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlegrounds/BattlegroundMgr.cpp.o
#15 184.6 [411/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlegrounds/Battleground.cpp.o
#15 184.9 [412/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlegrounds/Zones/BattlegroundAB.cpp.o
#15 186.2 [413/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlegrounds/Zones/BattlegroundAV.cpp.o
#15 186.5 [414/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlegrounds/BattlegroundQueue.cpp.o
#15 186.5 In file included from /usr/include/c++/13/array:43,
#15 186.5                  from /src/src/common/Common.h:22,
#15 186.5                  from /src/src/server/game/Entities/Object/Object.h:21,
#15 186.5                  from /src/src/server/game/Entities/Unit/Unit.h:21,
#15 186.5                  from /src/src/server/game/Entities/Creature/Creature.h:21,
#15 186.5                  from /src/src/server/game/PrecompiledHeaders/gamePCH.h:20,
#15 186.5                  from /src/build/src/server/game/CMakeFiles/game.dir/cmake_pch.hxx:5,
#15 186.5                  from <command-line>:
#15 186.5 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 186.5     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 186.5     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 186.5     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 186.5     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 186.5     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 186.5     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 186.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 186.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 186.5 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 186.5   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 186.5       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 186.5 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 186.5                  from /usr/include/c++/13/bits/allocator.h:46,
#15 186.5                  from /usr/include/c++/13/string:43,
#15 186.5                  from /src/src/common/Common.h:23:
#15 186.5 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 186.5     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 186.5     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 186.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 186.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 186.5 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 186.5   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 186.5       |                                                       ^
#15 186.5 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 186.5     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 186.5     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 186.5     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 186.5     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 186.5     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 186.5     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 186.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 186.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 186.5 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 186.5   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 186.5       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 186.5 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 186.5     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 186.5     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 186.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 186.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 186.5 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 186.5   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 186.5       |                                                       ^
#15 186.5 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 186.5     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 186.5     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 186.5     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 186.5     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 186.5     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 186.5     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 186.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 186.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 186.5 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 186.5   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 186.5       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 186.5 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 186.5     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 186.5     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 186.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 186.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 186.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 186.5 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 186.5   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 186.5       |                                                       ^
#15 186.6 [415/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlegrounds/Zones/BattlegroundBFG.cpp.o
#15 186.9 [416/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlegrounds/Zones/BattlegroundBE.cpp.o
#15 188.5 [417/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlegrounds/Zones/BattlegroundDS.cpp.o
#15 189.0 [418/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlegrounds/Zones/BattlegroundNA.cpp.o
#15 189.4 [419/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlegrounds/Zones/BattlegroundEY.cpp.o
#15 189.5 [420/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlegrounds/Zones/BattlegroundIC.cpp.o
#15 190.6 [421/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlegrounds/Zones/BattlegroundRL.cpp.o
#15 191.0 [422/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlegrounds/Zones/BattlegroundRV.cpp.o
#15 191.2 [423/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlegrounds/Zones/BattlegroundTP.cpp.o
#15 192.5 [424/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlegrounds/Zones/BattlegroundSA.cpp.o
#15 193.5 [425/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Battlegrounds/Zones/BattlegroundWS.cpp.o
#15 193.5 [426/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Cache/CharacterCache.cpp.o
#15 195.3 [427/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Calendar/CalendarMgr.cpp.o
#15 196.1 [428/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Chat/Hyperlinks.cpp.o
#15 196.2 [429/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Chat/HyperlinkTags.cpp.o
#15 197.9 [430/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Chat/LanguageMgr.cpp.o
#15 198.9 [431/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Chat/Channels/ChannelMgr.cpp.o
#15 199.6 [432/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Chat/Channels/enuminfo_Channel.cpp.o
#15 201.0 [433/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Chat/Chat.cpp.o
#15 202.8 [434/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Chat/ChatCommands/ChatCommandHelpers.cpp.o
#15 205.2 [435/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Chat/Channels/Channel.cpp.o
#15 206.0 [436/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Chat/ChatCommands/ChatCommand.cpp.o
#15 206.5 [437/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Chat/ChatCommands/ChatCommandArgs.cpp.o
#15 207.4 [438/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Combat/CombatManager.cpp.o
#15 209.2 [439/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Chat/ChatCommands/ChatCommandTags.cpp.o
#15 209.2 In file included from /usr/include/c++/13/array:43,
#15 209.2                  from /src/src/common/Common.h:22,
#15 209.2                  from /src/src/server/game/Entities/Object/Object.h:21,
#15 209.2                  from /src/src/server/game/Entities/Unit/Unit.h:21,
#15 209.2                  from /src/src/server/game/Entities/Creature/Creature.h:21,
#15 209.2                  from /src/src/server/game/PrecompiledHeaders/gamePCH.h:20,
#15 209.2                  from /src/build/src/server/game/CMakeFiles/game.dir/cmake_pch.hxx:5,
#15 209.2                  from <command-line>:
#15 209.2 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 209.2     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 209.2     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 209.2     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 209.2     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 209.2     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 209.2     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 209.2     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 209.2     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 209.2     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 209.2     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 209.2     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 209.2     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 209.2     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 209.2     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 209.2     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 209.2 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 209.2   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 209.2       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 209.2 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 209.2                  from /usr/include/c++/13/bits/allocator.h:46,
#15 209.2                  from /usr/include/c++/13/string:43,
#15 209.2                  from /src/src/common/Common.h:23:
#15 209.2 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 209.2     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 209.2     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 209.2     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 209.2     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 209.2     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 209.2     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 209.2     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 209.2     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 209.2     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 209.2     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 209.2     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 209.2 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 209.2   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 209.2       |                                                       ^
#15 210.2 [440/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Conditions/DisableMgr.cpp.o
#15 210.8 [441/1373] Building CXX object src/server/game/CMakeFiles/game.dir/DataStores/DB2HotfixGenerator.cpp.o
#15 211.2 [442/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Combat/ThreatManager.cpp.o
#15 214.1 [443/1373] Building CXX object src/server/game/CMakeFiles/game.dir/DataStores/M2Stores.cpp.o
#15 215.2 [444/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Conditions/ConditionMgr.cpp.o
#15 216.0 [445/1373] Building CXX object src/server/game/CMakeFiles/game.dir/DungeonFinding/LFG.cpp.o
#15 216.5 [446/1373] Building CXX object src/server/game/CMakeFiles/game.dir/DataStores/GameTables.cpp.o
#15 216.9 [447/1373] Building CXX object src/server/game/CMakeFiles/game.dir/DungeonFinding/LFGGroupData.cpp.o
#15 218.1 [448/1373] Building CXX object src/server/game/CMakeFiles/game.dir/DungeonFinding/LFGPlayerData.cpp.o
#15 221.0 [449/1373] Building CXX object src/server/game/CMakeFiles/game.dir/DungeonFinding/LFGScripts.cpp.o
#15 221.3 [450/1373] Building CXX object src/server/game/CMakeFiles/game.dir/DungeonFinding/LFGQueue.cpp.o
#15 223.0 [451/1373] Building CXX object src/server/game/CMakeFiles/game.dir/DungeonFinding/LFGMgr.cpp.o
#15 223.1 [452/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/AreaTrigger/AreaTriggerTemplate.cpp.o
#15 225.6 [453/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Corpse/Corpse.cpp.o
#15 226.2 [454/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Conversation/Conversation.cpp.o
#15 229.0 [455/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Creature/CreatureGroups.cpp.o
#15 230.4 [456/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/AreaTrigger/AreaTrigger.cpp.o
#15 230.4 In file included from /usr/include/c++/13/array:43,
#15 230.4                  from /src/src/common/Common.h:22,
#15 230.4                  from /src/src/server/game/Entities/Object/Object.h:21,
#15 230.4                  from /src/src/server/game/Entities/Unit/Unit.h:21,
#15 230.4                  from /src/src/server/game/Entities/Creature/Creature.h:21,
#15 230.4                  from /src/src/server/game/PrecompiledHeaders/gamePCH.h:20,
#15 230.4                  from /src/build/src/server/game/CMakeFiles/game.dir/cmake_pch.hxx:5,
#15 230.4                  from <command-line>:
#15 230.4 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 230.4     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 230.4     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 230.4     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 230.4     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 230.4     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 230.4     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 230.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 230.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 230.4 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 230.4   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 230.4       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 230.4 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 230.4                  from /usr/include/c++/13/bits/allocator.h:46,
#15 230.4                  from /usr/include/c++/13/string:43,
#15 230.4                  from /src/src/common/Common.h:23:
#15 230.4 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 230.4     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 230.4     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 230.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 230.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 230.4 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 230.4   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 230.4       |                                                       ^
#15 230.4 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 230.4     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 230.4     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 230.4     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 230.4     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 230.4     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 230.4     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 230.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 230.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 230.4 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 230.4   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 230.4       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 230.4 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 230.4     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 230.4     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 230.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 230.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 230.4 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 230.4   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 230.4       |                                                       ^
#15 230.4 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 230.4     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 230.4     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 230.4     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 230.4     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 230.4     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 230.4     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 230.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 230.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 230.4 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 230.4   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 230.4       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 230.4 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 230.4     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 230.4     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 230.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 230.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 230.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 230.4 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 230.4   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 230.4       |                                                       ^
#15 233.9 [457/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Creature/TemporarySummon.cpp.o
#15 233.9 [458/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Creature/GossipDef.cpp.o
#15 235.3 [459/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Creature/Creature.cpp.o
#15 235.5 [460/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Creature/enuminfo_CreatureData.cpp.o
#15 236.0 [461/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Creature/Trainer.cpp.o
#15 238.1 [462/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/DynamicObject/DynamicObject.cpp.o
#15 240.1 [463/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Item/ItemEnchantmentMgr.cpp.o
#15 241.9 [464/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Item/Item.cpp.o
#15 242.3 [465/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Item/ItemTemplate.cpp.o
#15 243.6 [466/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Item/enuminfo_ItemDefines.cpp.o
#15 244.5 [467/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Item/Container/Bag.cpp.o
#15 244.7 [468/1373] Building CXX object src/server/game/CMakeFiles/game.dir/DataStores/DB2Stores.cpp.o
#15 245.0 [469/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/GameObject/GameObject.cpp.o
#15 246.6 [470/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Object/ObjectPosSelector.cpp.o
#15 247.0 [471/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Object/Position.cpp.o
#15 247.2 [472/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Object/ObjectGuid.cpp.o
#15 248.5 [473/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Object/SmoothPhasing.cpp.o
#15 248.8 [474/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Object/Updates/UpdateData.cpp.o
#15 248.9 [475/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Object/Updates/UpdateField.cpp.o
#15 250.7 [476/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Player/CinematicMgr.cpp.o
#15 254.6 [477/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Pet/Pet.cpp.o
#15 254.7 [478/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Object/Updates/UpdateFields.cpp.o
#15 255.1 [479/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Player/CollectionMgr.cpp.o
#15 255.6 [480/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Object/Object.cpp.o
#15 257.3 [481/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Player/RestMgr.cpp.o
#15 257.3 [482/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Player/PlayerTaxi.cpp.o
#15 257.8 [483/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Player/KillRewarder.cpp.o
#15 259.7 [484/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Player/TradeData.cpp.o
#15 259.8 [485/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Player/SocialMgr.cpp.o
#15 262.0 [486/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/SceneObject/SceneObject.cpp.o
#15 263.5 [487/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Player/SceneMgr.cpp.o
#15 263.5 In file included from /usr/include/c++/13/array:43,
#15 263.5                  from /src/src/common/Common.h:22,
#15 263.5                  from /src/src/server/game/Entities/Object/Object.h:21,
#15 263.5                  from /src/src/server/game/Entities/Unit/Unit.h:21,
#15 263.5                  from /src/src/server/game/Entities/Creature/Creature.h:21,
#15 263.5                  from /src/src/server/game/PrecompiledHeaders/gamePCH.h:20,
#15 263.5                  from /src/build/src/server/game/CMakeFiles/game.dir/cmake_pch.hxx:5,
#15 263.5                  from <command-line>:
#15 263.5 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 263.5     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 263.5     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 263.5     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 263.5     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 263.5     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 263.5     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 263.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 263.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 263.5 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 263.5   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 263.5       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 263.5 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 263.5                  from /usr/include/c++/13/bits/allocator.h:46,
#15 263.5                  from /usr/include/c++/13/string:43,
#15 263.5                  from /src/src/common/Common.h:23:
#15 263.5 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 263.5     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 263.5     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 263.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 263.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 263.5 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 263.5   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 263.5       |                                                       ^
#15 263.5 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 263.5     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 263.5     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 263.5     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 263.5     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 263.5     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 263.5     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 263.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 263.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 263.5 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 263.5   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 263.5       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 263.5 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 263.5     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 263.5     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 263.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 263.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 263.5 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 263.5   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 263.5       |                                                       ^
#15 263.5 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 263.5     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 263.5     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 263.5     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 263.5     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 263.5     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 263.5     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 263.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 263.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 263.5 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 263.5   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 263.5       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 263.5 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 263.5     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 263.5     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 263.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 263.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 263.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 263.5 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 263.5   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 263.5       |                                                       ^
#15 264.3 [488/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Totem/Totem.cpp.o
#15 266.3 [489/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Unit/CharmInfo.cpp.o
#15 266.5 [490/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Taxi/TaxiPathGraph.cpp.o
#15 267.4 [491/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Transport/Transport.cpp.o
#15 269.5 [492/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Unit/enuminfo_UnitDefines.cpp.o
#15 269.7 [493/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Unit/StatSystem.cpp.o
#15 273.0 [494/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Vehicle/Vehicle.cpp.o
#15 275.2 [495/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Events/GameEventSender.cpp.o
#15 275.8 [496/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Events/GameEventMgr.cpp.o
#15 278.0 [497/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Globals/CharacterTemplateDataStore.cpp.o
#15 279.5 [498/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Globals/AreaTriggerDataStore.cpp.o
#15 280.9 [499/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Globals/ConversationDataStore.cpp.o
#15 282.7 [500/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Globals/ObjectAccessor.cpp.o
#15 285.0 [501/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Grids/GridStates.cpp.o
#15 287.3 [502/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Grids/NGrid.cpp.o
#15 289.6 [503/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Grids/ObjectGridLoader.cpp.o
#15 289.8 [504/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Unit/Unit.cpp.o
#15 293.2 [505/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Grids/Notifiers/GridNotifiers.cpp.o
#15 294.9 [506/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Groups/GroupInstanceReference.cpp.o
#15 296.3 [507/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Groups/Group.cpp.o
#15 297.1 [508/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Groups/GroupMgr.cpp.o
#15 298.0 [509/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Groups/GroupReference.cpp.o
#15 301.2 [510/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Guilds/GuildMgr.cpp.o
#15 302.8 [511/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/ArenaTeamHandler.cpp.o
#15 305.5 [512/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Entities/Player/Player.cpp.o
#15 305.5 /src/src/server/game/Entities/Player/Player.cpp: In member function 'void Player::PrepareGossipMenu(WorldObject*, uint32, bool)':
#15 305.5 /src/src/server/game/Entities/Player/Player.cpp:13936:101: warning: narrowing conversion of '(hasJoyousEnabled ? 80039 : 80040)' from 'int' to 'uint32' {aka 'unsigned int'} [-Wnarrowing]
#15 305.5 13936 |         GossipMenuItems joyousItem = { menuId, 10, 10, GossipOptionNpc::None, "", (hasJoyousEnabled ? 80039 : 80040), 1, 1, LANG_UNIVERSAL, GossipOptionFlags::None };
#15 305.5       |                                                                                   ~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~
#15 305.5 In file included from /usr/include/c++/13/array:43,
#15 305.5                  from /src/src/common/Common.h:22,
#15 305.5                  from /src/src/server/game/Entities/Object/Object.h:21,
#15 305.5                  from /src/src/server/game/Entities/Unit/Unit.h:21,
#15 305.5                  from /src/src/server/game/Entities/Creature/Creature.h:21,
#15 305.5                  from /src/src/server/game/PrecompiledHeaders/gamePCH.h:20,
#15 305.5                  from /src/build/src/server/game/CMakeFiles/game.dir/cmake_pch.hxx:5,
#15 305.5                  from <command-line>:
#15 305.5 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 305.5     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 305.5     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 305.5     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 305.5     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 305.5     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 305.5     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 305.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 305.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 305.5 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 305.5   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 305.5       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 305.5 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 305.5                  from /usr/include/c++/13/bits/allocator.h:46,
#15 305.5                  from /usr/include/c++/13/string:43,
#15 305.5                  from /src/src/common/Common.h:23:
#15 305.5 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 305.5     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 305.5     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 305.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 305.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 305.5 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 305.5   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 305.5       |                                                       ^
#15 305.5 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 305.5     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 305.5     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 305.5     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 305.5     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 305.5     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 305.5     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 305.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 305.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 305.5 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 305.5   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 305.5       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 305.5 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 305.5     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 305.5     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 305.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 305.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 305.5 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 305.5   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 305.5       |                                                       ^
#15 305.5 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 305.5     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 305.5     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 305.5     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 305.5     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 305.5     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 305.5     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 305.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 305.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 305.5 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 305.5   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 305.5       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 305.5 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 305.5     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 305.5     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 305.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 305.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 305.5 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 305.5   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 305.5       |                                                       ^
#15 305.5 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 305.5     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 305.5     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 305.5     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 305.5     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 305.5     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 305.5     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 305.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 305.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = long long unsigned int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 305.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3015:19:
#15 305.5 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 305.5   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 305.5       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 305.5 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 305.5     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 305.6     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 305.6     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 305.6     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 305.6     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 305.6     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 305.6     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 305.6     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = long long unsigned int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 305.6     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3015:19:
#15 305.6 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 305.6   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 305.6       |                                                       ^
#15 306.6 [513/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Guilds/Guild.cpp.o
#15 308.0 [514/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/AuctionHouseHandler.cpp.o
#15 308.0 [515/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/AuthHandler.cpp.o
#15 308.6 [516/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/BankHandler.cpp.o
#15 310.1 [517/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/BattlePetHandler.cpp.o
#15 312.4 [518/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/BattlenetHandler.cpp.o
#15 313.5 [519/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/CalendarHandler.cpp.o
#15 314.5 [520/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/ChannelHandler.cpp.o
#15 315.6 [521/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/BattleGroundHandler.cpp.o
#15 315.6 In file included from /usr/include/c++/13/array:43,
#15 315.6                  from /src/src/common/Common.h:22,
#15 315.6                  from /src/src/server/game/Entities/Object/Object.h:21,
#15 315.6                  from /src/src/server/game/Entities/Unit/Unit.h:21,
#15 315.6                  from /src/src/server/game/Entities/Creature/Creature.h:21,
#15 315.6                  from /src/src/server/game/PrecompiledHeaders/gamePCH.h:20,
#15 315.6                  from /src/build/src/server/game/CMakeFiles/game.dir/cmake_pch.hxx:5,
#15 315.6                  from <command-line>:
#15 315.6 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 315.6     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 315.6     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 315.6     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 315.6     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 315.6     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 315.6     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 315.6     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 315.6     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 315.6 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 315.6   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 315.6       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 315.6 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 315.6                  from /usr/include/c++/13/bits/allocator.h:46,
#15 315.6                  from /usr/include/c++/13/string:43,
#15 315.6                  from /src/src/common/Common.h:23:
#15 315.6 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 315.6     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 315.6     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 315.6     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 315.6     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 315.6 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 315.6   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 315.6       |                                                       ^
#15 315.6 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 315.6     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 315.6     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 315.6     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 315.6     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 315.6     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 315.6     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 315.6     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 315.6     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 315.6 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 315.6   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 315.6       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 315.6 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 315.6     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 315.6     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 315.6     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 315.6     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 315.6 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 315.6   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 315.6       |                                                       ^
#15 315.6 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 315.6     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 315.6     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 315.6     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 315.6     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 315.6     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 315.6     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 315.6     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 315.6     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 315.6 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 315.6   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 315.6       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 315.6 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 315.6     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 315.6     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 315.6     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 315.6     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 315.6     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 315.6 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 315.6   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 315.6       |                                                       ^
#15 317.3 [522/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/CollectionsHandler.cpp.o
#15 318.4 [523/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/ChatHandler.cpp.o
#15 319.2 [524/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/CombatHandler.cpp.o
#15 320.2 [525/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/DuelHandler.cpp.o
#15 321.9 [526/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/GroupHandler.cpp.o
#15 323.2 [527/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/GuildHandler.cpp.o
#15 324.0 [528/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/HotfixHandler.cpp.o
#15 326.1 [529/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/InspectHandler.cpp.o
#15 326.2 [530/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/CharacterHandler.cpp.o
#15 326.2 In file included from /usr/include/c++/13/array:43,
#15 326.2                  from /src/src/common/Common.h:22,
#15 326.2                  from /src/src/server/game/Entities/Object/Object.h:21,
#15 326.2                  from /src/src/server/game/Entities/Unit/Unit.h:21,
#15 326.2                  from /src/src/server/game/Entities/Creature/Creature.h:21,
#15 326.2                  from /src/src/server/game/PrecompiledHeaders/gamePCH.h:20,
#15 326.2                  from /src/build/src/server/game/CMakeFiles/game.dir/cmake_pch.hxx:5,
#15 326.2                  from <command-line>:
#15 326.2 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 326.2     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 326.2     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 326.2     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 326.2     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 326.2     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 326.2     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 326.2     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 326.2     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 326.2 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 326.2   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 326.2       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 326.2 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 326.2                  from /usr/include/c++/13/bits/allocator.h:46,
#15 326.2                  from /usr/include/c++/13/string:43,
#15 326.2                  from /src/src/common/Common.h:23:
#15 326.2 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 326.2     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 326.2     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 326.2     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 326.2     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 326.2 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 326.2   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 326.2       |                                                       ^
#15 326.2 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 326.2     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 326.2     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 326.2     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 326.2     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 326.2     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 326.2     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 326.2     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 326.2     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 326.2 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 326.2   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 326.2       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 326.2 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 326.2     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 326.2     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 326.2     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 326.2     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 326.2 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 326.2   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 326.2       |                                                       ^
#15 326.2 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 326.2     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 326.2     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 326.2     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 326.2     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 326.2     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 326.2     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 326.2     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 326.2     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 326.2 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 326.2   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 326.2       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 326.2 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 326.2     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 326.2     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 326.2     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 326.2     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 326.2 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 326.2   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 326.2       |                                                       ^
#15 326.2 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 326.2     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 326.2     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 326.2     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 326.2     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 326.2     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 326.2     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 326.2     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 326.2     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = long long unsigned int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3015:19:
#15 326.2 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 326.2   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 326.2       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 326.2 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 326.2     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 326.2     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 326.2     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 326.2     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = long long unsigned int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 326.2     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3015:19:
#15 326.2 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 326.2   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 326.2       |                                                       ^
#15 327.2 [531/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/ItemHandler.cpp.o
#15 327.4 [532/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Globals/ObjectMgr.cpp.o
#15 327.4 In file included from /usr/include/c++/13/array:43,
#15 327.4                  from /src/src/common/Common.h:22,
#15 327.4                  from /src/src/server/game/Entities/Object/Object.h:21,
#15 327.4                  from /src/src/server/game/Entities/Unit/Unit.h:21,
#15 327.4                  from /src/src/server/game/Entities/Creature/Creature.h:21,
#15 327.4                  from /src/src/server/game/PrecompiledHeaders/gamePCH.h:20,
#15 327.4                  from /src/build/src/server/game/CMakeFiles/game.dir/cmake_pch.hxx:5,
#15 327.4                  from <command-line>:
#15 327.4 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 327.4     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 327.4     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 327.4     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 327.4     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 327.4     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 327.4     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 327.4 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 327.4   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 327.4       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 327.4 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 327.4                  from /usr/include/c++/13/bits/allocator.h:46,
#15 327.4                  from /usr/include/c++/13/string:43,
#15 327.4                  from /src/src/common/Common.h:23:
#15 327.4 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 327.4     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 327.4     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 327.4 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 327.4   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 327.4       |                                                       ^
#15 327.4 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 327.4     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 327.4     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 327.4     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 327.4     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 327.4     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 327.4     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2886:32,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2994:29:
#15 327.4 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 327.4   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 327.4       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 327.4 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 327.4     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 327.4     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2886:32,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2994:29:
#15 327.4 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 327.4   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 327.4       |                                                       ^
#15 327.4 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 327.4     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 327.4     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 327.4     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 327.4     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 327.4     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 327.4     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 327.4 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 327.4   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 327.4       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 327.4 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 327.4     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 327.4     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 327.4 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 327.4   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 327.4       |                                                       ^
#15 327.4 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 327.4     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 327.4     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 327.4     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 327.4     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 327.4     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 327.4     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2886:32,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 327.4 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 327.4   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 327.4       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 327.4 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 327.4     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 327.4     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2886:32,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 327.4 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 327.4   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 327.4       |                                                       ^
#15 327.4 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 327.4     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 327.4     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 327.4     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 327.4     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 327.4     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 327.4     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 327.4 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 327.4   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 327.4       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 327.4 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 327.4     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 327.4     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 327.4 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 327.4   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 327.4       |                                                       ^
#15 327.4 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 327.4     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 327.4     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 327.4     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 327.4     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 327.4     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 327.4     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = long long unsigned int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3015:19:
#15 327.4 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 327.4   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 327.4       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 327.4 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 327.4     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 327.4     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 327.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = long long unsigned int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 327.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3015:19:
#15 327.4 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 327.4   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 327.4       |                                                       ^
#15 329.1 [533/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/LootHandler.cpp.o
#15 330.2 [534/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/LFGHandler.cpp.o
#15 331.0 [535/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/MailHandler.cpp.o
#15 333.7 [536/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/NPCHandler.cpp.o
#15 334.8 [537/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/PetHandler.cpp.o
#15 336.7 [538/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/PetitionsHandler.cpp.o
#15 337.1 [539/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/MiscHandler.cpp.o
#15 337.1 In file included from /usr/include/c++/13/array:43,
#15 337.1                  from /src/src/common/Common.h:22,
#15 337.1                  from /src/src/server/game/Entities/Object/Object.h:21,
#15 337.1                  from /src/src/server/game/Entities/Unit/Unit.h:21,
#15 337.1                  from /src/src/server/game/Entities/Creature/Creature.h:21,
#15 337.1                  from /src/src/server/game/PrecompiledHeaders/gamePCH.h:20,
#15 337.1                  from /src/build/src/server/game/CMakeFiles/game.dir/cmake_pch.hxx:5,
#15 337.1                  from <command-line>:
#15 337.1 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 337.1     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 337.1     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 337.1     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 337.1     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 337.1     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 337.1     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 337.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 337.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 337.1 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 337.1   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 337.1       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 337.1 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 337.1                  from /usr/include/c++/13/bits/allocator.h:46,
#15 337.1                  from /usr/include/c++/13/string:43,
#15 337.1                  from /src/src/common/Common.h:23:
#15 337.1 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 337.1     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 337.1     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 337.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 337.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 337.1 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 337.1   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 337.1       |                                                       ^
#15 337.1 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 337.1     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 337.1     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 337.1     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 337.1     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 337.1     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 337.1     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 337.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 337.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 337.1 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 337.1   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 337.1       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 337.1 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 337.1     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 337.1     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 337.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 337.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 337.1 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 337.1   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 337.1       |                                                       ^
#15 337.1 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 337.1     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 337.1     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 337.1     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 337.1     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 337.1     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 337.1     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 337.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 337.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 337.1 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 337.1   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 337.1       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 337.1 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 337.1     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 337.1     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 337.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 337.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 337.1     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 337.1 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 337.1   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 337.1       |                                                       ^
#15 338.2 [540/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/QueryHandler.cpp.o
#15 338.6 [541/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/MovementHandler.cpp.o
#15 339.3 [542/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/ScenarioHandler.cpp.o
#15 340.0 [543/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/SceneHandler.cpp.o
#15 340.4 [544/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/QuestHandler.cpp.o
#15 341.2 [545/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/SkillHandler.cpp.o
#15 341.5 [546/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/SocialHandler.cpp.o
#15 342.6 [547/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/TaxiHandler.cpp.o
#15 343.3 [548/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/TokenHandler.cpp.o
#15 343.5 [549/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/TicketHandler.cpp.o
#15 344.0 [550/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/SpellHandler.cpp.o
#15 344.8 [551/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/ToyHandler.cpp.o
#15 345.6 [552/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/VehicleHandler.cpp.o
#15 347.3 [553/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Handlers/TradeHandler.cpp.o
#15 347.4 [554/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Instances/InstanceLockMgr.cpp.o
#15 348.9 [555/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Instances/enuminfo_InstanceScript.cpp.o
#15 349.4 [556/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Instances/InstanceScript.cpp.o
#15 350.4 [557/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Instances/InstanceScriptData.cpp.o
#15 350.8 [558/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Loot/Loot.cpp.o
#15 350.8 /src/src/server/game/Loot/Loot.cpp: In member function 'void Loot::BuildLootResponse(WorldPackets::Loot::LootResponse&, Player*, PermissionTypes) const':
#15 350.8 /src/src/server/game/Loot/Loot.cpp:600:50: warning: comparison between 'enum PermissionTypes' and 'enum LootSlotType' [-Wenum-compare]
#15 350.8   600 |                     lootItem.UIType = permission == LOOT_SLOT_TYPE_ALLOW_LOOT;
#15 350.8       |                                       ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 351.7 [559/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Loot/LootItemStorage.cpp.o
#15 352.5 [560/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Maps/AreaBoundary.cpp.o
#15 352.9 [561/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Mails/Mail.cpp.o
#15 352.9 [562/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Loot/LootMgr.cpp.o
#15 353.8 [563/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Maps/GridMap.cpp.o
#15 354.4 [564/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Maps/MapReference.cpp.o
#15 356.6 [565/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Maps/MapUpdater.cpp.o
#15 356.8 [566/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Maps/MapManager.cpp.o
#15 357.6 [567/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Maps/MapScripts.cpp.o
#15 359.2 [568/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Maps/ZoneScript.cpp.o
#15 360.4 [569/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Maps/TerrainMgr.cpp.o
#15 360.8 [570/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Maps/enuminfo_SpawnData.cpp.o
#15 360.9 [571/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Maps/TransportMgr.cpp.o
#15 362.0 [572/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Miscellaneous/CommonPredicates.cpp.o
#15 362.4 [573/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Miscellaneous/enuminfo_RaceMask.cpp.o
#15 363.7 [574/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/AbstractPursuer.cpp.o
#15 364.0 [575/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Miscellaneous/enuminfo_SharedDefines.cpp.o
#15 365.2 [576/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/MovementDefines.cpp.o
#15 365.9 [577/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/MovementGenerator.cpp.o
#15 367.5 [578/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/enuminfo_MovementDefines.cpp.o
#15 367.6 [579/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/MotionMaster.cpp.o
#15 367.8 [580/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Maps/Map.cpp.o
#15 368.2 [581/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/PathGenerator.cpp.o
#15 369.5 [582/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/MovementGenerators/ChaseMovementGenerator.cpp.o
#15 369.7 [583/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/MovementGenerators/ConfusedMovementGenerator.cpp.o
#15 369.9 [584/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/MovementGenerators/FleeingMovementGenerator.cpp.o
#15 370.8 [585/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/MovementGenerators/FlightPathMovementGenerator.cpp.o
#15 371.5 [586/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/MovementGenerators/FormationMovementGenerator.cpp.o
#15 371.8 [587/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/MovementGenerators/GenericMovementGenerator.cpp.o
#15 371.9 [588/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/MovementGenerators/FollowMovementGenerator.cpp.o
#15 372.8 [589/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/MovementGenerators/HomeMovementGenerator.cpp.o
#15 373.4 [590/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/MovementGenerators/IdleMovementGenerator.cpp.o
#15 373.7 [591/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/MovementGenerators/PointMovementGenerator.cpp.o
#15 373.8 [592/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/MovementGenerators/RandomMovementGenerator.cpp.o
#15 374.9 [593/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/MovementGenerators/SplineChainMovementGenerator.cpp.o
#15 376.0 [594/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/MovementGenerators/WaypointMovementGenerator.cpp.o
#15 376.1 [595/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/Spline/MoveSpline.cpp.o
#15 376.2 [596/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/Spline/MoveSplineInit.cpp.o
#15 376.8 [597/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/Spline/MovementUtil.cpp.o
#15 377.7 [598/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/Spline/enuminfo_MoveSplineFlag.cpp.o
#15 378.1 [599/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/Waypoints/WaypointManager.cpp.o
#15 378.2 [600/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Movement/Spline/Spline.cpp.o
#15 379.7 [601/1373] Building CXX object src/server/game/CMakeFiles/game.dir/OutdoorPvP/OutdoorPvP.cpp.o
#15 380.2 [602/1373] Building CXX object src/server/game/CMakeFiles/game.dir/OutdoorPvP/OutdoorPvPMgr.cpp.o
#15 380.4 [603/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Petitions/PetitionMgr.cpp.o
#15 380.5 [604/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Phasing/PersonalPhaseTracker.cpp.o
#15 382.0 [605/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Phasing/PhaseShift.cpp.o
#15 383.2 [606/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Pools/QuestPools.cpp.o
#15 385.1 [607/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Pools/PoolMgr.cpp.o
#15 385.9 [608/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Quests/QuestObjectiveCriteriaMgr.cpp.o
#15 386.2 [609/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Quests/QuestDef.cpp.o
#15 386.7 [610/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Quests/enuminfo_QuestDef.cpp.o
#15 387.7 [611/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Phasing/PhasingHandler.cpp.o
#15 388.7 [612/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Scenarios/InstanceScenario.cpp.o
#15 389.2 [613/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Reputation/ReputationMgr.cpp.o
#15 389.5 [614/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Scenarios/Scenario.cpp.o
#15 390.8 [615/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Scripting/ScriptReloadMgr.cpp.o
#15 391.0 [616/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Scenarios/ScenarioMgr.cpp.o
#15 392.2 [617/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Scripting/ScriptSystem.cpp.o
#15 392.4 [618/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packet.cpp.o
#15 399.5 [619/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/WorldSocketMgr.cpp.o
#15 399.7 [620/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/WorldSocket.cpp.o
#15 401.3 [621/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/WorldSession.cpp.o
#15 401.4 [622/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/AddonPackets.cpp.o
#15 401.6 [623/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/AchievementPackets.cpp.o
#15 403.0 [624/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/AreaTriggerPackets.cpp.o
#15 403.2 [625/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/ArenaPackets.cpp.o
#15 404.8 [626/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/BankPackets.cpp.o
#15 405.3 [627/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/AuthenticationPackets.cpp.o
#15 405.9 [628/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/AuctionHousePackets.cpp.o
#15 406.9 [629/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/BattlePetPackets.cpp.o
#15 407.6 [630/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/BattlegroundPackets.cpp.o
#15 407.6 [631/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/BattlenetPackets.cpp.o
#15 409.7 [632/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/ChannelPackets.cpp.o
#15 409.8 [633/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Scripting/ScriptMgr.cpp.o
#15 410.0 [634/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/CalendarPackets.cpp.o
#15 411.5 [635/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/ClientConfigPackets.cpp.o
#15 411.5 [636/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/CharacterPackets.cpp.o
#15 411.6 [637/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/CollectionPackets.cpp.o
#15 412.8 [638/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/ChatPackets.cpp.o
#15 413.5 [639/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/CombatLogPacketsCommon.cpp.o
#15 413.6 [640/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/CombatPackets.cpp.o
#15 413.9 [641/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/CombatLogPackets.cpp.o
#15 414.4 [642/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/CraftingPacketsCommon.cpp.o
#15 415.1 [643/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/DuelPackets.cpp.o
#15 415.4 [644/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/EquipmentSetPackets.cpp.o
#15 415.5 [645/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/GameObjectPackets.cpp.o
#15 417.0 [646/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/HotfixPackets.cpp.o
#15 417.4 [647/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/InstancePackets.cpp.o
#15 418.2 [648/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/InspectPackets.cpp.o
#15 418.7 [649/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/GuildPackets.cpp.o
#15 419.2 [650/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/ItemPackets.cpp.o
#15 419.5 [651/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/ItemPacketsCommon.cpp.o
#15 420.4 [652/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/LFGPacketsCommon.cpp.o
#15 420.6 [653/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/LFGPackets.cpp.o
#15 421.3 [654/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/LootPackets.cpp.o
#15 422.6 [655/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/MailPackets.cpp.o
#15 422.9 [656/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/MythicPlusPacketsCommon.cpp.o
#15 423.5 [657/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/MiscPackets.cpp.o
#15 423.8 [658/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/MovementPackets.cpp.o
#15 424.7 [659/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/NPCPackets.cpp.o
#15 424.9 [660/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/PacketUtilities.cpp.o
#15 425.4 [661/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/PerksProgramPacketsCommon.cpp.o
#15 426.8 [662/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/PetPackets.cpp.o
#15 426.8 [663/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/PetitionPackets.cpp.o
#15 427.2 [664/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/PartyPackets.cpp.o
#15 428.2 [665/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/QueryPackets.cpp.o
#15 428.4 [666/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/ReferAFriendPackets.cpp.o
#15 428.8 [667/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/ReputationPackets.cpp.o
#15 430.2 [668/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/ScenePackets.cpp.o
#15 430.2 [669/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/QuestPackets.cpp.o
#15 430.3 [670/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/ScenarioPackets.cpp.o
#15 430.9 [671/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/SocialPackets.cpp.o
#15 432.2 [672/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/SystemPackets.cpp.o
#15 432.4 [673/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/TalentPackets.cpp.o
#15 432.6 [674/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/TaxiPackets.cpp.o
#15 434.0 [675/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/TokenPackets.cpp.o
#15 434.2 [676/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/SpellPackets.cpp.o
#15 434.2 [677/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/TotemPackets.cpp.o
#15 435.7 [678/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/TicketPackets.cpp.o
#15 435.9 [679/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/VehiclePackets.cpp.o
#15 436.0 [680/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/ToyPackets.cpp.o
#15 436.0 [681/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/TradePackets.cpp.o
#15 437.3 [682/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/WardenPackets.cpp.o
#15 437.5 [683/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/WorldStatePackets.cpp.o
#15 438.5 [684/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Packets/WhoPackets.cpp.o
#15 439.6 [685/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Protocol/PacketLog.cpp.o
#15 441.5 [686/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Services/WorldserverGameUtilitiesService.cpp.o
#15 441.7 [687/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Skills/SkillDiscovery.cpp.o
#15 442.3 [688/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Services/WorldserverServiceDispatcher.cpp.o
#15 443.5 [689/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Skills/SkillExtraItems.cpp.o
#15 447.7 [690/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Spells/SpellHistory.cpp.o
#15 450.4 [691/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Server/Protocol/Opcodes.cpp.o
#15 452.9 [692/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Spells/SpellEffects.cpp.o
#15 455.3 [693/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Spells/SpellInfo.cpp.o
#15 456.6 [694/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Spells/SpellScript.cpp.o
#15 458.3 [695/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Spells/Spell.cpp.o
#15 460.4 [696/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Storages/WhoListStorage.cpp.o
#15 462.9 [697/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Spells/Auras/SpellAuraEffects.cpp.o
#15 464.1 [698/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Spells/Auras/SpellAuras.cpp.o
#15 464.8 [699/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Texts/ChatTextBuilder.cpp.o
#15 466.3 [700/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Time/GameTime.cpp.o
#15 467.2 [701/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Support/SupportMgr.cpp.o
#15 467.9 [702/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Time/UpdateTime.cpp.o
#15 468.4 [703/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Texts/CreatureTextMgr.cpp.o
#15 469.0 [704/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Time/WowTime.cpp.o
#15 469.3 [705/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Spells/SpellMgr.cpp.o
#15 469.3 In file included from /usr/include/c++/13/array:43,
#15 469.3                  from /src/src/common/Common.h:22,
#15 469.3                  from /src/src/server/game/Entities/Object/Object.h:21,
#15 469.3                  from /src/src/server/game/Entities/Unit/Unit.h:21,
#15 469.3                  from /src/src/server/game/Entities/Creature/Creature.h:21,
#15 469.3                  from /src/src/server/game/PrecompiledHeaders/gamePCH.h:20,
#15 469.3                  from /src/build/src/server/game/CMakeFiles/game.dir/cmake_pch.hxx:5,
#15 469.3                  from <command-line>:
#15 469.3 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 469.3     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 469.3     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 469.3     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 469.3     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 469.3     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 469.3     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 469.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 469.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 469.3 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 469.3   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 469.3       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 469.3 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 469.3                  from /usr/include/c++/13/bits/allocator.h:46,
#15 469.3                  from /usr/include/c++/13/string:43,
#15 469.3                  from /src/src/common/Common.h:23:
#15 469.3 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 469.3     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 469.3     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 469.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 469.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 469.3 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 469.3   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 469.3       |                                                       ^
#15 469.3 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 469.3     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 469.3     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 469.3     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 469.3     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 469.3     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 469.3     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 469.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 469.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2886:32,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2994:29:
#15 469.3 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 469.3   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 469.3       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 469.3 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 469.3     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 469.3     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 469.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 469.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2886:32,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2994:29:
#15 469.3 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 469.3   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 469.3       |                                                       ^
#15 469.3 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 469.3     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 469.3     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 469.3     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 469.3     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 469.3     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 469.3     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 469.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 469.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 469.3 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 469.3   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 469.3       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 469.3 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 469.3     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 469.3     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 469.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 469.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 469.3 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 469.3   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 469.3       |                                                       ^
#15 469.3 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 469.3     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 469.3     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 469.3     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 469.3     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 469.3     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 469.3     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 469.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 469.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 469.3 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 469.3   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 469.3       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 469.3 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 469.3     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 469.3     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 469.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 469.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 469.3 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 469.3   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 469.3       |                                                       ^
#15 469.3 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 469.3     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 469.3     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 469.3     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 469.3     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 469.3     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 469.3     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 469.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 469.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = long long unsigned int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3015:19:
#15 469.3 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 469.3   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 469.3       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 469.3 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 469.3     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 469.3     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 469.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 469.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<_Tp, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = long long unsigned int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 469.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3015:19:
#15 469.3 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 469.3   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 469.3       |                                                       ^
#15 470.0 [706/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Tools/CharacterDatabaseCleaner.cpp.o
#15 471.2 [707/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Warden/Warden.cpp.o
#15 471.7 [708/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Warden/WardenCheckMgr.cpp.o
#15 472.2 [709/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Warden/WardenMac.cpp.o
#15 473.4 [710/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Warden/enuminfo_WardenCheckMgr.cpp.o
#15 474.2 [711/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Tools/PlayerDump.cpp.o
#15 474.2 [712/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Warden/WardenWin.cpp.o
#15 474.4 [713/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Weather/Weather.cpp.o
#15 475.2 [714/1373] Building CXX object src/server/game/CMakeFiles/game.dir/Weather/WeatherMgr.cpp.o
#15 475.9 [715/1373] Building CXX object src/server/game/CMakeFiles/game.dir/World/WorldStates/WorldState.cpp.o
#15 477.3 [716/1373] Building CXX object src/server/game/CMakeFiles/game.dir/World/WorldStates/WorldStateMgr.cpp.o
#15 477.3 [717/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/gen_scriptloader/static/ScriptLoader.cpp.o
#15 479.4 [718/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Battlefield/battlefield_script_loader.cpp.o
#15 480.4 [719/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Battlefield/BattlefieldWG.cpp.o
#15 481.8 [720/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_achievement.cpp.o
#15 486.3 [721/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_account.cpp.o
#15 487.2 [722/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_ahbot.cpp.o
#15 488.6 [723/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_ban.cpp.o
#15 493.3 [724/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_battlenet_account.cpp.o
#15 493.3 [725/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_bf.cpp.o
#15 493.3 In file included from /usr/include/c++/13/string:51,
#15 493.3                  from /usr/include/c++/13/bits/locale_classes.h:40,
#15 493.3                  from /usr/include/c++/13/bits/ios_base.h:41,
#15 493.3                  from /usr/include/c++/13/streambuf:43,
#15 493.3                  from /usr/include/c++/13/bits/streambuf_iterator.h:35,
#15 493.3                  from /usr/include/c++/13/iterator:66,
#15 493.3                  from /src/dep/fmt/include/fmt/core.h:14,
#15 493.3                  from /src/src/common/Utilities/StringFormat.h:22,
#15 493.3                  from /src/src/server/game/Chat/ChatCommands/ChatCommandHelpers.h:24,
#15 493.3                  from /src/src/server/game/Chat/ChatCommands/ChatCommandArgs.h:21,
#15 493.3                  from /src/src/server/game/Chat/ChatCommands/ChatCommand.h:21,
#15 493.3                  from /src/src/server/scripts/ScriptPCH.h:18,
#15 493.3                  from /src/build/src/server/scripts/CMakeFiles/scripts.dir/cmake_pch.hxx:5,
#15 493.3                  from <command-line>:
#15 493.3 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 493.3     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 493.3     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 493.3     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 493.3     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 493.3     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 493.3     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 493.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 493.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 493.3 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 493.3   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 493.3       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 493.3 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 493.3                  from /usr/include/c++/13/bits/allocator.h:46,
#15 493.3                  from /usr/include/c++/13/string:43:
#15 493.3 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 493.3     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 493.3     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 493.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 493.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 493.3 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 493.3   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 493.3       |                                                       ^
#15 493.3 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 493.3     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 493.3     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 493.3     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 493.3     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 493.3     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 493.3     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 493.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 493.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 493.3 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 493.3   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 493.3       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 493.3 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 493.3     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 493.3     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 493.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 493.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 493.3 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 493.3   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 493.3       |                                                       ^
#15 493.3 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 493.3     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 493.3     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 493.3     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 493.3     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 493.3     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 493.3     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 493.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 493.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 493.3 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 493.3   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 493.3       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 493.3 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 493.3     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 493.3     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 493.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 493.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 493.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 493.3 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 493.3   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 493.3       |                                                       ^
#15 494.3 [726/1373] Building CXX object src/server/game/CMakeFiles/game.dir/World/World.cpp.o
#15 494.9 [727/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_cast.cpp.o
#15 494.9 [728/1373] Linking CXX static library src/server/game/libgame.a
#15 499.5 [729/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_cheat.cpp.o
#15 501.0 [730/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_deserter.cpp.o
#15 501.0 In file included from /usr/include/c++/13/string:51,
#15 501.0                  from /usr/include/c++/13/bits/locale_classes.h:40,
#15 501.0                  from /usr/include/c++/13/bits/ios_base.h:41,
#15 501.0                  from /usr/include/c++/13/streambuf:43,
#15 501.0                  from /usr/include/c++/13/bits/streambuf_iterator.h:35,
#15 501.0                  from /usr/include/c++/13/iterator:66,
#15 501.0                  from /src/dep/fmt/include/fmt/core.h:14,
#15 501.0                  from /src/src/common/Utilities/StringFormat.h:22,
#15 501.0                  from /src/src/server/game/Chat/ChatCommands/ChatCommandHelpers.h:24,
#15 501.0                  from /src/src/server/game/Chat/ChatCommands/ChatCommandArgs.h:21,
#15 501.0                  from /src/src/server/game/Chat/ChatCommands/ChatCommand.h:21,
#15 501.0                  from /src/src/server/scripts/ScriptPCH.h:18,
#15 501.0                  from /src/build/src/server/scripts/CMakeFiles/scripts.dir/cmake_pch.hxx:5,
#15 501.0                  from <command-line>:
#15 501.0 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 501.0     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 501.0     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 501.0     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 501.0     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 501.0     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 501.0     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 501.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 501.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 501.0 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 501.0   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 501.0       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 501.0 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 501.0                  from /usr/include/c++/13/bits/allocator.h:46,
#15 501.0                  from /usr/include/c++/13/string:43:
#15 501.0 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 501.0     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 501.0     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 501.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 501.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 501.0 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 501.0   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 501.0       |                                                       ^
#15 501.0 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 501.0     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 501.0     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 501.0     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 501.0     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 501.0     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 501.0     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 501.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 501.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 501.0 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 501.0   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 501.0       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 501.0 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 501.0     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 501.0     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 501.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 501.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 501.0     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 501.0 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 501.0   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 501.0       |                                                       ^
#15 502.0 [731/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_character.cpp.o
#15 506.0 [732/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_disable.cpp.o
#15 506.0 In file included from /usr/include/c++/13/string:51,
#15 506.0                  from /usr/include/c++/13/bits/locale_classes.h:40,
#15 506.0                  from /usr/include/c++/13/bits/ios_base.h:41,
#15 506.0                  from /usr/include/c++/13/streambuf:43,
#15 506.0                  from /usr/include/c++/13/bits/streambuf_iterator.h:35,
#15 506.0                  from /usr/include/c++/13/iterator:66,
#15 506.0                  from /src/dep/fmt/include/fmt/core.h:14,
#15 506.0                  from /src/src/common/Utilities/StringFormat.h:22,
#15 506.0                  from /src/src/server/game/Chat/ChatCommands/ChatCommandHelpers.h:24,
#15 506.0                  from /src/src/server/game/Chat/ChatCommands/ChatCommandArgs.h:21,
#15 506.0                  from /src/src/server/game/Chat/ChatCommands/ChatCommand.h:21,
#15 506.0                  from /src/src/server/scripts/ScriptPCH.h:18,
#15 506.0                  from /src/build/src/server/scripts/CMakeFiles/scripts.dir/cmake_pch.hxx:5,
#15 506.0                  from <command-line>:
#15 506.0 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 506.0     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 506.0     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 506.0     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 506.0     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 506.0     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 506.0     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 506.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 506.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 506.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 506.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 506.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 506.0     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 506.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 506.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 506.0     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 506.0 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 506.0   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 506.0       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 506.0 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 506.1                  from /usr/include/c++/13/bits/allocator.h:46,
#15 506.1                  from /usr/include/c++/13/string:43:
#15 506.1 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 506.1     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 506.1     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 506.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 506.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 506.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 506.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 506.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 506.1     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 506.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 506.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 506.1     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 506.1 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 506.1   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 506.1       |                                                       ^
#15 507.1 [733/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_event.cpp.o
#15 507.1 In file included from /usr/include/c++/13/string:51,
#15 507.1                  from /usr/include/c++/13/bits/locale_classes.h:40,
#15 507.1                  from /usr/include/c++/13/bits/ios_base.h:41,
#15 507.1                  from /usr/include/c++/13/streambuf:43,
#15 507.1                  from /usr/include/c++/13/bits/streambuf_iterator.h:35,
#15 507.1                  from /usr/include/c++/13/iterator:66,
#15 507.1                  from /src/dep/fmt/include/fmt/core.h:14,
#15 507.1                  from /src/src/common/Utilities/StringFormat.h:22,
#15 507.1                  from /src/src/server/game/Chat/ChatCommands/ChatCommandHelpers.h:24,
#15 507.1                  from /src/src/server/game/Chat/ChatCommands/ChatCommandArgs.h:21,
#15 507.1                  from /src/src/server/game/Chat/ChatCommands/ChatCommand.h:21,
#15 507.1                  from /src/src/server/scripts/ScriptPCH.h:18,
#15 507.1                  from /src/build/src/server/scripts/CMakeFiles/scripts.dir/cmake_pch.hxx:5,
#15 507.1                  from <command-line>:
#15 507.1 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 507.1     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 507.1     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 507.1     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 507.1     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 507.1     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 507.1     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 507.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 507.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 507.1 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 507.1   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 507.1       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 507.1 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 507.1                  from /usr/include/c++/13/bits/allocator.h:46,
#15 507.1                  from /usr/include/c++/13/string:43:
#15 507.1 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 507.1     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 507.1     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 507.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 507.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 507.1 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 507.1   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 507.1       |                                                       ^
#15 507.1 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 507.1     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 507.1     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 507.1     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 507.1     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 507.1     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 507.1     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 507.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 507.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 507.1 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 507.1   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 507.1       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 507.1 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 507.1     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 507.1     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 507.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 507.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 507.1     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 507.1 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 507.1   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 507.1       |                                                       ^
#15 508.3 [734/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_gm.cpp.o
#15 508.3 In file included from /usr/include/c++/13/string:51,
#15 508.3                  from /usr/include/c++/13/bits/locale_classes.h:40,
#15 508.3                  from /usr/include/c++/13/bits/ios_base.h:41,
#15 508.3                  from /usr/include/c++/13/streambuf:43,
#15 508.3                  from /usr/include/c++/13/bits/streambuf_iterator.h:35,
#15 508.3                  from /usr/include/c++/13/iterator:66,
#15 508.3                  from /src/dep/fmt/include/fmt/core.h:14,
#15 508.3                  from /src/src/common/Utilities/StringFormat.h:22,
#15 508.3                  from /src/src/server/game/Chat/ChatCommands/ChatCommandHelpers.h:24,
#15 508.3                  from /src/src/server/game/Chat/ChatCommands/ChatCommandArgs.h:21,
#15 508.3                  from /src/src/server/game/Chat/ChatCommands/ChatCommand.h:21,
#15 508.3                  from /src/src/server/scripts/ScriptPCH.h:18,
#15 508.3                  from /src/build/src/server/scripts/CMakeFiles/scripts.dir/cmake_pch.hxx:5,
#15 508.3                  from <command-line>:
#15 508.3 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 508.3     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 508.3     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 508.3     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 508.3     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 508.3     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 508.3     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 508.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 508.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 508.3 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 508.3   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 508.3       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 508.3 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 508.3                  from /usr/include/c++/13/bits/allocator.h:46,
#15 508.3                  from /usr/include/c++/13/string:43:
#15 508.3 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 508.3     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 508.3     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 508.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 508.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 508.3 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 508.3   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 508.3       |                                                       ^
#15 508.3 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 508.3     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 508.3     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 508.3     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 508.3     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 508.3     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 508.3     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 508.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 508.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 508.3 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 508.3   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 508.3       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 508.3 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 508.3     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 508.3     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 508.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 508.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 508.3 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 508.3   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 508.3       |                                                       ^
#15 508.3 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 508.3     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 508.3     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 508.3     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 508.3     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 508.3     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 508.3     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 508.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 508.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 508.3 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 508.3   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 508.3       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 508.3 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 508.3     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 508.3     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 508.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 508.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 508.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 508.3 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 508.3   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 508.3       |                                                       ^
#15 510.6 [735/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_debug.cpp.o
#15 515.0 [736/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_group.cpp.o
#15 515.4 [737/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_go.cpp.o
#15 516.5 [738/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_gobject.cpp.o
#15 516.5 In file included from /usr/include/c++/13/string:51,
#15 516.5                  from /usr/include/c++/13/bits/locale_classes.h:40,
#15 516.5                  from /usr/include/c++/13/bits/ios_base.h:41,
#15 516.5                  from /usr/include/c++/13/streambuf:43,
#15 516.5                  from /usr/include/c++/13/bits/streambuf_iterator.h:35,
#15 516.5                  from /usr/include/c++/13/iterator:66,
#15 516.5                  from /src/dep/fmt/include/fmt/core.h:14,
#15 516.5                  from /src/src/common/Utilities/StringFormat.h:22,
#15 516.5                  from /src/src/server/game/Chat/ChatCommands/ChatCommandHelpers.h:24,
#15 516.5                  from /src/src/server/game/Chat/ChatCommands/ChatCommandArgs.h:21,
#15 516.5                  from /src/src/server/game/Chat/ChatCommands/ChatCommand.h:21,
#15 516.5                  from /src/src/server/scripts/ScriptPCH.h:18,
#15 516.5                  from /src/build/src/server/scripts/CMakeFiles/scripts.dir/cmake_pch.hxx:5,
#15 516.5                  from <command-line>:
#15 516.5 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 516.5     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 516.5     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 516.5     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 516.5     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 516.5     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 516.5     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 516.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 516.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 516.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 516.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 516.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 516.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 516.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 516.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 516.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 516.5 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 516.5   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 516.5       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 516.5 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 516.5                  from /usr/include/c++/13/bits/allocator.h:46,
#15 516.5                  from /usr/include/c++/13/string:43:
#15 516.5 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 516.5     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 516.5     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 516.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 516.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 516.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 516.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 516.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 516.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 516.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 516.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 516.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 516.5 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 516.5   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 516.5       |                                                       ^
#15 517.7 [739/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_guild.cpp.o
#15 521.0 [740/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_honor.cpp.o
#15 521.0 In file included from /usr/include/c++/13/string:51,
#15 521.0                  from /usr/include/c++/13/bits/locale_classes.h:40,
#15 521.0                  from /usr/include/c++/13/bits/ios_base.h:41,
#15 521.0                  from /usr/include/c++/13/streambuf:43,
#15 521.0                  from /usr/include/c++/13/bits/streambuf_iterator.h:35,
#15 521.0                  from /usr/include/c++/13/iterator:66,
#15 521.0                  from /src/dep/fmt/include/fmt/core.h:14,
#15 521.0                  from /src/src/common/Utilities/StringFormat.h:22,
#15 521.0                  from /src/src/server/game/Chat/ChatCommands/ChatCommandHelpers.h:24,
#15 521.0                  from /src/src/server/game/Chat/ChatCommands/ChatCommandArgs.h:21,
#15 521.0                  from /src/src/server/game/Chat/ChatCommands/ChatCommand.h:21,
#15 521.0                  from /src/src/server/scripts/ScriptPCH.h:18,
#15 521.0                  from /src/build/src/server/scripts/CMakeFiles/scripts.dir/cmake_pch.hxx:5,
#15 521.0                  from <command-line>:
#15 521.0 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 521.0     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 521.0     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 521.0     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 521.0     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 521.0     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 521.0     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 521.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 521.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 521.0 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 521.0   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 521.0       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 521.0 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 521.0                  from /usr/include/c++/13/bits/allocator.h:46,
#15 521.0                  from /usr/include/c++/13/string:43:
#15 521.0 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 521.0     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 521.0     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 521.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 521.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 521.0 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 521.0   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 521.0       |                                                       ^
#15 521.0 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 521.0     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 521.0     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 521.0     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 521.0     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 521.0     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 521.0     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 521.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 521.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 521.0 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 521.0   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 521.0       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 521.0 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 521.0     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 521.0     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 521.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 521.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 521.0 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 521.0   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 521.0       |                                                       ^
#15 521.0 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 521.0     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 521.0     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 521.0     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 521.0     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 521.0     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 521.0     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 521.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 521.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 521.0 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 521.0   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 521.0       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 521.0 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 521.0     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 521.0     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 521.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 521.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 521.0     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 521.0 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 521.0   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 521.0       |                                                       ^
#15 522.6 [741/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_instance.cpp.o
#15 522.9 [742/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_learn.cpp.o
#15 524.4 [743/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_lfg.cpp.o
#15 529.7 [744/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_message.cpp.o
#15 530.0 [745/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_list.cpp.o
#15 530.3 [746/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_lookup.cpp.o
#15 536.0 [747/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_mmaps.cpp.o
#15 536.0 In file included from /usr/include/c++/13/string:51,
#15 536.0                  from /usr/include/c++/13/bits/locale_classes.h:40,
#15 536.0                  from /usr/include/c++/13/bits/ios_base.h:41,
#15 536.0                  from /usr/include/c++/13/streambuf:43,
#15 536.0                  from /usr/include/c++/13/bits/streambuf_iterator.h:35,
#15 536.0                  from /usr/include/c++/13/iterator:66,
#15 536.0                  from /src/dep/fmt/include/fmt/core.h:14,
#15 536.0                  from /src/src/common/Utilities/StringFormat.h:22,
#15 536.0                  from /src/src/server/game/Chat/ChatCommands/ChatCommandHelpers.h:24,
#15 536.0                  from /src/src/server/game/Chat/ChatCommands/ChatCommandArgs.h:21,
#15 536.0                  from /src/src/server/game/Chat/ChatCommands/ChatCommand.h:21,
#15 536.0                  from /src/src/server/scripts/ScriptPCH.h:18,
#15 536.0                  from /src/build/src/server/scripts/CMakeFiles/scripts.dir/cmake_pch.hxx:5,
#15 536.0                  from <command-line>:
#15 536.0 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 536.0     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 536.0     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 536.0     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 536.0     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 536.0     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 536.0     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 536.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 536.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 536.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 536.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 536.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 536.0     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 536.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 536.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 536.0     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 536.0 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 536.0   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 536.0       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 536.0 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 536.0                  from /usr/include/c++/13/bits/allocator.h:46,
#15 536.0                  from /usr/include/c++/13/string:43:
#15 536.0 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 536.0     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 536.0     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 536.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 536.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 536.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 536.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 536.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 536.0     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 536.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 536.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 536.0     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 536.0 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 536.0   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 536.0       |                                                       ^
#15 537.0 [748/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_misc.cpp.o
#15 537.0 In file included from /usr/include/c++/13/string:51,
#15 537.0                  from /usr/include/c++/13/bits/locale_classes.h:40,
#15 537.0                  from /usr/include/c++/13/bits/ios_base.h:41,
#15 537.0                  from /usr/include/c++/13/streambuf:43,
#15 537.0                  from /usr/include/c++/13/bits/streambuf_iterator.h:35,
#15 537.0                  from /usr/include/c++/13/iterator:66,
#15 537.0                  from /src/dep/fmt/include/fmt/core.h:14,
#15 537.0                  from /src/src/common/Utilities/StringFormat.h:22,
#15 537.0                  from /src/src/server/game/Chat/ChatCommands/ChatCommandHelpers.h:24,
#15 537.0                  from /src/src/server/game/Chat/ChatCommands/ChatCommandArgs.h:21,
#15 537.0                  from /src/src/server/game/Chat/ChatCommands/ChatCommand.h:21,
#15 537.0                  from /src/src/server/scripts/ScriptPCH.h:18,
#15 537.0                  from /src/build/src/server/scripts/CMakeFiles/scripts.dir/cmake_pch.hxx:5,
#15 537.0                  from <command-line>:
#15 537.0 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 537.0     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 537.0     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 537.0     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 537.0     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 537.0     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 537.0     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 537.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 537.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 537.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 537.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 537.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 537.0     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 537.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 537.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 537.0     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 537.0 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 537.0   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 537.0       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 537.0 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 537.0                  from /usr/include/c++/13/bits/allocator.h:46,
#15 537.0                  from /usr/include/c++/13/string:43:
#15 537.0 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 537.0     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 537.0     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 537.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 537.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 537.0     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 537.0     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 537.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 537.0     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 537.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 537.0     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 537.0     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 537.0 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 537.0   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 537.0       |                                                       ^
#15 538.1 [749/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_modify.cpp.o
#15 538.1 In file included from /usr/include/c++/13/string:51,
#15 538.1                  from /usr/include/c++/13/bits/locale_classes.h:40,
#15 538.1                  from /usr/include/c++/13/bits/ios_base.h:41,
#15 538.1                  from /usr/include/c++/13/streambuf:43,
#15 538.1                  from /usr/include/c++/13/bits/streambuf_iterator.h:35,
#15 538.1                  from /usr/include/c++/13/iterator:66,
#15 538.1                  from /src/dep/fmt/include/fmt/core.h:14,
#15 538.1                  from /src/src/common/Utilities/StringFormat.h:22,
#15 538.1                  from /src/src/server/game/Chat/ChatCommands/ChatCommandHelpers.h:24,
#15 538.1                  from /src/src/server/game/Chat/ChatCommands/ChatCommandArgs.h:21,
#15 538.1                  from /src/src/server/game/Chat/ChatCommands/ChatCommand.h:21,
#15 538.1                  from /src/src/server/scripts/ScriptPCH.h:18,
#15 538.1                  from /src/build/src/server/scripts/CMakeFiles/scripts.dir/cmake_pch.hxx:5,
#15 538.1                  from <command-line>:
#15 538.1 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 538.1     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 538.1     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 538.1     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 538.1     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 538.1     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 538.1     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 538.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 538.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 538.1 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 538.1   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 538.1       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 538.1 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 538.1                  from /usr/include/c++/13/bits/allocator.h:46,
#15 538.1                  from /usr/include/c++/13/string:43:
#15 538.1 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 538.1     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 538.1     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 538.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 538.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 538.1 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 538.1   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 538.1       |                                                       ^
#15 538.1 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 538.1     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 538.1     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 538.1     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 538.1     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 538.1     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 538.1     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 538.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 538.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 538.1 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 538.1   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 538.1       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 538.1 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 538.1     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 538.1     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 538.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 538.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 538.1 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 538.1   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 538.1       |                                                       ^
#15 538.1 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 538.1     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 538.1     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 538.1     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 538.1     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 538.1     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 538.1     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 538.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 538.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 538.1 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 538.1   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 538.1       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 538.1 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 538.1     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 538.1     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 538.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 538.1     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 538.1     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 538.1 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 538.1   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 538.1       |                                                       ^
#15 541.6 [750/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_npc.cpp.o
#15 542.2 [751/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_pet.cpp.o
#15 542.2 In file included from /usr/include/c++/13/string:51,
#15 542.2                  from /usr/include/c++/13/bits/locale_classes.h:40,
#15 542.2                  from /usr/include/c++/13/bits/ios_base.h:41,
#15 542.2                  from /usr/include/c++/13/streambuf:43,
#15 542.2                  from /usr/include/c++/13/bits/streambuf_iterator.h:35,
#15 542.2                  from /usr/include/c++/13/iterator:66,
#15 542.2                  from /src/dep/fmt/include/fmt/core.h:14,
#15 542.2                  from /src/src/common/Utilities/StringFormat.h:22,
#15 542.2                  from /src/src/server/game/Chat/ChatCommands/ChatCommandHelpers.h:24,
#15 542.2                  from /src/src/server/game/Chat/ChatCommands/ChatCommandArgs.h:21,
#15 542.2                  from /src/src/server/game/Chat/ChatCommands/ChatCommand.h:21,
#15 542.2                  from /src/src/server/scripts/ScriptPCH.h:18,
#15 542.2                  from /src/build/src/server/scripts/CMakeFiles/scripts.dir/cmake_pch.hxx:5,
#15 542.2                  from <command-line>:
#15 542.2 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 542.2     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 542.2     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 542.2     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 542.2     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 542.2     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 542.2     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 542.2     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 542.2     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 542.2     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 542.2     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 542.2     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 542.2     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 542.2     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 542.2 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 542.2   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 542.2       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 542.3 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 542.3                  from /usr/include/c++/13/bits/allocator.h:46,
#15 542.3                  from /usr/include/c++/13/string:43:
#15 542.3 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 542.3     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 542.3     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 542.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 542.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 542.3 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 542.3   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 542.3       |                                                       ^
#15 542.3 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 542.3     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 542.3     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 542.3     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 542.3     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 542.3     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 542.3     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 542.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 542.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 542.3 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 542.3   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 542.3       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 542.3 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 542.3     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 542.3     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 542.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 542.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 542.3 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 542.3   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 542.3       |                                                       ^
#15 542.3 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 542.3     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 542.3     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 542.3     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 542.3     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 542.3     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 542.3     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 542.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 542.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 542.3 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 542.3   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 542.3       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 542.3 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 542.3     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 542.3     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 542.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 542.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 542.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 542.3 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 542.3   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 542.3       |                                                       ^
#15 543.3 [752/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_quest.cpp.o
#15 543.3 In file included from /usr/include/c++/13/string:51,
#15 543.3                  from /usr/include/c++/13/bits/locale_classes.h:40,
#15 543.3                  from /usr/include/c++/13/bits/ios_base.h:41,
#15 543.3                  from /usr/include/c++/13/streambuf:43,
#15 543.3                  from /usr/include/c++/13/bits/streambuf_iterator.h:35,
#15 543.3                  from /usr/include/c++/13/iterator:66,
#15 543.3                  from /src/dep/fmt/include/fmt/core.h:14,
#15 543.3                  from /src/src/common/Utilities/StringFormat.h:22,
#15 543.3                  from /src/src/server/game/Chat/ChatCommands/ChatCommandHelpers.h:24,
#15 543.3                  from /src/src/server/game/Chat/ChatCommands/ChatCommandArgs.h:21,
#15 543.3                  from /src/src/server/game/Chat/ChatCommands/ChatCommand.h:21,
#15 543.3                  from /src/src/server/scripts/ScriptPCH.h:18,
#15 543.3                  from /src/build/src/server/scripts/CMakeFiles/scripts.dir/cmake_pch.hxx:5,
#15 543.3                  from <command-line>:
#15 543.3 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 543.3     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 543.3     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 543.3     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 543.3     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 543.3     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 543.3     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 543.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 543.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 543.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 543.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 543.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 543.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 543.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 543.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 543.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 543.3 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 543.3   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 543.3       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 543.3 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 543.3                  from /usr/include/c++/13/bits/allocator.h:46,
#15 543.3                  from /usr/include/c++/13/string:43:
#15 543.3 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 543.3     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 543.3     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 543.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 543.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 543.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 543.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 543.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 543.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 543.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 543.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 543.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 543.3 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 543.3   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 543.3       |                                                       ^
#15 544.7 [753/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_rbac.cpp.o
#15 546.9 [754/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_script_loader.cpp.o
#15 548.4 [755/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_reset.cpp.o
#15 549.5 [756/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_scene.cpp.o
#15 549.5 In file included from /usr/include/c++/13/string:51,
#15 549.5                  from /usr/include/c++/13/bits/locale_classes.h:40,
#15 549.5                  from /usr/include/c++/13/bits/ios_base.h:41,
#15 549.5                  from /usr/include/c++/13/streambuf:43,
#15 549.5                  from /usr/include/c++/13/bits/streambuf_iterator.h:35,
#15 549.5                  from /usr/include/c++/13/iterator:66,
#15 549.5                  from /src/dep/fmt/include/fmt/core.h:14,
#15 549.5                  from /src/src/common/Utilities/StringFormat.h:22,
#15 549.5                  from /src/src/server/game/Chat/ChatCommands/ChatCommandHelpers.h:24,
#15 549.5                  from /src/src/server/game/Chat/ChatCommands/ChatCommandArgs.h:21,
#15 549.5                  from /src/src/server/game/Chat/ChatCommands/ChatCommand.h:21,
#15 549.5                  from /src/src/server/scripts/ScriptPCH.h:18,
#15 549.5                  from /src/build/src/server/scripts/CMakeFiles/scripts.dir/cmake_pch.hxx:5,
#15 549.5                  from <command-line>:
#15 549.5 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 549.5     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 549.5     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 549.5     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 549.5     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 549.5     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 549.5     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 549.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 549.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 549.5 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 549.5   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 549.5       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 549.5 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 549.5                  from /usr/include/c++/13/bits/allocator.h:46,
#15 549.5                  from /usr/include/c++/13/string:43:
#15 549.5 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 549.5     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 549.5     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 549.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 549.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 549.5 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 549.5   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 549.5       |                                                       ^
#15 549.5 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 549.5     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 549.5     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 549.5     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 549.5     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 549.5     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 549.5     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 549.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 549.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 549.5 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 549.5   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 549.5       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 549.5 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 549.5     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 549.5     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 549.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 549.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 549.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 549.5 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 549.5   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 549.5       |                                                       ^
#15 549.9 [757/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_reload.cpp.o
#15 553.4 [758/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_send.cpp.o
#15 553.4 In file included from /usr/include/c++/13/string:51,
#15 553.4                  from /usr/include/c++/13/bits/locale_classes.h:40,
#15 553.4                  from /usr/include/c++/13/bits/ios_base.h:41,
#15 553.4                  from /usr/include/c++/13/streambuf:43,
#15 553.4                  from /usr/include/c++/13/bits/streambuf_iterator.h:35,
#15 553.4                  from /usr/include/c++/13/iterator:66,
#15 553.4                  from /src/dep/fmt/include/fmt/core.h:14,
#15 553.4                  from /src/src/common/Utilities/StringFormat.h:22,
#15 553.4                  from /src/src/server/game/Chat/ChatCommands/ChatCommandHelpers.h:24,
#15 553.4                  from /src/src/server/game/Chat/ChatCommands/ChatCommandArgs.h:21,
#15 553.4                  from /src/src/server/game/Chat/ChatCommands/ChatCommand.h:21,
#15 553.4                  from /src/src/server/scripts/ScriptPCH.h:18,
#15 553.4                  from /src/build/src/server/scripts/CMakeFiles/scripts.dir/cmake_pch.hxx:5,
#15 553.4                  from <command-line>:
#15 553.4 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 553.4     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 553.4     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 553.4     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 553.4     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 553.4     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 553.4     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 553.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 553.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 553.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 553.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 553.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 553.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 553.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 553.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 553.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 553.4 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 553.4   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 553.4       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 553.4 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 553.4                  from /usr/include/c++/13/bits/allocator.h:46,
#15 553.4                  from /usr/include/c++/13/string:43:
#15 553.4 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 553.5     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 553.5     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 553.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 553.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 553.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 553.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 553.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 553.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 553.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 553.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 553.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 553.5 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 553.5   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 553.5       |                                                       ^
#15 556.3 [759/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_server.cpp.o
#15 556.5 [760/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_ticket.cpp.o
#15 556.5 In file included from /usr/include/c++/13/string:51,
#15 556.5                  from /usr/include/c++/13/bits/locale_classes.h:40,
#15 556.5                  from /usr/include/c++/13/bits/ios_base.h:41,
#15 556.5                  from /usr/include/c++/13/streambuf:43,
#15 556.5                  from /usr/include/c++/13/bits/streambuf_iterator.h:35,
#15 556.5                  from /usr/include/c++/13/iterator:66,
#15 556.5                  from /src/dep/fmt/include/fmt/core.h:14,
#15 556.5                  from /src/src/common/Utilities/StringFormat.h:22,
#15 556.5                  from /src/src/server/game/Chat/ChatCommands/ChatCommandHelpers.h:24,
#15 556.5                  from /src/src/server/game/Chat/ChatCommands/ChatCommandArgs.h:21,
#15 556.5                  from /src/src/server/game/Chat/ChatCommands/ChatCommand.h:21,
#15 556.5                  from /src/src/server/scripts/ScriptPCH.h:18,
#15 556.5                  from /src/build/src/server/scripts/CMakeFiles/scripts.dir/cmake_pch.hxx:5,
#15 556.5                  from <command-line>:
#15 556.5 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 556.5     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 556.5     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 556.5     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 556.5     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 556.5     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 556.5     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 556.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 556.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 556.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 556.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 556.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 556.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 556.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 556.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 556.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 556.5 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 556.5   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 556.5       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 556.5 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 556.5                  from /usr/include/c++/13/bits/allocator.h:46,
#15 556.5                  from /usr/include/c++/13/string:43:
#15 556.5 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 556.5     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 556.5     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 556.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 556.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 556.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 556.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 556.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 556.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 556.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 556.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 556.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 556.5 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 556.5   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 556.5       |                                                       ^
#15 557.1 [761/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_tele.cpp.o
#15 558.6 [762/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Custom/custom_script_loader.cpp.o
#15 559.2 [763/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/eastern_kingdoms_script_loader.cpp.o
#15 560.3 [764/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_titles.cpp.o
#15 560.3 In file included from /usr/include/c++/13/string:51,
#15 560.3                  from /usr/include/c++/13/bits/locale_classes.h:40,
#15 560.3                  from /usr/include/c++/13/bits/ios_base.h:41,
#15 560.3                  from /usr/include/c++/13/streambuf:43,
#15 560.3                  from /usr/include/c++/13/bits/streambuf_iterator.h:35,
#15 560.3                  from /usr/include/c++/13/iterator:66,
#15 560.3                  from /src/dep/fmt/include/fmt/core.h:14,
#15 560.3                  from /src/src/common/Utilities/StringFormat.h:22,
#15 560.3                  from /src/src/server/game/Chat/ChatCommands/ChatCommandHelpers.h:24,
#15 560.3                  from /src/src/server/game/Chat/ChatCommands/ChatCommandArgs.h:21,
#15 560.3                  from /src/src/server/game/Chat/ChatCommands/ChatCommand.h:21,
#15 560.3                  from /src/src/server/scripts/ScriptPCH.h:18,
#15 560.3                  from /src/build/src/server/scripts/CMakeFiles/scripts.dir/cmake_pch.hxx:5,
#15 560.3                  from <command-line>:
#15 560.3 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 560.3     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 560.3     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 560.3     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 560.3     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 560.3     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 560.3     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 560.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 560.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 560.3 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 560.3   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 560.3       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 560.3 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 560.3                  from /usr/include/c++/13/bits/allocator.h:46,
#15 560.3                  from /usr/include/c++/13/string:43:
#15 560.3 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 560.3     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 560.3     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 560.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 560.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 560.3 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 560.3   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 560.3       |                                                       ^
#15 560.3 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 560.3     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 560.3     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 560.3     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 560.3     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 560.3     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 560.3     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 560.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 560.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 560.3 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 560.3   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 560.3       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 560.3 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 560.3     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 560.3     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 560.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 560.3     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 560.3     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 560.3 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 560.3   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 560.3       |                                                       ^
#15 560.9 [765/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/zone_blasted_lands.cpp.o
#15 561.5 [766/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/zone_duskwood.cpp.o
#15 562.5 [767/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/zone_eastern_plaguelands.cpp.o
#15 563.4 [768/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Commands/cs_wp.cpp.o
#15 563.4 In file included from /usr/include/c++/13/string:51,
#15 563.4                  from /usr/include/c++/13/bits/locale_classes.h:40,
#15 563.4                  from /usr/include/c++/13/bits/ios_base.h:41,
#15 563.4                  from /usr/include/c++/13/streambuf:43,
#15 563.4                  from /usr/include/c++/13/bits/streambuf_iterator.h:35,
#15 563.4                  from /usr/include/c++/13/iterator:66,
#15 563.4                  from /src/dep/fmt/include/fmt/core.h:14,
#15 563.4                  from /src/src/common/Utilities/StringFormat.h:22,
#15 563.4                  from /src/src/server/game/Chat/ChatCommands/ChatCommandHelpers.h:24,
#15 563.4                  from /src/src/server/game/Chat/ChatCommands/ChatCommandArgs.h:21,
#15 563.4                  from /src/src/server/game/Chat/ChatCommands/ChatCommand.h:21,
#15 563.4                  from /src/src/server/scripts/ScriptPCH.h:18,
#15 563.4                  from /src/build/src/server/scripts/CMakeFiles/scripts.dir/cmake_pch.hxx:5,
#15 563.4                  from <command-line>:
#15 563.4 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 563.4     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 563.4     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 563.4     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 563.4     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 563.4     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 563.4     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 563.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 563.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 563.4 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 563.4   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 563.4       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 563.4 In file included from /usr/include/x86_64-linux-gnu/c++/13/bits/c++allocator.h:33,
#15 563.4                  from /usr/include/c++/13/bits/allocator.h:46,
#15 563.4                  from /usr/include/c++/13/string:43:
#15 563.4 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 563.4     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 563.4     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 563.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 563.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:2990:19:
#15 563.4 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 563.4   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 563.4       |                                                       ^
#15 563.4 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 563.4     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 563.4     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 563.4     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 563.4     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 563.4     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 563.4     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 563.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 563.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 563.4 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 563.4   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 563.4       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 563.4 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 563.4     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 563.4     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 563.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 563.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3006:17:
#15 563.4 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 563.4   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 563.4       |                                                       ^
#15 563.4 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 563.4     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 563.4     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 563.4     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 563.4     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 563.4     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 563.4     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 563.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 563.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 563.4 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 563.4   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 563.4       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 563.4 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 563.4     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 563.4     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 563.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 563.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2893:11,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign_pow10(int)' at /src/dep/fmt/include/fmt/format.h:2884:24,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3011:29:
#15 563.4 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 563.4   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 563.4       |                                                       ^
#15 563.4 In static member function 'static constexpr _Up* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(_Tp*, _Tp*, _Up*) [with _Tp = unsigned int; _Up = unsigned int; bool _IsMove = false]',
#15 563.4     inlined from 'constexpr _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:506:30,
#15 563.4     inlined from 'constexpr _OI std::__copy_move_a1(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:533:42,
#15 563.4     inlined from 'constexpr _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = false; _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:540:31,
#15 563.4     inlined from 'constexpr _OI std::copy(_II, _II, _OI) [with _II = unsigned int*; _OI = unsigned int*]' at /usr/include/c++/13/bits/stl_algobase.h:633:7,
#15 563.4     inlined from 'static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:147:27,
#15 563.4     inlined from '_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = unsigned int*; _ForwardIterator = unsigned int*]' at /usr/include/c++/13/bits/stl_uninitialized.h:185:15,
#15 563.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:925:26,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 563.4     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = long long unsigned int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 563.4     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3015:19:
#15 563.5 /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: 'void* __builtin_memmove(void*, const void*, long unsigned int)' writing between 5 and 9223372036854775807 bytes into a region of size 4 overflows the destination [-Wstringop-overflow=]
#15 563.5   437 |             __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
#15 563.5       |             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#15 563.5 In member function '_Tp* std::__new_allocator<_Tp>::allocate(size_type, const void*) [with _Tp = unsigned int]',
#15 563.5     inlined from 'constexpr _Tp* std::allocator< <template-parameter-1-1> >::allocate(std::size_t) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/allocator.h:198:40,
#15 563.5     inlined from 'static constexpr _Tp* std::allocator_traits<std::allocator<_CharT> >::allocate(allocator_type&, size_type) [with _Tp = unsigned int]' at /usr/include/c++/13/bits/alloc_traits.h:482:28,
#15 563.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::grow(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:923:49,
#15 563.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_reserve(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:928:39,
#15 563.5     inlined from 'constexpr void fmt::v9::detail::buffer<T>::try_resize(size_t) [with T = unsigned int]' at /src/dep/fmt/include/fmt/core.h:919:16,
#15 563.5     inlined from 'constexpr void fmt::v9::basic_memory_buffer<T, SIZE, Allocator>::resize(size_t) [with T = unsigned int; long unsigned int SIZE = 32; Allocator = std::allocator<unsigned int>]' at /src/dep/fmt/include/fmt/format.h:897:63,
#15 563.5     inlined from 'constexpr void fmt::v9::detail::bigint::assign(UInt) [with UInt = long unsigned int; typename std::enable_if<(std::is_same<UInt, long unsigned int>::value || std::is_same<UInt, __int128 unsigned>::value), int>::type <anonymous> = 0]' at /src/dep/fmt/include/fmt/format.h:2792:19,
#15 563.5     inlined from 'constexpr void fmt::v9::detail::bigint::operator=(Int) [with Int = long long unsigned int]' at /src/dep/fmt/include/fmt/format.h:2813:11,
#15 563.5     inlined from 'constexpr void fmt::v9::detail::format_dragon(basic_fp<__int128 unsigned>, unsigned int, int, buffer<char>&, int&)' at /src/dep/fmt/include/fmt/format.h:3015:19:
#15 563.5 /usr/include/c++/13/bits/new_allocator.h:151:55: note: destination object of size 4 allocated by 'operator new'
#15 563.5   151 |         return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
#15 563.5       |                                                       ^
#15 563.6 [769/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/zone_elwynn_forest.cpp.o
#15 563.9 [770/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/zone_eversong_woods.cpp.o
#15 564.8 [771/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/zone_hinterlands.cpp.o
#15 566.0 [772/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/zone_isle_of_queldanas.cpp.o
#15 566.0 [773/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/zone_stormwind_city.cpp.o
#15 566.3 [774/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/zone_tirisfal_glades.cpp.o
#15 567.4 [775/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/zone_undercity.cpp.o
#15 568.4 [776/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/AlteracValley/alterac_valley.cpp.o
#15 568.6 [777/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/AlteracValley/boss_balinda.cpp.o
#15 568.7 [778/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/AlteracValley/boss_drekthar.cpp.o
#15 569.8 [779/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/AlteracValley/boss_galvangar.cpp.o
#15 571.0 [780/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockDepths/boss_ambassador_flamelash.cpp.o
#15 571.3 [781/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockDepths/blackrock_depths.cpp.o
#15 571.3 [782/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/AlteracValley/boss_vanndar.cpp.o
#15 573.4 [783/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockDepths/boss_emperor_dagran_thaurissan.cpp.o
#15 573.6 [784/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockDepths/boss_high_interrogator_gerstahn.cpp.o
#15 573.7 [785/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockDepths/boss_general_angerforge.cpp.o
#15 574.1 [786/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockDepths/boss_coren_direbrew.cpp.o
#15 575.9 [787/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockDepths/boss_moira_bronzebeard.cpp.o
#15 575.9 [788/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockDepths/boss_magmus.cpp.o
#15 576.1 [789/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockDepths/boss_tomb_of_seven.cpp.o
#15 576.8 [790/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockDepths/instance_blackrock_depths.cpp.o
#15 578.3 [791/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockSpire/boss_drakkisath.cpp.o
#15 578.4 [792/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockSpire/boss_gizrul_the_slavener.cpp.o
#15 578.6 [793/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockSpire/boss_gyth.cpp.o
#15 579.3 [794/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockSpire/boss_halycon.cpp.o
#15 580.7 [795/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockSpire/boss_highlord_omokk.cpp.o
#15 580.9 [796/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockSpire/boss_lord_valthalak.cpp.o
#15 581.0 [797/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockSpire/boss_mother_smolderweb.cpp.o
#15 581.8 [798/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockSpire/boss_overlord_wyrmthalak.cpp.o
#15 583.4 [799/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockSpire/boss_pyroguard_emberseer.cpp.o
#15 583.4 [800/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockSpire/boss_quartermaster_zigris.cpp.o
#15 583.5 [801/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockSpire/boss_rend_blackhand.cpp.o
#15 584.3 [802/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockSpire/boss_shadow_hunter_voshgajin.cpp.o
#15 585.8 [803/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockSpire/boss_urok_doomhowl.cpp.o
#15 585.9 [804/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockSpire/boss_the_beast.cpp.o
#15 586.0 [805/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockSpire/boss_warmaster_voone.cpp.o
#15 587.1 [806/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackrockSpire/instance_blackrock_spire.cpp.o
#15 588.4 [807/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackwingLair/boss_ebonroc.cpp.o
#15 588.4 [808/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackwingLair/boss_broodlord_lashlayer.cpp.o
#15 588.5 [809/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackwingLair/boss_chromaggus.cpp.o
#15 589.6 [810/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackwingLair/boss_firemaw.cpp.o
#15 591.0 [811/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackwingLair/boss_razorgore.cpp.o
#15 591.1 [812/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackwingLair/boss_flamegor.cpp.o
#15 591.2 [813/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackwingLair/boss_nefarian.cpp.o
#15 592.4 [814/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackwingLair/boss_vaelastrasz.cpp.o
#15 593.7 [815/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/BlackwingLair/instance_blackwing_lair.cpp.o
#15 593.7 [816/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/MoltenCore/boss_baron_geddon.cpp.o
#15 594.0 [817/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/MoltenCore/boss_garr.cpp.o
#15 594.9 [818/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/MoltenCore/boss_gehennas.cpp.o
#15 596.0 [819/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/MoltenCore/boss_lucifron.cpp.o
#15 596.4 [820/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/MoltenCore/boss_magmadar.cpp.o
#15 596.4 [821/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/MoltenCore/boss_golemagg.cpp.o
#15 597.5 [822/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/MoltenCore/boss_majordomo_executus.cpp.o
#15 598.7 [823/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/MoltenCore/boss_ragnaros.cpp.o
#15 599.0 [824/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/MoltenCore/boss_shazzrah.cpp.o
#15 599.0 [825/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/MoltenCore/boss_sulfuron_harbinger.cpp.o
#15 599.9 [826/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/BlackrockMountain/MoltenCore/instance_molten_core.cpp.o
#15 601.1 [827/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Deadmines/boss_mr_smite.cpp.o
#15 601.4 [828/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Deadmines/deadmines.cpp.o
#15 601.7 [829/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Deadmines/boss_vancleef.cpp.o
#15 602.5 [830/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Deadmines/instance_deadmines.cpp.o
#15 603.7 [831/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Gnomeregan/gnomeregan.cpp.o
#15 603.7 [832/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Gnomeregan/instance_gnomeregan.cpp.o
#15 604.5 [833/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Karazhan/boss_curator.cpp.o
#15 605.1 [834/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Karazhan/boss_maiden_of_virtue.cpp.o
#15 606.4 [835/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Karazhan/boss_moroes.cpp.o
#15 607.0 [836/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Karazhan/boss_netherspite.cpp.o
#15 607.0 [837/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Karazhan/boss_midnight.cpp.o
#15 607.9 [838/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Karazhan/boss_nightbane.cpp.o
#15 609.2 [839/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Karazhan/boss_prince_malchezaar.cpp.o
#15 609.4 [840/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Karazhan/boss_shade_of_aran.cpp.o
#15 610.1 [841/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Karazhan/boss_terestian_illhoof.cpp.o
#15 610.9 [842/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Karazhan/bosses_opera.cpp.o
#15 611.7 [843/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Karazhan/instance_karazhan.cpp.o
#15 612.0 [844/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Karazhan/karazhan.cpp.o
#15 612.9 [845/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/MagistersTerrace/boss_felblood_kaelthas.cpp.o
#15 613.9 [846/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/MagistersTerrace/boss_priestess_delrissa.cpp.o
#15 614.3 [847/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/MagistersTerrace/boss_selin_fireheart.cpp.o
#15 614.5 [848/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/MagistersTerrace/boss_vexallus.cpp.o
#15 615.6 [849/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/MagistersTerrace/instance_magisters_terrace.cpp.o
#15 616.2 [850/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/MagistersTerrace/magisters_terrace.cpp.o
#15 617.2 [851/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ScarletEnclave/chapter2.cpp.o
#15 617.9 [852/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ScarletEnclave/chapter1.cpp.o
#15 618.5 [853/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ScarletEnclave/zone_the_scarlet_enclave.cpp.o
#15 619.0 [854/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ScarletEnclave/chapter5.cpp.o
#15 619.6 [855/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ScarletMonastery/boss_arcanist_doan.cpp.o
#15 620.4 [856/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ScarletMonastery/boss_azshir_the_sleepless.cpp.o
#15 621.0 [857/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ScarletMonastery/boss_bloodmage_thalnos.cpp.o
#15 622.1 [858/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ScarletMonastery/boss_herod.cpp.o
#15 622.9 [859/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ScarletMonastery/boss_high_inquisitor_fairbanks.cpp.o
#15 623.4 [860/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ScarletMonastery/boss_houndmaster_loksey.cpp.o
#15 623.6 [861/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ScarletMonastery/boss_headless_horseman.cpp.o
#15 624.6 [862/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ScarletMonastery/boss_interrogator_vishas.cpp.o
#15 625.8 [863/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ScarletMonastery/boss_scorn.cpp.o
#15 626.0 [864/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ScarletMonastery/boss_mograine_and_whitemane.cpp.o
#15 626.1 [865/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ScarletMonastery/instance_scarlet_monastery.cpp.o
#15 627.3 [866/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Scholomance/boss_darkmaster_gandling.cpp.o
#15 628.0 [867/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Scholomance/boss_death_knight_darkreaver.cpp.o
#15 628.3 [868/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Scholomance/boss_doctor_theolen_krastinov.cpp.o
#15 628.6 [869/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Scholomance/boss_illucia_barov.cpp.o
#15 629.8 [870/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Scholomance/boss_instructor_malicia.cpp.o
#15 630.4 [871/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Scholomance/boss_jandice_barov.cpp.o
#15 630.9 [872/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Scholomance/boss_kirtonos_the_herald.cpp.o
#15 631.1 [873/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Scholomance/boss_kormok.cpp.o
#15 632.3 [874/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Scholomance/boss_lord_alexei_barov.cpp.o
#15 632.8 [875/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Scholomance/boss_lorekeeper_polkelt.cpp.o
#15 633.2 [876/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Scholomance/boss_ras_frostwhisper.cpp.o
#15 633.7 [877/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Scholomance/boss_the_ravenian.cpp.o
#15 634.9 [878/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Scholomance/boss_vectus.cpp.o
#15 635.1 [879/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Scholomance/instance_scholomance.cpp.o
#15 636.3 [880/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ShadowfangKeep/instance_shadowfang_keep.cpp.o
#15 636.8 [881/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ShadowfangKeep/boss_apothecary_hummel.cpp.o
#15 637.6 [882/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Stratholme/boss_baron_rivendare.cpp.o
#15 637.7 [883/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ShadowfangKeep/shadowfang_keep.cpp.o
#15 638.8 [884/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Stratholme/boss_baroness_anastari.cpp.o
#15 639.2 [885/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Stratholme/boss_cannon_master_willey.cpp.o
#15 639.9 [886/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Stratholme/boss_dathrohan_balnazzar.cpp.o
#15 639.9 [887/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Stratholme/boss_magistrate_barthilas.cpp.o
#15 641.1 [888/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Stratholme/boss_maleki_the_pallid.cpp.o
#15 641.4 [889/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Stratholme/boss_nerubenkan.cpp.o
#15 642.1 [890/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Stratholme/boss_order_of_silver_hand.cpp.o
#15 642.4 [891/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Stratholme/boss_postmaster_malown.cpp.o
#15 643.3 [892/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Stratholme/boss_ramstein_the_gorger.cpp.o
#15 643.5 [893/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Stratholme/boss_timmy_the_cruel.cpp.o
#15 645.0 [894/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Stratholme/instance_stratholme.cpp.o
#15 645.1 [895/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Stratholme/stratholme.cpp.o
#15 645.7 [896/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/SunkenTemple/instance_sunken_temple.cpp.o
#15 645.9 [897/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/SunkenTemple/sunken_temple.cpp.o
#15 647.6 [898/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/SunwellPlateau/boss_eredar_twins.cpp.o
#15 647.6 [899/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/SunwellPlateau/boss_brutallus.cpp.o
#15 648.8 [900/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/SunwellPlateau/boss_felmyst.cpp.o
#15 649.6 [901/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/SunwellPlateau/boss_kalecgos.cpp.o
#15 650.6 [902/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/SunwellPlateau/boss_kiljaeden.cpp.o
#15 651.4 [903/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/SunwellPlateau/instance_sunwell_plateau.cpp.o
#15 651.7 [904/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/SunwellPlateau/sunwell_plateau.cpp.o
#15 652.1 [905/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/SunwellPlateau/boss_muru.cpp.o
#15 652.8 [906/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/TheStockade/instance_the_stockade.cpp.o
#15 653.9 [907/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Uldaman/boss_archaedas.cpp.o
#15 654.2 [908/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Uldaman/boss_ironaya.cpp.o
#15 654.9 [909/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Uldaman/instance_uldaman.cpp.o
#15 655.0 [910/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/Uldaman/uldaman.cpp.o
#15 656.8 [911/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulAman/boss_halazzi.cpp.o
#15 657.1 [912/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulAman/boss_akilzon.cpp.o
#15 657.8 [913/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulAman/boss_janalai.cpp.o
#15 657.9 [914/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulAman/boss_hexlord.cpp.o
#15 659.6 [915/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulAman/boss_nalorakk.cpp.o
#15 659.8 [916/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulAman/boss_zuljin.cpp.o
#15 660.2 [917/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulAman/instance_zulaman.cpp.o
#15 660.3 [918/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulAman/zulaman.cpp.o
#15 662.2 [919/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulGurub/boss_gahzranka.cpp.o
#15 662.2 [920/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulGurub/boss_arlokk.cpp.o
#15 662.6 [921/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulGurub/boss_grilek.cpp.o
#15 662.7 [922/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulGurub/boss_hakkar.cpp.o
#15 664.9 [923/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulGurub/boss_hazzarah.cpp.o
#15 665.1 [924/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulGurub/boss_jeklik.cpp.o
#15 665.1 [925/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulGurub/boss_jindo.cpp.o
#15 665.5 [926/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulGurub/boss_mandokir.cpp.o
#15 667.6 [927/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulGurub/boss_renataki.cpp.o
#15 667.7 [928/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulGurub/boss_marli.cpp.o
#15 668.0 [929/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulGurub/boss_venoxis.cpp.o
#15 668.3 [930/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulGurub/boss_thekal.cpp.o
#15 670.0 [931/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulGurub/boss_wushoolay.cpp.o
#15 670.0 [932/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulGurub/instance_zulgurub.cpp.o
#15 670.3 [933/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/EasternKingdoms/ZulGurub/zulgurub.cpp.o
#15 671.8 [934/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Events/brewfest.cpp.o
#15 672.4 [935/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Events/darkmoon_faire.cpp.o
#15 672.4 [936/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Events/events_script_loader.cpp.o
#15 672.6 [937/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Events/childrens_week.cpp.o
#15 674.9 [938/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Events/fireworks_show.cpp.o
#15 675.0 [939/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Events/hallows_end.cpp.o
#15 675.2 [940/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Events/lunar_festival.cpp.o
#15 675.5 [941/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Events/love_is_in_the_air.cpp.o
#15 677.2 [942/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Events/operation_gnomeregan.cpp.o
#15 677.9 [943/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Events/winter_veil.cpp.o
#15 678.0 [944/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Events/pilgrims_bounty.cpp.o
#15 680.1 [945/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Events/zalazane_fall.cpp.o
#15 680.2 [946/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/kalimdor_script_loader.cpp.o
#15 680.4 [947/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Events/midsummer.cpp.o
#15 680.5 [948/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/boss_azuregos.cpp.o
#15 682.5 [949/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/zone_ashenvale.cpp.o
#15 682.8 [950/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/zone_azshara.cpp.o
#15 683.4 [951/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/zone_azuremyst_isle.cpp.o
#15 683.7 [952/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/zone_bloodmyst_isle.cpp.o
#15 684.9 [953/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/zone_darkshore.cpp.o
#15 685.2 [954/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/zone_desolace.cpp.o
#15 686.0 [955/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/zone_durotar.cpp.o
#15 686.3 [956/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/zone_dustwallow_marsh.cpp.o
#15 687.0 [957/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/zone_felwood.cpp.o
#15 687.4 [958/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/zone_feralas.cpp.o
#15 688.5 [959/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/zone_moonglade.cpp.o
#15 689.2 [960/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/zone_orgrimmar.cpp.o
#15 689.7 [961/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/zone_tanaris.cpp.o
#15 690.0 [962/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/zone_silithus.cpp.o
#15 691.3 [963/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/zone_the_barrens.cpp.o
#15 691.5 [964/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/zone_thunder_bluff.cpp.o
#15 692.3 [965/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/zone_winterspring.cpp.o
#15 692.6 [966/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/BlackfathomDeeps/blackfathom_deeps.cpp.o
#15 693.9 [967/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/BlackfathomDeeps/boss_aku_mai.cpp.o
#15 694.0 [968/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/BlackfathomDeeps/boss_gelihast.cpp.o
#15 695.1 [969/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/BlackfathomDeeps/boss_kelris.cpp.o
#15 695.2 [970/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/BlackfathomDeeps/instance_blackfathom_deeps.cpp.o
#15 696.4 [971/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/BattleForMountHyjal/boss_anetheron.cpp.o
#15 696.9 [972/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/BattleForMountHyjal/boss_archimonde.cpp.o
#15 697.6 [973/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/BattleForMountHyjal/boss_azgalor.cpp.o
#15 697.7 [974/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/BattleForMountHyjal/boss_kazrogal.cpp.o
#15 698.7 [975/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/BattleForMountHyjal/boss_rage_winterchill.cpp.o
#15 699.3 [976/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/BattleForMountHyjal/hyjal.cpp.o
#15 700.8 [977/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/BattleForMountHyjal/hyjalAI.cpp.o
#15 701.0 [978/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/BattleForMountHyjal/hyjal_trash.cpp.o
#15 701.4 [979/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/BattleForMountHyjal/instance_hyjal.cpp.o
#15 701.9 [980/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/CullingOfStratholme/boss_chrono_lord_epoch.cpp.o
#15 703.3 [981/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/CullingOfStratholme/boss_infinite_corruptor.cpp.o
#15 703.5 [982/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/CullingOfStratholme/boss_mal_ganis.cpp.o
#15 703.7 [983/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/CullingOfStratholme/boss_meathook.cpp.o
#15 704.5 [984/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/CullingOfStratholme/boss_salramm_the_fleshcrafter.cpp.o
#15 706.6 [985/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/CullingOfStratholme/culling_of_stratholme.cpp.o
#15 706.6 [986/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/CullingOfStratholme/instance_culling_of_stratholme.cpp.o
#15 706.9 [987/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/EscapeFromDurnholdeKeep/boss_captain_skarloc.cpp.o
#15 707.5 [988/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/CullingOfStratholme/npc_arthas.cpp.o
#15 709.0 [989/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/EscapeFromDurnholdeKeep/boss_epoch_hunter.cpp.o
#15 709.1 [990/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/EscapeFromDurnholdeKeep/boss_leutenant_drake.cpp.o
#15 709.3 [991/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/EscapeFromDurnholdeKeep/instance_old_hillsbrad.cpp.o
#15 710.0 [992/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/EscapeFromDurnholdeKeep/old_hillsbrad.cpp.o
#15 711.4 [993/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/TheBlackMorass/boss_aeonus.cpp.o
#15 711.5 [994/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/TheBlackMorass/boss_chrono_lord_deja.cpp.o
#15 711.8 [995/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/TheBlackMorass/boss_temporus.cpp.o
#15 712.5 [996/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/TheBlackMorass/instance_the_black_morass.cpp.o
#15 713.7 [997/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/CavernsOfTime/TheBlackMorass/the_black_morass.cpp.o
#15 713.9 [998/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/Maraudon/boss_celebras_the_cursed.cpp.o
#15 714.0 [999/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/DireMaul/instance_dire_maul.cpp.o
#15 714.7 [1000/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/Maraudon/boss_landslide.cpp.o
#15 715.9 [1001/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/Maraudon/boss_noxxion.cpp.o
#15 716.1 [1002/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/Maraudon/boss_princess_theradras.cpp.o
#15 716.5 [1003/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/Maraudon/instance_maraudon.cpp.o
#15 717.5 [1004/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/OnyxiasLair/boss_onyxia.cpp.o
#15 718.2 [1005/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/RagefireChasm/instance_ragefire_chasm.cpp.o
#15 718.8 [1006/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/OnyxiasLair/instance_onyxias_lair.cpp.o
#15 718.9 [1007/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/RazorfenDowns/boss_amnennar_the_coldbringer.cpp.o
#15 720.0 [1008/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/RazorfenDowns/boss_glutton.cpp.o
#15 720.7 [1009/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/RazorfenDowns/boss_mordresh_fire_eye.cpp.o
#15 721.2 [1010/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/RazorfenDowns/boss_tuten_kash.cpp.o
#15 721.4 [1011/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/RazorfenDowns/instance_razorfen_downs.cpp.o
#15 723.3 [1012/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/RazorfenKraul/instance_razorfen_kraul.cpp.o
#15 723.4 [1013/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/RazorfenDowns/razorfen_downs.cpp.o
#15 723.5 [1014/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/RazorfenKraul/razorfen_kraul.cpp.o
#15 724.0 [1015/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/RuinsOfAhnQiraj/boss_ayamiss.cpp.o
#15 725.9 [1016/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/RuinsOfAhnQiraj/boss_kurinnaxx.cpp.o
#15 726.0 [1017/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/RuinsOfAhnQiraj/boss_buru.cpp.o
#15 726.1 [1018/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/RuinsOfAhnQiraj/boss_moam.cpp.o
#15 726.8 [1019/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/RuinsOfAhnQiraj/boss_ossirian.cpp.o
#15 728.5 [1020/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/RuinsOfAhnQiraj/boss_rajaxx.cpp.o
#15 728.5 [1021/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/RuinsOfAhnQiraj/instance_ruins_of_ahnqiraj.cpp.o
#15 728.9 [1022/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/TempleOfAhnQiraj/boss_bug_trio.cpp.o
#15 730.3 [1023/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/TempleOfAhnQiraj/boss_cthun.cpp.o
#15 731.0 [1024/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/TempleOfAhnQiraj/boss_huhuran.cpp.o
#15 731.1 [1025/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/TempleOfAhnQiraj/boss_fankriss.cpp.o
#15 731.5 [1026/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/TempleOfAhnQiraj/boss_ouro.cpp.o
#15 733.0 [1027/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/TempleOfAhnQiraj/boss_sartura.cpp.o
#15 733.8 [1028/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/TempleOfAhnQiraj/boss_skeram.cpp.o
#15 734.0 [1029/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/TempleOfAhnQiraj/boss_twinemperors.cpp.o
#15 734.1 [1030/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/TempleOfAhnQiraj/boss_viscidus.cpp.o
#15 735.4 [1031/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/TempleOfAhnQiraj/instance_temple_of_ahnqiraj.cpp.o
#15 736.1 [1032/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/TempleOfAhnQiraj/mob_anubisath_sentinel.cpp.o
#15 736.3 [1033/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/WailingCaverns/instance_wailing_caverns.cpp.o
#15 736.5 [1034/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/WailingCaverns/wailing_caverns.cpp.o
#15 737.9 [1035/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/ZulFarrak/boss_zum_rah.cpp.o
#15 738.7 [1036/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/northrend_script_loader.cpp.o
#15 738.8 [1037/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/ZulFarrak/zulfarrak.cpp.o
#15 738.8 [1038/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Kalimdor/ZulFarrak/instance_zulfarrak.cpp.o
#15 741.5 [1039/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/zone_dalaran.cpp.o
#15 742.0 [1040/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/zone_grizzly_hills.cpp.o
#15 742.0 [1041/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/zone_borean_tundra.cpp.o
#15 742.2 [1042/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/zone_dragonblight.cpp.o
#15 745.3 [1043/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/zone_howling_fjord.cpp.o
#15 745.5 [1044/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/zone_icecrown.cpp.o
#15 745.6 [1045/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/zone_sholazar_basin.cpp.o
#15 747.0 [1046/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/zone_storm_peaks.cpp.o
#15 748.1 [1047/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/AzjolNerub/Ahnkahet/ahnkahet.cpp.o
#15 748.6 [1048/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/zone_wintergrasp.cpp.o
#15 749.1 [1049/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/zone_zuldrak.cpp.o
#15 750.5 [1050/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/AzjolNerub/Ahnkahet/boss_amanitar.cpp.o
#15 751.0 [1051/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/AzjolNerub/Ahnkahet/boss_elder_nadox.cpp.o
#15 752.5 [1052/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/AzjolNerub/Ahnkahet/boss_jedoga_shadowseeker.cpp.o
#15 753.4 [1053/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/AzjolNerub/Ahnkahet/boss_herald_volazj.cpp.o
#15 753.6 [1054/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/AzjolNerub/Ahnkahet/instance_ahnkahet.cpp.o
#15 753.6 [1055/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/AzjolNerub/Ahnkahet/boss_prince_taldaram.cpp.o
#15 756.2 [1056/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/AzjolNerub/AzjolNerub/instance_azjol_nerub.cpp.o
#15 756.3 [1057/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/AzjolNerub/AzjolNerub/boss_anubarak.cpp.o
#15 757.1 [1058/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/AzjolNerub/AzjolNerub/boss_krikthir_the_gatewatcher.cpp.o
#15 757.2 [1059/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/AzjolNerub/AzjolNerub/boss_hadronox.cpp.o
#15 758.8 [1060/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/ChamberOfAspects/ObsidianSanctum/instance_obsidian_sanctum.cpp.o
#15 759.3 [1061/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/ChamberOfAspects/ObsidianSanctum/boss_sartharion.cpp.o
#15 760.1 [1062/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/ChamberOfAspects/RubySanctum/boss_baltharus_the_warborn.cpp.o
#15 760.1 [1063/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/ChamberOfAspects/ObsidianSanctum/obsidian_sanctum.cpp.o
#15 761.5 [1064/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/ChamberOfAspects/RubySanctum/boss_general_zarithrian.cpp.o
#15 762.7 [1065/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/ChamberOfAspects/RubySanctum/instance_ruby_sanctum.cpp.o
#15 762.8 [1066/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/ChamberOfAspects/RubySanctum/boss_saviana_ragefire.cpp.o
#15 764.1 [1067/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/ChamberOfAspects/RubySanctum/ruby_sanctum.cpp.o
#15 764.5 [1068/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/ChamberOfAspects/RubySanctum/boss_halion.cpp.o
#15 765.5 [1069/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/CrusadersColiseum/TrialOfTheChampion/boss_black_knight.cpp.o
#15 765.5 [1070/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/CrusadersColiseum/TrialOfTheChampion/boss_argent_challenge.cpp.o
#15 766.9 [1071/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/CrusadersColiseum/TrialOfTheChampion/boss_grand_champions.cpp.o
#15 767.2 [1072/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/CrusadersColiseum/TrialOfTheChampion/instance_trial_of_the_champion.cpp.o
#15 768.2 [1073/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/CrusadersColiseum/TrialOfTheChampion/trial_of_the_champion.cpp.o
#15 768.8 [1074/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/CrusadersColiseum/TrialOfTheCrusader/boss_anubarak_trial.cpp.o
#15 770.7 [1075/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/CrusadersColiseum/TrialOfTheCrusader/boss_lord_jaraxxus.cpp.o
#15 771.9 [1076/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/CrusadersColiseum/TrialOfTheCrusader/boss_faction_champions.cpp.o
#15 772.6 [1077/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/CrusadersColiseum/TrialOfTheCrusader/boss_twin_valkyr.cpp.o
#15 772.8 [1078/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/CrusadersColiseum/TrialOfTheCrusader/boss_northrend_beasts.cpp.o
#15 773.7 [1079/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/CrusadersColiseum/TrialOfTheCrusader/instance_trial_of_the_crusader.cpp.o
#15 775.2 [1080/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/DraktharonKeep/boss_king_dred.cpp.o
#15 775.2 [1081/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/CrusadersColiseum/TrialOfTheCrusader/trial_of_the_crusader.cpp.o
#15 775.5 [1082/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/DraktharonKeep/boss_novos.cpp.o
#15 776.4 [1083/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/DraktharonKeep/boss_tharon_ja.cpp.o
#15 777.5 [1084/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/DraktharonKeep/drak_tharon_keep.cpp.o
#15 778.0 [1085/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/DraktharonKeep/boss_trollgore.cpp.o
#15 778.0 [1086/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/DraktharonKeep/instance_drak_tharon_keep.cpp.o
#15 779.5 [1087/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/FrozenHalls/ForgeOfSouls/boss_bronjahm.cpp.o
#15 780.4 [1088/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/FrozenHalls/ForgeOfSouls/boss_devourer_of_souls.cpp.o
#15 780.5 [1089/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/FrozenHalls/ForgeOfSouls/instance_forge_of_souls.cpp.o
#15 780.5 [1090/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/FrozenHalls/ForgeOfSouls/forge_of_souls.cpp.o
#15 782.1 [1091/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/FrozenHalls/HallsOfReflection/boss_falric.cpp.o
#15 782.9 [1092/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/FrozenHalls/HallsOfReflection/boss_horAI.cpp.o
#15 783.1 [1093/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/FrozenHalls/HallsOfReflection/boss_marwyn.cpp.o
#15 785.3 [1094/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/FrozenHalls/HallsOfReflection/halls_of_reflection.cpp.o
#15 785.3 [1095/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/FrozenHalls/HallsOfReflection/instance_halls_of_reflection.cpp.o
#15 785.6 [1096/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/FrozenHalls/PitOfSaron/boss_forgemaster_garfrost.cpp.o
#15 786.4 [1097/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/FrozenHalls/PitOfSaron/boss_krickandick.cpp.o
#15 787.8 [1098/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/FrozenHalls/PitOfSaron/instance_pit_of_saron.cpp.o
#15 788.3 [1099/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/FrozenHalls/PitOfSaron/boss_scourgelord_tyrannus.cpp.o
#15 788.7 [1100/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/FrozenHalls/PitOfSaron/pit_of_saron.cpp.o
#15 789.6 [1101/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Gundrak/boss_drakkari_colossus.cpp.o
#15 790.5 [1102/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Gundrak/boss_eck.cpp.o
#15 791.1 [1103/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Gundrak/boss_gal_darah.cpp.o
#15 791.3 [1104/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Gundrak/boss_moorabi.cpp.o
#15 793.1 [1105/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Gundrak/boss_slad_ran.cpp.o
#15 793.3 [1106/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Gundrak/instance_gundrak.cpp.o
#15 795.6 [1107/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/IcecrownCitadel/boss_blood_queen_lana_thel.cpp.o
#15 795.9 [1108/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/IcecrownCitadel/boss_blood_prince_council.cpp.o
#15 796.5 [1109/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/IcecrownCitadel/boss_festergut.cpp.o
#15 797.4 [1110/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/IcecrownCitadel/boss_deathbringer_saurfang.cpp.o
#15 800.2 [1111/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/IcecrownCitadel/boss_lord_marrowgar.cpp.o
#15 801.0 [1112/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/IcecrownCitadel/boss_lady_deathwhisper.cpp.o
#15 802.2 [1113/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/IcecrownCitadel/boss_icecrown_gunship_battle.cpp.o
#15 802.8 [1114/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/IcecrownCitadel/boss_professor_putricide.cpp.o
#15 804.4 [1115/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/IcecrownCitadel/boss_rotface.cpp.o
#15 805.9 [1116/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/IcecrownCitadel/boss_sindragosa.cpp.o
#15 806.7 [1117/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/IcecrownCitadel/boss_sister_svalna.cpp.o
#15 808.5 [1118/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/IcecrownCitadel/go_icecrown_citadel_teleport.cpp.o
#15 809.0 [1119/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/IcecrownCitadel/boss_valithria_dreamwalker.cpp.o
#15 810.0 [1120/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/IcecrownCitadel/boss_the_lich_king.cpp.o
#15 811.6 [1121/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/IsleOfConquest/boss_ioc_horde_alliance.cpp.o
#15 812.1 [1122/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/IcecrownCitadel/instance_icecrown_citadel.cpp.o
#15 812.8 [1123/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/IcecrownCitadel/icecrown_citadel.cpp.o
#15 813.1 [1124/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/IsleOfConquest/isle_of_conquest.cpp.o
#15 814.5 [1125/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Naxxramas/boss_anubrekhan.cpp.o
#15 814.9 [1126/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Naxxramas/boss_faerlina.cpp.o
#15 816.2 [1127/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Naxxramas/boss_gluth.cpp.o
#15 816.6 [1128/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Naxxramas/boss_four_horsemen.cpp.o
#15 818.2 [1129/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Naxxramas/boss_grobbulus.cpp.o
#15 818.3 [1130/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Naxxramas/boss_gothik.cpp.o
#15 819.0 [1131/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Naxxramas/boss_heigan.cpp.o
#15 820.4 [1132/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Naxxramas/boss_kelthuzad.cpp.o
#15 820.9 [1133/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Naxxramas/boss_loatheb.cpp.o
#15 821.0 [1134/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Naxxramas/boss_maexxna.cpp.o
#15 821.8 [1135/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Naxxramas/boss_noth.cpp.o
#15 823.1 [1136/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Naxxramas/boss_patchwerk.cpp.o
#15 823.6 [1137/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Naxxramas/boss_razuvious.cpp.o
#15 824.7 [1138/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Naxxramas/boss_sapphiron.cpp.o
#15 825.2 [1139/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Naxxramas/boss_thaddius.cpp.o
#15 826.0 [1140/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Naxxramas/instance_naxxramas.cpp.o
#15 826.3 [1141/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Naxxramas/naxxramas.cpp.o
#15 827.8 [1142/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Nexus/EyeOfEternity/instance_eye_of_eternity.cpp.o
#15 828.4 [1143/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Nexus/Nexus/boss_anomalus.cpp.o
#15 829.1 [1144/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Nexus/Nexus/boss_keristrasza.cpp.o
#15 830.1 [1145/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Nexus/EyeOfEternity/boss_malygos.cpp.o
#15 830.7 [1146/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Nexus/Nexus/boss_magus_telestra.cpp.o
#15 830.9 [1147/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Nexus/Nexus/boss_nexus_commanders.cpp.o
#15 831.9 [1148/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Nexus/Nexus/boss_ormorok.cpp.o
#15 832.7 [1149/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Nexus/Nexus/instance_nexus.cpp.o
#15 833.5 [1150/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Nexus/Oculus/boss_drakos.cpp.o
#15 833.5 [1151/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Nexus/Oculus/boss_eregos.cpp.o
#15 834.7 [1152/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Nexus/Oculus/boss_urom.cpp.o
#15 835.6 [1153/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Nexus/Oculus/boss_varos.cpp.o
#15 836.1 [1154/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Nexus/Oculus/instance_oculus.cpp.o
#15 836.8 [1155/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Nexus/Oculus/oculus.cpp.o
#15 837.9 [1156/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/HallsOfLightning/boss_general_bjarngrim.cpp.o
#15 838.2 [1157/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/HallsOfLightning/boss_ionar.cpp.o
#15 838.7 [1158/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/HallsOfLightning/boss_loken.cpp.o
#15 839.8 [1159/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/HallsOfLightning/boss_volkhan.cpp.o
#15 840.3 [1160/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/HallsOfLightning/instance_halls_of_lightning.cpp.o
#15 840.9 [1161/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/HallsOfStone/boss_krystallus.cpp.o
#15 841.2 [1162/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/HallsOfStone/boss_maiden_of_grief.cpp.o
#15 842.9 [1163/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/HallsOfStone/halls_of_stone.cpp.o
#15 843.1 [1164/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/HallsOfStone/boss_sjonnir.cpp.o
#15 843.3 [1165/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/HallsOfStone/instance_halls_of_stone.cpp.o
#15 845.5 [1166/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/Ulduar/boss_algalon_the_observer.cpp.o
#15 846.1 [1167/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/Ulduar/boss_assembly_of_iron.cpp.o
#15 846.6 [1168/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/Ulduar/boss_auriaya.cpp.o
#15 848.0 [1169/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/Ulduar/boss_flame_leviathan.cpp.o
#15 849.3 [1170/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/Ulduar/boss_general_vezax.cpp.o
#15 849.3 [1171/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/Ulduar/boss_freya.cpp.o
#15 850.6 [1172/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/Ulduar/boss_hodir.cpp.o
#15 851.0 [1173/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/Ulduar/boss_ignis.cpp.o
#15 852.6 [1174/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/Ulduar/boss_kologarn.cpp.o
#15 855.0 [1175/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/Ulduar/boss_mimiron.cpp.o
#15 855.6 [1176/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/Ulduar/boss_razorscale.cpp.o
#15 856.1 [1177/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/Ulduar/boss_thorim.cpp.o
#15 857.6 [1178/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/Ulduar/boss_xt002.cpp.o
#15 858.4 [1179/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/Ulduar/ulduar.cpp.o
#15 858.6 [1180/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/Ulduar/instance_ulduar.cpp.o
#15 860.6 [1181/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/UtgardeKeep/UtgardeKeep/boss_ingvar_the_plunderer.cpp.o
#15 861.1 [1182/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/UtgardeKeep/UtgardeKeep/boss_keleseth.cpp.o
#15 861.3 [1183/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/UtgardeKeep/UtgardeKeep/boss_skarvald_dalronn.cpp.o
#15 861.6 [1184/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/Ulduar/Ulduar/boss_yogg_saron.cpp.o
#15 863.1 [1185/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/UtgardeKeep/UtgardeKeep/instance_utgarde_keep.cpp.o
#15 863.7 [1186/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/UtgardeKeep/UtgardeKeep/utgarde_keep.cpp.o
#15 864.7 [1187/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/UtgardeKeep/UtgardePinnacle/boss_palehoof.cpp.o
#15 866.1 [1188/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/UtgardeKeep/UtgardePinnacle/boss_svala.cpp.o
#15 866.5 [1189/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/UtgardeKeep/UtgardePinnacle/boss_ymiron.cpp.o
#15 866.6 [1190/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/UtgardeKeep/UtgardePinnacle/boss_skadi.cpp.o
#15 867.2 [1191/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/UtgardeKeep/UtgardePinnacle/instance_utgarde_pinnacle.cpp.o
#15 868.5 [1192/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/UtgardeKeep/UtgardePinnacle/utgarde_pinnacle.cpp.o
#15 869.1 [1193/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/VaultOfArchavon/boss_archavon.cpp.o
#15 869.3 [1194/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/VaultOfArchavon/boss_emalon.cpp.o
#15 869.9 [1195/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/VaultOfArchavon/boss_koralon.cpp.o
#15 871.1 [1196/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/VaultOfArchavon/boss_toravon.cpp.o
#15 871.5 [1197/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/VaultOfArchavon/instance_vault_of_archavon.cpp.o
#15 872.2 [1198/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/VioletHold/boss_cyanigosa.cpp.o
#15 873.2 [1199/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/VioletHold/boss_erekem.cpp.o
#15 874.4 [1200/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/VioletHold/boss_lavanthor.cpp.o
#15 874.4 [1201/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/VioletHold/boss_ichoron.cpp.o
#15 875.4 [1202/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/VioletHold/boss_moragg.cpp.o
#15 876.7 [1203/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/VioletHold/boss_xevozz.cpp.o
#15 877.3 [1204/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/VioletHold/boss_zuramat.cpp.o
#15 878.7 [1205/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/VioletHold/instance_violet_hold.cpp.o
#15 879.6 [1206/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/OutdoorPvP/OutdoorPvPHP.cpp.o
#15 880.4 [1207/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Northrend/VioletHold/violet_hold.cpp.o
#15 880.7 [1208/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/OutdoorPvP/OutdoorPvPNA.cpp.o
#15 881.3 [1209/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/OutdoorPvP/OutdoorPvPSI.cpp.o
#15 881.8 [1210/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/OutdoorPvP/OutdoorPvPScriptLoader.cpp.o
#15 883.3 [1211/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/OutdoorPvP/OutdoorPvPTF.cpp.o
#15 883.6 [1212/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/OutdoorPvP/OutdoorPvPZM.cpp.o
#15 883.9 [1213/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/boss_doomlord_kazzak.cpp.o
#15 884.2 [1214/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/boss_doomwalker.cpp.o
#15 885.4 [1215/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/outland_script_loader.cpp.o
#15 887.2 [1216/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/zone_blades_edge_mountains.cpp.o
#15 887.2 [1217/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/zone_hellfire_peninsula.cpp.o
#15 887.9 [1218/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/zone_nagrand.cpp.o
#15 888.0 [1219/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/zone_netherstorm.cpp.o
#15 889.9 [1220/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/zone_terokkar_forest.cpp.o
#15 890.4 [1221/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/zone_shadowmoon_valley.cpp.o
#15 890.4 [1222/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/Auchindoun/AuchenaiCrypts/boss_shirrak_the_dead_watcher.cpp.o
#15 891.2 [1223/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/Auchindoun/AuchenaiCrypts/boss_exarch_maladaar.cpp.o
#15 892.2 [1224/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/Auchindoun/AuchenaiCrypts/instance_auchenai_crypts.cpp.o
#15 892.7 [1225/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/Auchindoun/ManaTombs/boss_pandemonius.cpp.o
#15 892.9 [1226/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/Auchindoun/ManaTombs/boss_nexusprince_shaffar.cpp.o
#15 893.7 [1227/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/Auchindoun/ManaTombs/instance_mana_tombs.cpp.o
#15 894.6 [1228/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/Auchindoun/SethekkHalls/boss_anzu.cpp.o
#15 895.2 [1229/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/Auchindoun/SethekkHalls/boss_darkweaver_syth.cpp.o
#15 895.6 [1230/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/Auchindoun/SethekkHalls/boss_talon_king_ikiss.cpp.o
#15 896.1 [1231/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/Auchindoun/SethekkHalls/instance_sethekk_halls.cpp.o
#15 897.1 [1232/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/Auchindoun/ShadowLabyrinth/boss_ambassador_hellmaw.cpp.o
#15 897.9 [1233/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/Auchindoun/ShadowLabyrinth/boss_blackheart_the_inciter.cpp.o
#15 898.8 [1234/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/Auchindoun/ShadowLabyrinth/boss_grandmaster_vorpil.cpp.o
#15 899.0 [1235/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/Auchindoun/ShadowLabyrinth/boss_murmur.cpp.o
#15 899.7 [1236/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/Auchindoun/ShadowLabyrinth/instance_shadow_labyrinth.cpp.o
#15 900.1 [1237/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/Auchindoun/ShadowLabyrinth/shadow_labyrinth.cpp.o
#15 901.9 [1238/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/BlackTemple/boss_gurtogg_bloodboil.cpp.o
#15 901.9 [1239/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/BlackTemple/black_temple.cpp.o
#15 904.4 [1240/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/BlackTemple/boss_illidari_council.cpp.o
#15 905.0 [1241/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/BlackTemple/boss_mother_shahraz.cpp.o
#15 905.4 [1242/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/BlackTemple/boss_illidan.cpp.o
#15 905.7 [1243/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/BlackTemple/boss_reliquary_of_souls.cpp.o
#15 907.9 [1244/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/BlackTemple/boss_supremus.cpp.o
#15 908.4 [1245/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/BlackTemple/boss_shade_of_akama.cpp.o
#15 908.4 [1246/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/BlackTemple/boss_warlord_najentus.cpp.o
#15 908.8 [1247/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/BlackTemple/boss_teron_gorefiend.cpp.o
#15 910.4 [1248/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/BlackTemple/instance_black_temple.cpp.o
#15 911.0 [1249/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/CoilfangReservoir/SerpentShrine/boss_hydross_the_unstable.cpp.o
#15 911.3 [1250/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/CoilfangReservoir/SerpentShrine/boss_fathomlord_karathress.cpp.o
#15 911.8 [1251/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/CoilfangReservoir/SerpentShrine/boss_lady_vashj.cpp.o
#15 913.3 [1252/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/CoilfangReservoir/SerpentShrine/boss_leotheras_the_blind.cpp.o
#15 913.7 [1253/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/CoilfangReservoir/SerpentShrine/boss_lurker_below.cpp.o
#15 913.9 [1254/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/CoilfangReservoir/SerpentShrine/boss_morogrim_tidewalker.cpp.o
#15 914.4 [1255/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/CoilfangReservoir/SerpentShrine/instance_serpent_shrine.cpp.o
#15 915.9 [1256/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/CoilfangReservoir/SteamVault/boss_hydromancer_thespia.cpp.o
#15 916.0 [1257/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/CoilfangReservoir/SteamVault/boss_mekgineer_steamrigger.cpp.o
#15 916.2 [1258/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/CoilfangReservoir/SteamVault/boss_warlord_kalithresh.cpp.o
#15 916.8 [1259/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/CoilfangReservoir/SteamVault/instance_steam_vault.cpp.o
#15 918.5 [1260/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/CoilfangReservoir/TheSlavePens/boss_mennu_the_betrayer.cpp.o
#15 918.6 [1261/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/CoilfangReservoir/TheSlavePens/boss_quagmirran.cpp.o
#15 919.3 [1262/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/CoilfangReservoir/TheSlavePens/boss_rokmar_the_crackler.cpp.o
#15 920.2 [1263/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/CoilfangReservoir/TheSlavePens/boss_ahune.cpp.o
#15 920.9 [1264/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/CoilfangReservoir/TheSlavePens/instance_the_slave_pens.cpp.o
#15 922.0 [1265/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/CoilfangReservoir/TheUnderbog/boss_hungarfen.cpp.o
#15 922.3 [1266/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/CoilfangReservoir/TheUnderbog/boss_the_black_stalker.cpp.o
#15 922.6 [1267/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/CoilfangReservoir/TheUnderbog/instance_the_underbog.cpp.o
#15 923.6 [1268/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/GruulsLair/boss_gruul.cpp.o
#15 924.5 [1269/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/GruulsLair/boss_high_king_maulgar.cpp.o
#15 924.6 [1270/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/GruulsLair/instance_gruuls_lair.cpp.o
#15 925.9 [1271/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/HellfireCitadel/BloodFurnace/boss_broggok.cpp.o
#15 926.2 [1272/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/HellfireCitadel/BloodFurnace/boss_kelidan_the_breaker.cpp.o
#15 927.0 [1273/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/HellfireCitadel/BloodFurnace/boss_the_maker.cpp.o
#15 927.2 [1274/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/HellfireCitadel/BloodFurnace/instance_blood_furnace.cpp.o
#15 928.6 [1275/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/HellfireCitadel/HellfireRamparts/boss_omor_the_unscarred.cpp.o
#15 929.0 [1276/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/HellfireCitadel/HellfireRamparts/boss_vazruden_the_herald.cpp.o
#15 929.6 [1277/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/HellfireCitadel/HellfireRamparts/instance_hellfire_ramparts.cpp.o
#15 929.6 [1278/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/HellfireCitadel/HellfireRamparts/boss_watchkeeper_gargolmar.cpp.o
#15 931.4 [1279/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/HellfireCitadel/MagtheridonsLair/instance_magtheridons_lair.cpp.o
#15 931.9 [1280/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/HellfireCitadel/MagtheridonsLair/boss_magtheridon.cpp.o
#15 932.1 [1281/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/HellfireCitadel/ShatteredHalls/boss_warbringer_omrogg.cpp.o
#15 932.1 [1282/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/HellfireCitadel/ShatteredHalls/boss_nethekurse.cpp.o
#15 934.0 [1283/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/HellfireCitadel/ShatteredHalls/boss_warchief_kargath_bladefist.cpp.o
#15 934.4 [1284/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/HellfireCitadel/ShatteredHalls/instance_shattered_halls.cpp.o
#15 935.0 [1285/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/Eye/boss_alar.cpp.o
#15 935.1 [1286/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/HellfireCitadel/ShatteredHalls/shattered_halls.cpp.o
#15 937.2 [1287/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/Eye/boss_astromancer.cpp.o
#15 937.3 [1288/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/Eye/instance_the_eye.cpp.o
#15 937.5 [1289/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/Eye/boss_void_reaver.cpp.o
#15 938.2 [1290/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/Eye/boss_kaelthas.cpp.o
#15 939.6 [1291/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/Mechanar/boss_gatewatcher_gyrokill.cpp.o
#15 940.0 [1292/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/Mechanar/boss_gatewatcher_ironhand.cpp.o
#15 940.3 [1293/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/Mechanar/boss_mechano_lord_capacitus.cpp.o
#15 941.1 [1294/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/Mechanar/boss_nethermancer_sepethrea.cpp.o
#15 942.1 [1295/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/Mechanar/boss_pathaleon_the_calculator.cpp.o
#15 942.3 [1296/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/Mechanar/instance_mechanar.cpp.o
#15 942.7 [1297/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/arcatraz/arcatraz.cpp.o
#15 943.7 [1298/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/arcatraz/boss_dalliah_the_doomsayer.cpp.o
#15 944.7 [1299/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/arcatraz/boss_harbinger_skyriss.cpp.o
#15 944.8 [1300/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/arcatraz/boss_wrath_scryer_soccothrates.cpp.o
#15 945.2 [1301/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/arcatraz/boss_zereketh_the_unbound.cpp.o
#15 946.2 [1302/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/arcatraz/instance_arcatraz.cpp.o
#15 947.3 [1303/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/botanica/boss_high_botanist_freywinn.cpp.o
#15 947.3 [1304/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/botanica/boss_commander_sarannis.cpp.o
#15 947.7 [1305/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/botanica/boss_laj.cpp.o
#15 948.7 [1306/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/botanica/boss_thorngrin_the_tender.cpp.o
#15 949.7 [1307/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/botanica/instance_the_botanica.cpp.o
#15 949.8 [1308/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Outland/TempestKeep/botanica/boss_warp_splinter.cpp.o
#15 951.1 [1309/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Pet/pet_dk.cpp.o
#15 952.2 [1310/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Pet/pet_mage.cpp.o
#15 952.2 [1311/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Pet/pet_generic.cpp.o
#15 952.5 [1312/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Pet/pet_hunter.cpp.o
#15 953.4 [1313/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Pet/pet_priest.cpp.o
#15 954.3 [1314/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Pet/pet_script_loader.cpp.o
#15 954.5 [1315/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Pet/pet_shaman.cpp.o
#15 959.6 [1316/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Spells/spell_dk.cpp.o
#15 959.7 [1317/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Spells/spell_druid.cpp.o
#15 960.1 [1318/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Spells/spell_hunter.cpp.o
#15 964.6 [1319/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Spells/spell_mage.cpp.o
#15 965.3 [1320/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Spells/spell_generic.cpp.o
#15 966.3 [1321/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Spells/spell_paladin.cpp.o
#15 967.2 [1322/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Spells/spell_pet.cpp.o
#15 969.4 [1323/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Spells/spell_item.cpp.o
#15 970.7 [1324/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Spells/spell_priest.cpp.o
#15 971.5 [1325/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Spells/spell_script_loader.cpp.o
#15 971.8 [1326/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Spells/spell_rogue.cpp.o
#15 972.0 [1327/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Spells/spell_quest.cpp.o
#15 974.3 [1328/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/World/achievement_scripts.cpp.o
#15 976.3 [1329/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Spells/spell_warrior.cpp.o
#15 976.3 [1330/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Spells/spell_warlock.cpp.o
#15 976.4 [1331/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/Spells/spell_shaman.cpp.o
#15 976.9 [1332/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/World/action_ip_logger.cpp.o
#15 978.5 [1333/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/World/boosted_xp.cpp.o
#15 978.9 [1334/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/World/areatrigger_scripts.cpp.o
#15 979.5 [1335/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/World/boss_emerald_dragons.cpp.o
#15 979.6 [1336/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/World/chat_log.cpp.o
#15 980.7 [1337/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/World/conversation_scripts.cpp.o
#15 981.5 [1338/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/World/duel_reset.cpp.o
#15 982.0 [1339/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/World/item_scripts.cpp.o
#15 982.5 [1340/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/World/go_scripts.cpp.o
#15 984.0 [1341/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/World/npc_guard.cpp.o
#15 984.6 [1342/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/World/npc_professions.cpp.o
#15 984.6 [1343/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/World/scene_scripts.cpp.o
#15 986.1 [1344/1373] Building CXX object src/server/worldserver/CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.o
#15 986.2 [1345/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/World/transport_zeppelins.cpp.o
#15 986.8 [1346/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/World/npcs_special.cpp.o
#15 986.9 [1347/1373] Building CXX object src/server/scripts/CMakeFiles/scripts.dir/World/world_script_loader.cpp.o
#15 987.7 [1348/1373] Building CXX object src/server/worldserver/CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.o
#15 988.1 [1349/1373] Linking CXX static library src/server/scripts/libscripts.a
#15 988.8 [1350/1373] Building CXX object src/tools/extractor_common/CMakeFiles/extractor_common.dir/DB2CascFileSource.cpp.o
#15 990.0 [1351/1373] Building CXX object src/tools/map_extractor/CMakeFiles/mapextractor.dir/loadlib.cpp.o
#15 990.6 [1352/1373] Building CXX object src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RASession.cpp.o
#15 993.6 [1353/1373] Building CXX object src/tools/map_extractor/CMakeFiles/mapextractor.dir/System.cpp.o
#15 994.5 [1354/1373] Linking CXX executable src/server/worldserver/worldserver
#15 994.8 [1355/1373] Building CXX object src/tools/vmap4_assembler/CMakeFiles/vmap4assembler.dir/TileAssembler.cpp.o
#15 995.1 [1356/1373] Building CXX object src/tools/extractor_common/CMakeFiles/extractor_common.dir/CascHandles.cpp.o
#15 995.2 [1357/1373] Linking CXX static library src/tools/extractor_common/libextractor_common.a
#15 995.2 [1358/1373] Building CXX object src/tools/vmap4_assembler/CMakeFiles/vmap4assembler.dir/VMapAssembler.cpp.o
#15 995.4 [1359/1373] Linking CXX executable src/tools/vmap4_assembler/vmap4assembler
#15 995.4 [1360/1373] Linking CXX executable src/tools/map_extractor/mapextractor
#15 995.7 [1361/1373] Building CXX object src/tools/vmap4_extractor/CMakeFiles/vmap4extractor.dir/cascfile.cpp.o
#15 996.4 [1362/1373] Building CXX object src/tools/vmap4_extractor/CMakeFiles/vmap4extractor.dir/adtfile.cpp.o
#15 997.1 [1363/1373] Building CXX object src/tools/vmap4_extractor/CMakeFiles/vmap4extractor.dir/gameobject_extract.cpp.o
#15 997.1 [1364/1373] Building CXX object src/tools/vmap4_extractor/CMakeFiles/vmap4extractor.dir/model.cpp.o
#15 998.3 [1365/1373] Building CXX object src/tools/vmap4_extractor/CMakeFiles/vmap4extractor.dir/wdtfile.cpp.o
#15 999.0 [1366/1373] Building CXX object src/tools/mmaps_generator/CMakeFiles/mmaps_generator.dir/IntermediateValues.cpp.o
#15 999.5 [1367/1373] Building CXX object src/tools/vmap4_extractor/CMakeFiles/vmap4extractor.dir/wmo.cpp.o
#15 1000.1 [1368/1373] Building CXX object src/tools/vmap4_extractor/CMakeFiles/vmap4extractor.dir/vmapexport.cpp.o
#15 1000.4 [1369/1373] Linking CXX executable src/tools/vmap4_extractor/vmap4extractor
#15 1001.9 [1370/1373] Building CXX object src/tools/mmaps_generator/CMakeFiles/mmaps_generator.dir/MapBuilder.cpp.o
#15 1002.5 [1371/1373] Building CXX object src/tools/mmaps_generator/CMakeFiles/mmaps_generator.dir/PathGenerator.cpp.o
#15 1003.2 [1372/1373] Building CXX object src/tools/mmaps_generator/CMakeFiles/mmaps_generator.dir/TerrainBuilder.cpp.o
#15 1003.3 [1373/1373] Linking CXX executable src/tools/mmaps_generator/mmaps_generator
#15 1003.3 ninja: Entering directory `build'
#15 1003.7 [1/2] cd /src && /usr/bin/cmake -DBUILDDIR="/src/build" -P /src/cmake/genrev.cmake /src/build
#15 1003.7 [1/2] Install the project...
#15 1003.7 -- Install configuration: "Release"
#15 1003.7 -- Installing: /stage/opt/tc/lib/libopenssl_ed25519.so
#15 1003.7 -- Set non-toolchain portion of runtime path of "/stage/opt/tc/lib/libopenssl_ed25519.so" to "/opt/tc/lib"
#15 1003.7 -- Installing: /stage/opt/tc/bin/bnetserver
#15 1003.8 -- Set non-toolchain portion of runtime path of "/stage/opt/tc/bin/bnetserver" to "/opt/tc/lib"
#15 1003.8 -- Installing: /stage/opt/tc/etc/bnetserver.conf.dist
#15 1003.8 -- Installing: /stage/opt/tc/bin/bnetserver.cert.pem
#15 1003.8 -- Installing: /stage/opt/tc/bin/bnetserver.key.pem
#15 1003.8 -- Installing: /stage/opt/tc/bin/worldserver
#15 1003.8 -- Set non-toolchain portion of runtime path of "/stage/opt/tc/bin/worldserver" to "/opt/tc/lib"
#15 1003.8 -- Installing: /stage/opt/tc/etc/worldserver.conf.dist
#15 1003.8 -- Installing: /stage/opt/tc/bin/mapextractor
#15 1003.8 -- Set non-toolchain portion of runtime path of "/stage/opt/tc/bin/mapextractor" to "/opt/tc/lib"
#15 1003.8 -- Installing: /stage/opt/tc/bin/vmap4assembler
#15 1003.8 -- Set non-toolchain portion of runtime path of "/stage/opt/tc/bin/vmap4assembler" to "/opt/tc/lib"
#15 1003.8 -- Installing: /stage/opt/tc/bin/vmap4extractor
#15 1003.8 -- Set non-toolchain portion of runtime path of "/stage/opt/tc/bin/vmap4extractor" to "/opt/tc/lib"
#15 1003.8 -- Installing: /stage/opt/tc/bin/mmaps_generator
#15 1003.8 -- Set non-toolchain portion of runtime path of "/stage/opt/tc/bin/mmaps_generator" to "/opt/tc/lib"
#15 DONE 1003.9s

#16 [bnetserver stage-1  3/10] COPY --from=builder /stage/opt/tc /opt/tc
#16 DONE 0.1s

#17 [worldserver stage-1  4/10] COPY --from=builder /src/sql /opt/tc/sql
#17 DONE 0.0s

#18 [worldserver stage-1  5/10] COPY --from=builder /src/src/server/bnetserver/bnetserver.cert.pem /opt/tc/etc/
#18 DONE 0.0s

#19 [worldserver stage-1  6/10] COPY --from=builder /src/src/server/bnetserver/bnetserver.key.pem /opt/tc/etc/
#19 DONE 0.0s

#20 [bnetserver stage-1  7/10] COPY runtime/entrypoint.sh /usr/local/bin/entrypoint.sh
#20 DONE 0.0s

#21 [worldserver stage-1  8/10] COPY runtime/healthcheck.sh /usr/local/bin/healthcheck.sh
#21 DONE 0.0s

#22 [bnetserver stage-1  9/10] RUN chmod +x /usr/local/bin/entrypoint.sh /usr/local/bin/healthcheck.sh  && mkdir -p /opt/tc/data /opt/tc/logs /opt/tc/import/world /opt/tc/conf
#22 DONE 0.1s

#23 [worldserver stage-1 10/10] WORKDIR /opt/tc
#23 DONE 0.0s

#24 [bnetserver] exporting to image
#24 exporting layers
#24 exporting layers 1.7s done
#24 writing image sha256:6f83ba1e7ba378f83d8e8c44fdaeb3e71a12723fff932837772b19a4768dbe7d done
#24 naming to docker.io/library/trinitycore-3.4.3:local done
#24 DONE 1.8s

#25 [worldserver] exporting to image
#25 exporting layers 1.7s done
#25 writing image sha256:6f83ba1e7ba378f83d8e8c44fdaeb3e71a12723fff932837772b19a4768dbe7d done
#25 naming to docker.io/library/trinitycore-3.4.3:local done
#25 DONE 1.7s

#26 [worldserver] resolving provenance for metadata file
#26 DONE 0.0s

#27 [bnetserver] resolving provenance for metadata file
#27 DONE 0.0s
 worldserver  Built
 bnetserver  Built
 Network wow343_default  Creating
 Network wow343_default  Created
 Volume "wow343_mysql-data"  Creating
 Volume "wow343_mysql-data"  Created
 Container wow343-mysql-1  Creating
 Container wow343-mysql-1  Created
 Container wow343-worldserver-1  Creating
 Container wow343-bnetserver-1  Creating
 Container wow343-worldserver-1  Created
 Container wow343-bnetserver-1  Created
 Container wow343-mysql-1  Starting
 Container wow343-mysql-1  Started
 Container wow343-mysql-1  Waiting
 Container wow343-mysql-1  Waiting
 Container wow343-mysql-1  Healthy
 Container wow343-worldserver-1  Starting
 Container wow343-mysql-1  Healthy
 Container wow343-bnetserver-1  Starting
 Container wow343-bnetserver-1  Started
 Container wow343-worldserver-1  Started
  up exit=0
REPOSITORY          TAG       IMAGE ID       CREATED          SIZE
trinitycore-3.4.3   local     6f83ba1e7ba3   13 seconds ago   372MB
```

## 2. host folders AFTER up
```
  data  []
  etc  []
  logs  []
  import  [world ]
  import/world  [.gitkeep ]
drwxr-xr-x 2 root   root   4096 Sep  5 13:02 data
drwxr-xr-x 2 root   root   4096 Sep  5 13:02 etc
drwxr-xr-x 3 runner runner 4096 Sep  5 12:42 import
drwxr-xr-x 2 root   root   4096 Sep  5 13:02 logs
```

## 3. world DB download + import
```
  t=30s worldserver=running world_tables=0 import_errors=0 started=0
  t=60s worldserver=running world_tables=0 import_errors=0 started=0
  t=90s worldserver=running world_tables=186 import_errors=0 started=0
  t=120s worldserver=restarting world_tables=251 import_errors=0 started=8
  -> worldserver reached startup
--- final table counts:
mysql: [Warning] Using a password on the command line interface can be insecure.
auth	32
characters	107
hotfixes	376
world	251
--- EVERY import error line (should be none):
  total ERROR lines: 0
```

## 4. configs on the host + edit persistence
```
total 164
-rw-rw-rw- 1 root root  15746 Sep  5 13:02 bnetserver.conf
-rw-rw-rw- 1 root root 150100 Sep  5 13:03 worldserver.conf
--- effective settings (worldserver):
DataDir = "/opt/tc/data"
LogsDir = "/opt/tc/logs"
LoginDatabaseInfo = "mysql;3306;root;wow;auth"
WorldDatabaseInfo     = "mysql;3306;root;wow;world"
SourceDirectory = "/opt/tc"
--- effective settings (bnetserver):
LogsDir = "/opt/tc/logs"
CertificatesFile = "/opt/tc/etc/bnetserver.cert.pem"
PrivateKeyFile = "/opt/tc/etc/bnetserver.key.pem"
LoginDatabaseInfo = "mysql;3306;root;wow;auth"
 Container wow343-bnetserver-1  Restarting
 Container wow343-bnetserver-1  Started
  bnetserver health after edit+restart: healthy
MARKER_PERSISTED
SETTING_PERSISTED
```

## 5. where worldserver gets to without client data
```
NAME                   IMAGE                     COMMAND                  SERVICE       CREATED              STATUS                                     PORTS
wow343-bnetserver-1    trinitycore-3.4.3:local   "/usr/local/bin/entr…"   bnetserver    About a minute ago   Up 10 seconds (healthy)                    0.0.0.0:1119->1119/tcp, [::]:1119->1119/tcp, 0.0.0.0:8081->8081/tcp, [::]:8081->8081/tcp, 8085/tcp
wow343-mysql-1         mysql:8.0                 "docker-entrypoint.s…"   mysql         About a minute ago   Up About a minute (healthy)                3306/tcp, 33060/tcp
wow343-worldserver-1   trinitycore-3.4.3:local   "/usr/local/bin/entr…"   worldserver   About a minute ago   Up Less than a second (health: starting)   1119/tcp, 8081/tcp, 0.0.0.0:8085->8085/tcp, [::]:8085->8085/tcp
--- last 30 worldserver log lines:
Updating Hotfixes database...
DBUpdater: Given update include directory "/opt/tc/sql/custom/hotfixes" does not exist, skipped!
>> Hotfixes database is up-to-date! Containing 0 new and 0 archived updates.
Realm running as realm ID 1
Using World DB: TDB 1017.23101
Using enUS DBC Locale
Missing name DeathKnightsPerRealm in config file /opt/tc/conf/worldserver.conf, add "DeathKnightsPerRealm = 1" to this file
Missing name CharacterCreating.MinLevelForDeathKnight in config file /opt/tc/conf/worldserver.conf, add "CharacterCreating.MinLevelForDeathKnight = 55" to this file
Missing name MaxHonorPoints in config file /opt/tc/conf/worldserver.conf, add "MaxHonorPoints = 75000" to this file
Missing name StartHonorPoints in config file /opt/tc/conf/worldserver.conf, add "StartHonorPoints = 0" to this file
Missing name MaxArenaPoints in config file /opt/tc/conf/worldserver.conf, add "MaxArenaPoints = 10000" to this file
Missing name StartArenaPoints in config file /opt/tc/conf/worldserver.conf, add "StartArenaPoints = 0" to this file
Will clear `logs` table of entries older than 1209600 seconds every 10 minutes.
Missing name SkillGain.Defense in config file /opt/tc/conf/worldserver.conf, add "SkillGain.Defense = 1" to this file
Missing name SkillGain.Weapon in config file /opt/tc/conf/worldserver.conf, add "SkillGain.Weapon = 1" to this file
Client cache version set to: 23101
Using DataDir /opt/tc/data/
WORLD: MMap data directory is: /opt/tc/data/mmaps
VMap support included. LineOfSight: true, getHeight: true, indoorCheck: true
VMap data directory is: /opt/tc/data/vmaps
Missing name IngameShop.Currency in config file /opt/tc/conf/worldserver.conf, add "IngameShop.Currency = 1" to this file
Missing name DisplayPromotion.PromotionID in config file /opt/tc/conf/worldserver.conf, add "DisplayPromotion.PromotionID = 0" to this file
Missing name Battleground.RewardWinnerArenaFirst in config file /opt/tc/conf/worldserver.conf, add "Battleground.RewardWinnerArenaFirst = 25" to this file
Missing name Battleground.RewardWinnerArenaLast in config file /opt/tc/conf/worldserver.conf, add "Battleground.RewardWinnerArenaLast = 0" to this file
Map file '/opt/tc/data/maps/0000_43_31.map' does not exist!
Please place MAP-files (*.map) in the appropriate directory (/opt/tc/data/maps/), or correct the DataDir setting in your worldserver.conf file.
Unable to load map and vmap data for starting zones - server shutting down!
[entrypoint] waiting for MySQL at mysql:3306 ...
[entrypoint] MySQL is up.
[entrypoint] ensuring databases exist ...
```
