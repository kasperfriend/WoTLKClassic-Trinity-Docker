# verification report (2026-09-05T08:36:01Z)

## 1. docker compose config (validity + resolved image)
```
name: wow343
services:
  bnetserver:
    build:
      context: /home/runner/work/WoTLKClassic-Trinity-Docker/WoTLKClassic-Trinity-Docker
      dockerfile: Dockerfile
    command:
      - bnetserver
    depends_on:
      mysql:
        condition: service_healthy
        required: true
    environment:
      AUTO_DOWNLOAD_DB: "true"
      MYSQL_HOST: mysql
      MYSQL_PASSWORD: wow
      MYSQL_PORT: "3306"
      MYSQL_ROOT_PASSWORD: wow
      MYSQL_USER: root
      REALM_ADDRESS: 127.0.0.1
      REALM_NAME: TrinityCore 3.4.3
      TZ: Europe/Kiev
    healthcheck:
      test:
        - CMD
        - healthcheck.sh
      timeout: 5s
      interval: 30s
      retries: 5
      start_period: 1m30s
    image: trinitycore-3.4.3:local
    networks:
      default: null
    ports:
      - mode: ingress
        target: 1119
        published: "1119"
        protocol: tcp
      - mode: ingress
        target: 8081
        published: "8081"
        protocol: tcp
    restart: unless-stopped
    stdin_open: true
    stop_grace_period: 30s
    tty: true
    volumes:
      - type: bind
        source: /home/runner/work/WoTLKClassic-Trinity-Docker/WoTLKClassic-Trinity-Docker/data
        target: /opt/tc/data
        bind:
          create_host_path: true
      - type: bind
        source: /home/runner/work/WoTLKClassic-Trinity-Docker/WoTLKClassic-Trinity-Docker/logs
        target: /opt/tc/logs
        bind:
          create_host_path: true
      - type: bind
        source: /home/runner/work/WoTLKClassic-Trinity-Docker/WoTLKClassic-Trinity-Docker/import
        target: /opt/tc/import
        bind:
          create_host_path: true
  mysql:
    command:
      - --default-authentication-plugin=mysql_native_password
      - --max_allowed_packet=1G
    environment:
      MYSQL_ROOT_HOST: '%'
      MYSQL_ROOT_PASSWORD: wow
    healthcheck:
      test:
        - CMD-SHELL
        - mysqladmin ping -h 127.0.0.1 -uroot -p$$MYSQL_ROOT_PASSWORD --silent
      timeout: 5s
      interval: 10s
      retries: 30
      start_period: 1m0s
    image: mysql:8.0
    networks:
      default: null
    restart: unless-stopped
    volumes:
      - type: volume
        source: mysql-data
        target: /var/lib/mysql
        volume: {}
  worldserver:
    build:
      context: /home/runner/work/WoTLKClassic-Trinity-Docker/WoTLKClassic-Trinity-Docker
      dockerfile: Dockerfile
    command:
      - worldserver
    depends_on:
      mysql:
        condition: service_healthy
        required: true
    environment:
      AUTO_DOWNLOAD_DB: "true"
      MYSQL_HOST: mysql
      MYSQL_PASSWORD: wow
      MYSQL_PORT: "3306"
      MYSQL_ROOT_PASSWORD: wow
      MYSQL_USER: root
      REALM_ADDRESS: 127.0.0.1
      REALM_NAME: TrinityCore 3.4.3
      TZ: Europe/Kiev
    healthcheck:
      test:
        - CMD
        - healthcheck.sh
      timeout: 5s
      interval: 30s
      retries: 5
      start_period: 45m0s
    image: trinitycore-3.4.3:local
    networks:
      default: null
    ports:
      - mode: ingress
        target: 8085
        published: "8085"
        protocol: tcp
    restart: unless-stopped
    stdin_open: true
    stop_grace_period: 1m0s
    tty: true
    volumes:
      - type: bind
        source: /home/runner/work/WoTLKClassic-Trinity-Docker/WoTLKClassic-Trinity-Docker/data
        target: /opt/tc/data
        bind:
          create_host_path: true
      - type: bind
        source: /home/runner/work/WoTLKClassic-Trinity-Docker/WoTLKClassic-Trinity-Docker/logs
        target: /opt/tc/logs
        bind:
          create_host_path: true
      - type: bind
        source: /home/runner/work/WoTLKClassic-Trinity-Docker/WoTLKClassic-Trinity-Docker/import
        target: /opt/tc/import
        bind:
          create_host_path: true
networks:
  default:
    name: wow343_default
volumes:
  mysql-data:
    name: wow343_mysql-data
COMPOSE_CONFIG_OK
```

## 2. link check (exact CI check)
```
LINKCHECK_PASS
```

## 2b. libmysqlclient now present
```
	libmysqlclient.so.21 => /lib/x86_64-linux-gnu/libmysqlclient.so.21 (0x00007fc8e0d24000)
	libmysqlclient.so.21 (libc6,x86-64) => /lib/x86_64-linux-gnu/libmysqlclient.so.21
	libmariadb.so.3 (libc6,x86-64) => /lib/x86_64-linux-gnu/libmariadb.so.3
```

## 3. banner check (NEW, exact CI check)
```
OSSL_STORE_open failed: unregistered scheme (STORE routines)
Failed to initialize SSL context
```
BANNER_FAIL (no banner)

## 3b. old check on the OLD image would have been a false pass —
    proof: grep -qiE 'bnetserver|TrinityCore' matches a loader error.
```
old-grep matches a loader error => confirmed false positive
```

## 4. docker compose up mysql + bnetserver (AUTO_DOWNLOAD_DB=false)
```
 mysql Pulling 
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
 a63160a5eda1 Waiting 
 7534d1db9f8d Waiting 
 49ec2dab01d9 Waiting 
 ab24264a27e9 Waiting 
 96d30d9fbee8 Waiting 
 0d74d296605b Waiting 
 297d04cfe470 Waiting 
 4c8a3e0d4e4b Waiting 
 6ef6c7b50a93 Downloading [==================================================>]     884B/884B
 6ef6c7b50a93 Verifying Checksum 
 6ef6c7b50a93 Download complete 
 e3e5d1ac74c1 Downloading [=>                                                 ]  15.74kB/783.6kB
 edf85873f64e Downloading [>                                                  ]  474.5kB/47.31MB
 e3e5d1ac74c1 Downloading [==================================================>]  783.6kB/783.6kB
 e3e5d1ac74c1 Download complete 
 0d74d296605b Downloading [>                                                  ]   64.9kB/6.173MB
 edf85873f64e Downloading [=========>                                         ]  8.552MB/47.31MB
 297d04cfe470 Downloading [==================================================>]  2.607kB/2.607kB
 297d04cfe470 Verifying Checksum 
 297d04cfe470 Download complete 
 0d74d296605b Downloading [=====================>                             ]  2.686MB/6.173MB
 edf85873f64e Downloading [===============================================>   ]  44.66MB/47.31MB
 edf85873f64e Verifying Checksum 
 edf85873f64e Download complete 
 0d74d296605b Verifying Checksum 
 0d74d296605b Download complete 
 edf85873f64e Extracting [>                                                  ]  491.5kB/47.31MB
 4c8a3e0d4e4b Downloading [==================================================>]     335B/335B
 4c8a3e0d4e4b Verifying Checksum 
 4c8a3e0d4e4b Download complete 
 edf85873f64e Extracting [=====>                                             ]  4.915MB/47.31MB
 7534d1db9f8d Download complete 
 a63160a5eda1 Downloading [>                                                  ]  507.3kB/49.93MB
 edf85873f64e Extracting [=======>                                           ]  7.373MB/47.31MB
 49ec2dab01d9 Downloading [>                                                  ]  540.7kB/129.4MB
 a63160a5eda1 Downloading [=========>                                         ]   9.65MB/49.93MB
 edf85873f64e Extracting [==============>                                    ]  13.76MB/47.31MB
 ab24264a27e9 Downloading [================================>                  ]  3.501kB/5.327kB
 ab24264a27e9 Downloading [==================================================>]  5.327kB/5.327kB
 ab24264a27e9 Download complete 
 49ec2dab01d9 Downloading [===>                                               ]  8.547MB/129.4MB
 a63160a5eda1 Downloading [============================================>      ]  44.19MB/49.93MB
 a63160a5eda1 Verifying Checksum 
 a63160a5eda1 Download complete 
 edf85873f64e Extracting [====================>                              ]  19.17MB/47.31MB
 49ec2dab01d9 Downloading [===================>                               ]   49.7MB/129.4MB
 96d30d9fbee8 Download complete 
 edf85873f64e Extracting [===========================>                       ]  26.05MB/47.31MB
 49ec2dab01d9 Downloading [====================================>              ]  93.55MB/129.4MB
 edf85873f64e Extracting [=================================>                 ]  31.95MB/47.31MB
 49ec2dab01d9 Verifying Checksum 
 49ec2dab01d9 Download complete 
 edf85873f64e Extracting [===========================================>       ]  41.29MB/47.31MB
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
 0d74d296605b Extracting [=============>                                     ]  1.704MB/6.173MB
 0d74d296605b Extracting [=============================================>     ]  5.571MB/6.173MB
 0d74d296605b Extracting [==================================================>]  6.173MB/6.173MB
 0d74d296605b Pull complete 
 297d04cfe470 Extracting [==================================================>]  2.607kB/2.607kB
 297d04cfe470 Extracting [==================================================>]  2.607kB/2.607kB
 297d04cfe470 Pull complete 
 4c8a3e0d4e4b Extracting [==================================================>]     335B/335B
 4c8a3e0d4e4b Extracting [==================================================>]     335B/335B
 4c8a3e0d4e4b Pull complete 
 a63160a5eda1 Extracting [>                                                  ]  524.3kB/49.93MB
 a63160a5eda1 Extracting [=========>                                         ]  9.437MB/49.93MB
 a63160a5eda1 Extracting [==============>                                    ]  14.16MB/49.93MB
 a63160a5eda1 Extracting [=======================>                           ]  23.59MB/49.93MB
 a63160a5eda1 Extracting [=================================>                 ]  33.03MB/49.93MB
 a63160a5eda1 Extracting [=========================================>         ]  41.42MB/49.93MB
 a63160a5eda1 Extracting [=================================================> ]  49.28MB/49.93MB
 a63160a5eda1 Extracting [==================================================>]  49.93MB/49.93MB
 a63160a5eda1 Pull complete 
 7534d1db9f8d Extracting [==================================================>]     316B/316B
 7534d1db9f8d Extracting [==================================================>]     316B/316B
 7534d1db9f8d Pull complete 
 49ec2dab01d9 Extracting [>                                                  ]  557.1kB/129.4MB
 49ec2dab01d9 Extracting [===>                                               ]   9.47MB/129.4MB
 49ec2dab01d9 Extracting [====>                                              ]  12.81MB/129.4MB
 49ec2dab01d9 Extracting [=======>                                           ]   19.5MB/129.4MB
 49ec2dab01d9 Extracting [=========>                                         ]  25.07MB/129.4MB
 49ec2dab01d9 Extracting [===========>                                       ]  30.64MB/129.4MB
 49ec2dab01d9 Extracting [============>                                      ]  32.31MB/129.4MB
 49ec2dab01d9 Extracting [============>                                      ]  32.87MB/129.4MB
 49ec2dab01d9 Extracting [============>                                      ]  33.42MB/129.4MB
 49ec2dab01d9 Extracting [=============>                                     ]  33.98MB/129.4MB
 49ec2dab01d9 Extracting [=============>                                     ]  34.54MB/129.4MB
 49ec2dab01d9 Extracting [=============>                                     ]  35.65MB/129.4MB
 49ec2dab01d9 Extracting [=============>                                     ]  36.21MB/129.4MB
 49ec2dab01d9 Extracting [==============>                                    ]  37.32MB/129.4MB
 49ec2dab01d9 Extracting [==============>                                    ]  37.88MB/129.4MB
 49ec2dab01d9 Extracting [==============>                                    ]  38.44MB/129.4MB
 49ec2dab01d9 Extracting [===============>                                   ]  38.99MB/129.4MB
 49ec2dab01d9 Extracting [===============>                                   ]  39.55MB/129.4MB
 49ec2dab01d9 Extracting [===============>                                   ]  40.11MB/129.4MB
 49ec2dab01d9 Extracting [===============>                                   ]  41.22MB/129.4MB
 49ec2dab01d9 Extracting [================>                                  ]  42.34MB/129.4MB
 49ec2dab01d9 Extracting [================>                                  ]  42.89MB/129.4MB
 49ec2dab01d9 Extracting [================>                                  ]  43.45MB/129.4MB
 49ec2dab01d9 Extracting [=================>                                 ]  44.56MB/129.4MB
 49ec2dab01d9 Extracting [=================>                                 ]  45.68MB/129.4MB
 49ec2dab01d9 Extracting [=================>                                 ]  46.24MB/129.4MB
 49ec2dab01d9 Extracting [==================>                                ]  47.91MB/129.4MB
 49ec2dab01d9 Extracting [===================>                               ]  49.58MB/129.4MB
 49ec2dab01d9 Extracting [====================>                              ]  52.92MB/129.4MB
 49ec2dab01d9 Extracting [=======================>                           ]  61.28MB/129.4MB
 49ec2dab01d9 Extracting [===========================>                       ]  70.19MB/129.4MB
 49ec2dab01d9 Extracting [==============================>                    ]   79.1MB/129.4MB
 49ec2dab01d9 Extracting [==================================>                ]  88.57MB/129.4MB
 49ec2dab01d9 Extracting [=====================================>             ]  98.04MB/129.4MB
 49ec2dab01d9 Extracting [=========================================>         ]  108.1MB/129.4MB
 49ec2dab01d9 Extracting [=============================================>     ]  118.7MB/129.4MB
 49ec2dab01d9 Extracting [================================================>  ]  124.8MB/129.4MB
 49ec2dab01d9 Extracting [==================================================>]  129.4MB/129.4MB
 49ec2dab01d9 Pull complete 
 ab24264a27e9 Extracting [==================================================>]  5.327kB/5.327kB
 ab24264a27e9 Extracting [==================================================>]  5.327kB/5.327kB
 ab24264a27e9 Pull complete 
 96d30d9fbee8 Extracting [==================================================>]     120B/120B
 96d30d9fbee8 Extracting [==================================================>]     120B/120B
 96d30d9fbee8 Pull complete 
 mysql Pulled 
 Network wow343_default  Creating
 Network wow343_default  Created
 Volume "wow343_mysql-data"  Creating
 Volume "wow343_mysql-data"  Created
 Container wow343-mysql-1  Creating
 Container wow343-mysql-1  Created
 Container wow343-bnetserver-1  Creating
 Container wow343-bnetserver-1  Created
 Container wow343-mysql-1  Starting
 Container wow343-mysql-1  Started
 Container wow343-mysql-1  Waiting
 Container wow343-mysql-1  Healthy
 Container wow343-bnetserver-1  Starting
 Container wow343-bnetserver-1  Started
COMPOSE_UP_OK
  t=10s bnetserver state=running health=starting
  t=20s bnetserver state=running health=healthy
--- bnetserver logs (last 40)
[entrypoint] ensuring databases exist ...
[entrypoint] importing auth_database.sql -> auth (this can take a while)
[entrypoint] importing characters_database.sql -> characters (this can take a while)
[entrypoint] rendering /opt/tc/etc/bnetserver.conf
[entrypoint] starting bnetserver ...
TrinityCore rev. cd398483dc20 2026-09-04 22:31:49 +0300 (main branch) (Unix, Release, Static) (bnetserver)
<Ctrl-C> to stop.

 ______                       __
/\__  _\       __          __/\ \__
\/_/\ \/ _ __ /\_\    ___ /\_\ \, _\  __  __
   \ \ \/\`'__\/\ \ /' _ `\/\ \ \ \/ /\ \/\ \
    \ \ \ \ \/ \ \ \/\ \/\ \ \ \ \ \_\ \ \_\ \
     \ \_\ \_\  \ \_\ \_\ \_\ \_\ \__\\/`____ \
      \/_/\/_/   \/_/\/_/\/_/\/_/\/__/ `/___/> \
                                 C O R E  /\___/
http://TrinityCore.org                    \/__/

Using configuration file /opt/tc/etc/bnetserver.conf.
Using SSL version: OpenSSL 3.0.13 30 Jan 2024 (library: OpenSSL 3.0.13 30 Jan 2024)
Using Boost version: 1.83.0
Automatic database updates are disabled for all databases!
Opening DatabasePool 'auth'. Asynchronous connections: 1, synchronous connections: 1.
MySQL client library: 8.0.46
MySQL server ver: 8.0.46 
Connected to MySQL database at mysql
MySQL client library: 8.0.46
MySQL server ver: 8.0.46 
Connected to MySQL database at mysql
DatabasePool 'auth' opened successfully. 2 total connections running.
Started auth database connection pool.
Loading IP Location Database...
Registered new handler for GET /bnetserver/login/
Registered new handler for GET /bnetserver/gameAccounts/
Registered new handler for GET /bnetserver/portal/
Registered new handler for POST /bnetserver/login/
Registered new handler for POST /bnetserver/login/srp/
Registered new handler for POST /bnetserver/refreshLoginTicket/
Added realm "TrinityCore 3.4.3" at 127.0.0.1:8085.
[127.0.0.1:56640] SSL Handshake failed stream truncated
--- port 1119 from the host
PORT_1119_OPEN
--- auth.realmlist row written by the entrypoint
mysql: [Warning] Using a password on the command line interface can be insecure.
id	name	address	port
1	TrinityCore 3.4.3	127.0.0.1	8085
```

## 5. GHCR package state
```
- GET /users/kasperfriend/packages?package_type=container (with GITHUB_TOKEN):
{
  "message": "Invalid argument.",
  "documentation_url": "https://docs.github.com/rest/packages/packages#list-packages-for-a-user",
  "status": "400"
}

- GET /orgs|users package by name:
  HTTP 404
{
  "message": "Package not found.",
  "documentation_url": "https://docs.github.com/rest/packages/packages#get-a-package-for-a-user",
  "status": "404"
}

- ghcr.io tags/list:
  HTTP 401
{"errors":[{"code":"UNAUTHORIZED","message":"authentication required"}]}

```
