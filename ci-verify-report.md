# verification report (2026-09-05T09:12:50Z)

## 1. dynamic libraries
```
	not a dynamic executable
	not a dynamic executable
ALL_BINARIES_LINK_OK
STEP1_PASS
```

## 2. banner check (absolute cert paths + TC_LOGGER_ROOT)
```
Could not connect to MySQL database at 127.0.0.1: Can't connect to MySQL server on '127.0.0.1:3306' (111)

DatabasePool Login NOT opened. There were errors opening the MySQL connections. Check your SQLDriverLogFile for specific errors. Read wiki at https://www.trinitycore.info/display/tc/TrinityCore+Home
Automatic database updates are disabled for all databases!
```
STEP2_FAIL (no banner)

## 3. live stack: MySQL + bnetserver via docker-compose
```
 Network wow343_default  Creating
 Network wow343_default  Created
 Volume "wow343_mysql-data"  Creating
 Volume "wow343_mysql-data"  Created
 Container wow343-mysql-1  Creating
 Container wow343-mysql-1  Error response from daemon: No such image: mysql:8.0
Error response from daemon: No such image: mysql:8.0
COMPOSE_UP_FAILED
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
  bnetserver health: 
missing
--- last 25 log lines (NULs stripped, banner art removed)
Error response from daemon: No such container: wow343-bnetserver-1
--- port 1119 reachable from the runner host
PORT_1119_CLOSED
--- auth.realmlist row written by the entrypoint
service "mysql" is not running

## 4. GHCR package state
```
- GET /users/kasperfriend/packages?package_type=container  (GITHUB_TOKEN)
{
  "message": "Invalid argument.",
  "documentation_url": "https://docs.github.com/rest/packages/packages#list-packages-for-a-user",
  "status": "400"
}

- GET /users/kasperfriend/packages/container/wotlkclassic-trinity-docker
  HTTP 404
{
  "message": "Package not found.",
  "documentation_url": "https://docs.github.com/rest/packages/packages#get-a-package-for-a-user",
  "status": "404"
}

- ghcr.io/v2/.../tags/list (anonymous)
  HTTP 401
{"errors":[{"code":"UNAUTHORIZED","message":"authentication required"}]}

```
