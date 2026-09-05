# TrinityCore 3.4.3 (WotLK Classic) — Docker + Auto-Rebuild

[![poll-and-build](https://github.com/kasperfriend/WoTLKClassic-Trinity-Docker/actions/workflows/poll-and-build.yml/badge.svg)](https://github.com/kasperfriend/WoTLKClassic-Trinity-Docker/actions/workflows/poll-and-build.yml)

A self-rebuilding Docker distribution of the
**[xHashii/3.4.3_Source](https://github.com/xHashii/3.4.3_Source)** World of
Warcraft 3.4.3 (WotLK Classic) server (TrinityCore-based).

* **Builds** `worldserver`, `bnetserver` and the map/vmap/mmap extractor
  tools from the upstream source — in Docker, on every run.
* **Rebuilds itself** via GitHub Actions: polls upstream every 15 minutes and
  builds + publishes to GHCR only when there is a commit it hasn't built yet.
* **Runs the whole stack** with one command: MySQL 8 + logon server +
  world server, with databases created and populated automatically.

---

## The whole workflow

```
1. git clone                    →  get this repo
2. docker compose up -d         →  ONE command: builds, starts, creates the
                                   DBs, downloads the world DB, drops the
                                   extractors into this folder
3. ./extract-data.sh <client>   →  extract dbc/maps/vmaps/mmaps/gt/cameras
                                   from your 3.4.3 client (1–4 h)
                                   — or ./place-data.sh <path> if you
                                   already have extracted data
4. ./data/                      →  that's where the extracted folders belong
                                   (the launcher puts them there for you)
5. docker compose restart       →  worldserver (or the whole stack) comes up
                                   with the data, and you're playing
```

Steps 2–5 happen once. After that, starting the server is just
`docker compose up -d` and it takes seconds.

---

## Requirements

* Docker 24+ with BuildKit and the `docker compose` **v2** plugin
  (`docker compose version` ≥ 2.17 — that is when `pull_policy` arrived; the
  one in this repo is what keeps a first `up` from probing Docker Hub)
* ~10 GB disk for the image, +25 GB while extracting a client
* The WoW 3.4.3 (WotLK Classic) client if you want a playable world.
  3.4.3 is not the current Classic tier any more, so plan on getting the
  client from the link in the
  [upstream README](https://github.com/xHashii/3.4.3_Source#readme) or from a
  copy you already keep — Battle.net will not hand it to you on a reinstall.
* Internet during the first run only: the Ubuntu base layers, the source
  clone, and the world DB bundle are fetched from GitHub (`./doctor.sh`
  checks all three are reachable *before* you wait 45 minutes for a build)

Nothing else. A fresh clone + `docker compose up -d` is the whole setup —
see [Quick start](#quick-start).

---

## Quick start

### 1. Clone

```bash
git clone https://github.com/kasperfriend/WoTLKClassic-Trinity-Docker.git
cd WoTLKClassic-Trinity-Docker
```

That's the whole setup — everything below runs from this folder, and every
file you will ever need to touch shows up right here.

> **Optional, before step 2:** `cp .env.example .env` and edit it to change the
> MySQL password, the realm name/address, or to run the CI-built GHCR image
> instead of building locally. The defaults work as-is, so you can skip this
> and come back to it later (see [Configuration](#configuration-reference)).

### 2. Run `docker compose up -d` — once

```bash
docker compose up -d
docker compose logs -f worldserver     # watch the first boot
```

This one command does everything up to the point where the server needs your
client data:

1. **Builds the image** from the upstream source (~25–45 min on a typical
   4-core machine; `SERVERS=ON`, `TOOLS=ON`, Release). Later runs reuse it.
2. **Starts the stack** — MySQL 8 + `bnetserver` + `worldserver`.
3. **Creates the databases** `auth`, `characters`, `world`, `hotfixes`
   (utf8mb4) and imports the base schemas shipped in the source.
4. **Fetches the world database.** The source repo doesn't ship one, so the
   entrypoint downloads the **official database bundle** for this source
   (`Databases.7z`, ~48 MB, published by the upstream author) and imports the
   full `world`, `hotfixes`, `auth` and `characters` dumps — 10–20 min, one
   time only. Afterwards the core's built-in auto-updater applies
   `sql/updates/*` on every start.
5. **Registers the realm** in `auth.realmlist` and starts both servers.
6. **Drops the extractors into this folder** — `extract-data.sh`,
   `extract-data.bat` and `tools/` — so step 3 needs no further Docker work.
7. **Seeds `./etc/worldserver.conf` and `./etc/bnetserver.conf`**, which are
   then yours to edit.

Then worldserver prints *"client data is missing or empty in ./data"* and
**waits, re-checking every 60 s.** That's expected: leave the stack running
and go to step 3. `bnetserver` is already up, so you can create accounts in
the meantime.

> **Prefer the CI-built image over compiling?** Put **both** lines into `.env`
> before this step — see [Auto-rebuild](#auto-rebuild-poll-upstream-every-15-minutes):
> ```ini
> SERVER_IMAGE=ghcr.io/<you>/<repo>:latest
> SERVER_PULL_POLICY=always
> ```
> You can also pre-build by hand with `docker build -t trinitycore-3.4.3:local .`,
> but `up -d` already does it for you.

> #### `pull access denied for trinitycore-3.4.3, repository does not exist or may require 'docker login'`
>
> That is **not** a login problem, and Docker Hub has nothing to do with it.
> `trinitycore-3.4.3:local` is a *local* image name: the image only exists in
> your Docker engine once this repo has built it, so any command that lets
> Docker "helpfully" look it up in a registry answers exactly this sentence.
> The whole fix is to make sure the image exists here:
>
> ```bash
> docker compose build          # 25-45 min, one time — after that `up` is instant
> docker compose up -d
> ```
>
> [`./doctor.sh`](#troubleshooting) pinpoints which case you are in, and
> [Why the server image is built, not pulled](#why-the-server-image-is-built-not-pulled)
> lists every command that triggers it.

### 3. Extract the client data

`up -d` just put the extractors next to this README:

```
WoTLKClassic-Trinity-Docker/
├── extract-data.sh     <- Linux / macOS: run this
├── extract-data.bat    <- Windows: drag your client folder onto it
├── place-data.sh       <- already extracted? run this with the data folder
├── place-data.bat      <- same, for Windows
└── tools/              <- the raw extractor binaries
```

**Linux / macOS** — pass the client folder (the one with `Wow.exe`):

```bash
./extract-data.sh /path/to/3.4.3/client
```

**Windows** — drag your WoW 3.4.3 folder onto `extract-data.bat`, or run it
from a terminal:

```bat
extract-data.bat "C:\Games\WoW 3.4.3"
```

The launcher runs all four tools in the right order
(`mapextractor` → `vmap4extractor` → `vmap4assembler` → `mmaps_generator`).

Expect **1–4 hours** (`mmaps_generator` is the slow part) and ~25 GB of free
disk. Ctrl+C is safe — just re-run it.

**Already have the data?** If you extracted earlier — on this machine, on
another machine, or by hand with the raw tools — skip this step entirely and
just place the finished folders:

```bash
./place-data.sh /path/to/extracted/folder            # copy (default)
./place-data.sh /path/to/extracted/folder --move     # move (instant, frees source space)
./place-data.sh /path/to/extracted/folder --dry-run  # show what it would do
```

It accepts a folder that directly contains `dbc/ maps/ vmaps/ mmaps/ gt/`,
a client folder the extractors were already run in (output next to `Wow.exe`),
or another checkout of this repo (its `./data` is found automatically). It
replaces anything stale in `./data` and verifies the five required folders —
if one is missing or empty it stops and names it, rather than leaving you a
server that can't start. On **Windows**, drag the folder onto `place-data.bat`
instead (it copies).

**The order is flexible** — the stack from step 2 can already be running;
worldserver re-checks `./data` every 60 s and starts on its own once the data
appears. To make it immediate:

```bash
./place-data.sh /path/to/extracted/folder && docker compose restart worldserver
```

(If the stack isn't up yet, just `docker compose up -d` after the script
finishes instead.)

> **How the tools got there:** a one-shot `extractors` service copies them out
> of the image on every `up -d` (and refreshes them when you rebuild). It exits
> immediately and never touches the running servers. `./tools`,
> `extract-data.sh` and `extract-data.bat` are generated, so they're
> git-ignored.
>
> The binaries are Linux executables. On a **Linux host** `extract-data.sh`
> runs them natively out of `./tools` (their non-glibc libraries are bundled in
> `./tools/lib`). On **Windows/macOS** they can't run on the host, so the
> launcher runs them inside the image you already built — Docker just needs to
> be running.

### 4. The data goes in `./data`

**The launcher already did this for you** — it moves the extractor output into
`./data/` when it finishes, and errors out rather than leaving you a
half-extracted folder. This is just what the result has to look like:

```
WoTLKClassic-Trinity-Docker/
└── data/            <- bind-mounted into the containers as /opt/tc/data
    ├── dbc/         <- required
    ├── maps/        <- required
    ├── vmaps/       <- required
    ├── mmaps/       <- required
    ├── gt/          <- required
    └── cameras/
```

**All five "required" folders matter** — worldserver refuses to start without
any one of them, and it names the missing ones in its log.

If you extracted by hand (or on another machine), `./place-data.sh
/path/to/extracted` does this for you (see [step 3](#3-extract-the-client-data))
— it places the folders into `./data` and verifies the five required ones.
Moved by hand, they must sit **directly** in `./data` — a nested
`./data/data/maps` or `./data/3.4.3/maps` will not be found. Anything already
in `./data` from an earlier attempt can be replaced wholesale.

### 5. Restart worldserver — or everything

```bash
docker compose restart worldserver     # just the game server
```

…or restart the whole stack if you prefer:

```bash
docker compose restart                 # mysql + bnetserver + worldserver
```

Watch it come up:

```bash
docker compose logs -f worldserver
```

> If you left the stack running through step 3, worldserver notices the data
> on its own within 60 s — the restart just makes it immediate. Use one after
> editing `./etc/*.conf` too.

### 6. Create an account & log in

Accounts are created on the **worldserver** console (`bnetserver` has no
console). A Battle.net account name must be an e-mail-style name containing
`@`:

```bash
docker attach wow343-worldserver-1    # attach to the world server console
bnetaccount create myuser@local mypass
# detach with Ctrl-P Ctrl-Q  (Ctrl-C would stop the server)
```

That also creates the game account `myuser@local#1` for you.

* Client: edit the client's `realmlist.wtf` → `set realmlist 127.0.0.1`
  (the client talks to the logon server on port 1119) and log in with
  `myuser@local` / `mypass`.
* For friends on your LAN set `REALM_ADDRESS` in `.env` to your LAN IP.

### Day-to-day afterwards

```bash
docker compose up -d          # start (seconds — no re-import, no re-extract)
docker compose stop           # stop, keep everything
docker compose logs -f worldserver
docker compose restart worldserver    # after editing ./etc/worldserver.conf
```

---

## Repository layout

```
WoTLKClassic-Trinity-Docker/
├── Dockerfile                        # multi-stage: clone upstream → compile → slim runtime
├── docker-compose.yml                # mysql + bnetserver + worldserver + extractors
├── place-data.sh                     # put already-extracted data into ./data (Linux/macOS)
├── place-data.bat                    # same, for Windows
├── doctor.sh                         # read-only pre-flight: image, data, launchers, ports
├── .env.example                      # copy to .env and edit (optional)
├── .github/workflows/poll-and-build.yml # polls upstream, builds only on new commits
├── import/world/                     # drop your own *.sql dumps here
└── runtime/
    ├── entrypoint.sh                 # DB wait → create DBs → import → render conf → start
    ├── export-tools.sh               # copies extractors + launchers to the repo root
    └── healthcheck.sh                # container health (process + port)

created by `docker compose up -d` (all git-ignored):
├── tools/            extractor binaries + bundled libs
├── extract-data.sh   Linux/macOS launcher
├── extract-data.bat  Windows launcher
├── data/             extracted client data — see step 4
├── etc/              worldserver.conf / bnetserver.conf — yours to edit
└── logs/             server logs
```

---

## Running the extractor tools by hand

Only needed if you don't want the launcher. The order and arguments matter:

```
mapextractor
vmap4extractor
vmap4assembler Buildings vmaps
mmaps_generator
```

Run them with the client folder as the working directory — the tools read and
write the current directory — then move `dbc/`, `maps/`, `vmaps/`, `mmaps/`,
`gt/` and `cameras/` into `./data` as shown in [step 4](#4-the-data-goes-in-data).

On Linux use `./tools/run-tool.sh <tool> [args]` so the bundled libraries are
picked up. Note that `vmap4assembler .` does **not** work — `vmap4extractor`
writes its raw output into `Buildings/`, and the assembler has to be pointed
at it. Getting this wrong yields an empty `vmaps/` and the server then dies
with *"Unable to load map and vmap data for starting zones"*. The `Buildings/`
intermediate is ~10 GB and can be deleted once `mmaps_generator` is done (the
launcher does that for you).

---

## Auto-rebuild: poll upstream every 15 minutes

The included workflow (`.github/workflows/poll-and-build.yml`) on your
GitHub repo:

1. **Polls `xHashii/3.4.3_Source` every 15 minutes** (`*/15 * * * *`) and
   resolves its latest commit.
2. **Skips the build when that commit is already published** — it asks GHCR
   whether `sha-<short-commit>` exists. If it does, the run exits doing
   nothing, so the 96 runs a day cost almost nothing. Manual
   (**Run workflow**) and `push`-to-`main` runs always rebuild.
3. Builds the image from that exact commit (`SOURCE_SHA` build-arg → the
   clone is pinned, and the image is tagged `sha-<short>`).
4. Pushes to **GHCR**:
   * `ghcr.io/<your-user>/<your-repo>:latest`
   * `ghcr.io/<your-user>/<your-repo>:YYYY.MM.DD` (UTC date)
   * `ghcr.io/<your-user>/<your-repo>:sha-<upstream-short-sha>`
5. **Smoke-tests** the image: every binary link-checks clean,
   `bnetserver --version` runs, and a real `mysql` + `bnetserver` stack is
   brought up with `docker compose` and must reach *healthy* (process
   running **and** port 1119 listening).

> Adjust the cadence by editing the `cron:` line — `*/15` is a good default;
> hourly (`0 * * * *`) is plenty if you don't need same-day upstream fixes.

### One-time setup

1. Push this folder to a **new GitHub repository**.
2. `Settings → Actions → General`: allow *Read and write* if your org
   restricts the default `GITHUB_TOKEN` (most personal repos need nothing).
3. Push to `main` triggers a build immediately; afterwards the poller runs
   every 15 minutes. You can always hit **Run workflow** to force a build.
4. **Make the image pullable — this step is mandatory if anyone but you should
   pull it.** GHCR packages are **private by default**, so a fresh
   `docker pull` fails with `denied`/`manifest unknown` until you go to your
   repo's **Packages** section → package settings → *Change visibility →
   Public*. (Or keep it private and `docker login ghcr.io` on every host that
   pulls it.)
5. Put **both** lines in your `.env`:
   ```ini
   SERVER_IMAGE=ghcr.io/<your-user>/<your-repo>:latest
   SERVER_PULL_POLICY=always
   ```
   `docker compose up -d` then pulls the CI-built image instead of compiling,
   and step 2 above takes minutes instead of an hour. The policy line is not
   optional: the compose default is `never` (so a local build never touches a
   registry), which would make Compose build `ghcr.io/...` from this Dockerfile
   instead of pulling it.

> **The image name follows the repository name:** it is
> `ghcr.io/<owner>/<repo-in-lowercase>:latest`. Renaming the repo afterwards
> does **not** rename a package that was already pushed — the old name keeps
> working and the next build creates a *second* package under the new name
> (which starts out **private**). Delete the stale package, or keep pulling the
> old name.

---

## Configuration reference

| Variable | Default | Purpose |
|---|---|---|
| `MYSQL_ROOT_PASSWORD` | `wow` | MySQL root + server DB credentials (**change it**) |
| `SERVER_IMAGE` | `trinitycore-3.4.3:local` | image the compose stack runs (built from this repo unless you point it at GHCR) |
| `SERVER_PULL_POLICY` | `never` | `never` = build the image locally, never ask a registry (this is what keeps `pull access denied for trinitycore-3.4.3` from happening). Set `always` for a registry-hosted `SERVER_IMAGE`, `missing` to pull only when it isn't cached |
| `AUTO_DOWNLOAD_DB` | `true` | download the official DB bundle when `world` is empty |
| `DB_URL` | upstream `databases` release | where that bundle is downloaded from (the entrypoint default, forwarded to the containers) |
| `SOURCE_REPO` / `SOURCE_BRANCH` / `SOURCE_SHA` | `xHashii/3.4.3_Source` `main` | what the image is compiled from — set these if upstream ever moves |
| `REALM_NAME` | `TrinityCore 3.4.3` | realm name in the client realm list |
| `REALM_ADDRESS` | `127.0.0.1` | realm address clients connect to |
| `TZ` | `Europe/Kiev` | container timezone |

Everything has a working default, which is why step 2 runs without an `.env`
at all. `cp .env.example .env`, edit, then `docker compose up -d` to apply.

### Why the server image is built, not pulled

`SERVER_IMAGE` defaults to `trinitycore-3.4.3:local`. A name **without a
registry host** is a Docker Hub name as far as the daemon is concerned
(`trinitycore-3.4.3:local` → `docker.io/library/trinitycore-3.4.3:local`), and
no such repository exists. So every operation that resolves the name through a
registry answers the same sentence:

```
Error response from daemon: pull access denied for trinitycore-3.4.3,
repository does not exist or may require 'docker login'
```

…which means **“not built in this Docker engine”**, not “wrong password”:

| You ran | With this repo's defaults | Do this |
|---|---|---|
| `docker compose up -d` | Compose builds the image (`build: .`, and `pull_policy: never` keeps it from asking a registry) | nothing — this is the intended flow |
| `docker compose pull` | the three server services are **skipped** (`Skipped: pull policy is never`) and only `mysql:8.0` is pulled | nothing; if the image is missing: `docker compose build` |
| `docker compose up --pull always` | the flag overrides the per-service policy → registry lookup → the error above | drop it (or `--pull never`) |
| any of these on an **older Compose** (pre ~v2.24) | those releases treated a failed pull as fatal even when `build:` was present | `docker compose build` first, or update Docker Desktop |
| `./extract-data.sh`, `extract-data.bat` | they run the extractors *inside* the image; the launchers now check the local cache first and offer to build | — |
| `docker run trinitycore-3.4.3:local …` | blind pull → the error | `docker compose run --rm --no-deps bnetserver …` |

The `pull_policy: never` lines themselves need Compose ≥ v2.17 (Jan 2023) — on
anything older `docker compose config` rejects the file; upgrade, or delete the
three `pull_policy:` lines and get used to running `docker compose build`
before `up`. (`docker-compose` v1 never had the key at all — same remedy.)

Two details that turn into “but I *did* build it!”: the **tag** has to match
(`docker build -t trinitycore-3.4.3 .` without `:local` builds a tag the stack
never looks at), and an image built in a *different* context (WSL vs. Docker
Desktop, or a remote `DOCKER_HOST`) is not in this engine at all —
`docker images | grep trinitycore` is the tiebreaker. `./doctor.sh` checks all
of it, including the launcher/`.env` combination.

To run a real registry image instead (the daily GHCR build) set **both**
`SERVER_IMAGE=ghcr.io/<you>/<repo>:latest` and `SERVER_PULL_POLICY=always`, and
make the package public — see [Auto-rebuild](#auto-rebuild-poll-upstream-every-15-minutes).

---

**Bring your own databases:** drop one or more dumps into `import/world/`
(`/opt/tc/import/world` in the container) — they are imported on next boot
(filenames containing `hotfix`/`auth`/`character` are routed to the right
database, everything else goes to `world`). Set `AUTO_DOWNLOAD_DB=false`
to skip the automatic download entirely.

**Ports:** `1119` (battle.net logon protocol), `8081` (login REST), `8085` (world).

---

## Files on your PC (all four folders are bind-mounted)

Everything you ever need to touch lives in the repo folder as an ordinary
directory — no `docker cp`, no editing inside a container. Docker creates all
four on first `up`.

| On your PC | In the container | What goes there |
|---|---|---|
| `./data` | `/opt/tc/data` | Client data: `dbc/`, `maps/`, `vmaps/`, `mmaps/`, `gt/`, `cameras/` (from `./extract-data.sh`, or `./place-data.sh` for data you already have) |
| `./etc` | `/opt/tc/conf` | **`worldserver.conf` and `bnetserver.conf` — yours to edit** |
| `./logs` | `/opt/tc/logs` | Server log files (`Worldserver.log`, `Bnet.log`, …) |
| `./import/world` | `/opt/tc/import/world` | Your own `*.sql` dumps, imported on the next boot |

MySQL itself is a named volume (`mysql-data`), not a folder — dump it with
`docker compose exec mysql mysqldump -uroot -p"$MYSQL_ROOT_PASSWORD" --all-databases`
if you want a backup.

### Editing the server configs

`./etc/worldserver.conf` and `./etc/bnetserver.conf` are seeded from the
upstream `.conf.dist` templates on **first run only**. After that the file is
yours:

```bash
docker compose up -d            # first run seeds ./etc/*.conf
nano etc/worldserver.conf       # change anything you like
docker compose restart worldserver
```

* **Preserved across restarts:** every setting you edit — motd, rates,
  `Logger.*`, `MaxPingTime`, `GameType`, anything.
* **Re-applied on every boot:** only the four `*DatabaseInfo` lines
  (`Login`/`World`/`Character`/`Hotfix`), because they are built from the
  `MYSQL_*` variables in `.env`. Change the password in `.env` and the conf
  follows automatically — don't hand-edit those lines.
* **Reset to defaults:** delete the file and restart; it is re-seeded from the
  template.
* The pristine, fully commented templates stay inside the image at
  `/opt/tc/etc/*.conf.dist` (`docker compose exec worldserver cat
  /opt/tc/etc/worldserver.conf.dist`) — that is why the confs live in
  `/opt/tc/conf` and not `/opt/tc/etc`: mounting over `/opt/tc/etc` would hide
  the templates.

> **Linux note:** the containers run as root, so files the server writes into
> `./data` and `./logs` are root-owned — `sudo chown -R $USER ./data ./logs`
> once if that bothers you. `./etc` is deliberately made world-writable
> (directory *and* seeded files), because editors and `sed -i` save by
> renaming a temp file and need write access on the directory itself — without
> it you could not edit the confs without `sudo`.

> **Tip:** the core supports config overrides via environment variables — any
> `worldserver.conf` field can be set with a `TC_`-prefixed variable whose name is
> the field in **UPPER_SNAKE_CASE** (`.` → `_`, camelCase split), e.g.
> `Updates.EnableDatabases` → `TC_UPDATES_ENABLE_DATABASES`, `Logger.root` →
> `TC_LOGGER_ROOT`. Add it to the compose `environment:` section to tweak without
> touching confs. (Plain `TC_Updates.EnableDatabases` is *not* read.)

**Building a fork instead:** the Dockerfile takes `SOURCE_REPO`,
`SOURCE_BRANCH` and `SOURCE_SHA` build-args — point them at your own fork
and the workflow builds that instead.

## Troubleshooting

| Symptom | Fix |
|---|---|
| worldserver logs `client data is missing or empty in ./data` | expected until step 3 is done — run `./extract-data.sh` (or `extract-data.bat`) with your 3.4.3 client, then `docker compose restart worldserver` (or just wait: it re-checks every 60 s) |
| Data is extracted but worldserver still says it's missing | it isn't in the right place — the five required folders must sit directly in `./data` (`./data/maps`, not `./data/data/maps`); see [step 4](#4-the-data-goes-in-data) |
| I already have extracted data, just need to put it in the stack | `./place-data.sh /path/to/extracted` (Windows: drag the folder onto `place-data.bat`) — places `dbc maps vmaps mmaps gt cameras` into `./data`, replaces stale ones, verifies the required folders, then `docker compose restart worldserver` |
| worldserver logs `Waiting for import files` | world DB is empty — either let the DB bundle download (`AUTO_DOWNLOAD_DB=true`) or drop dumps into `./import/world/` |
| `Some required *.txt GameTable files not found` | `./data/gt` is missing — re-run the extractor |
| No `extract-data.sh` / `tools/` in the repo folder | the `extractors` service didn't run — `docker compose up -d extractors` and check `docker compose logs extractors` |
| `Unable to load map and vmap data for starting zones` | `./data/maps` or `./data/vmaps` is incomplete — re-run the extractor (a bare `vmap4assembler .` produces empty vmaps) |
| First worldserver boot takes very long | normal — full world DB import, one time (10–30 min) |
| DB connection errors | MySQL still starting (healthcheck gates startup) or wrong `MYSQL_ROOT_PASSWORD` after first boot — delete the `mysql-data` volume to reset |
| **`pull access denied for trinitycore-3.4.3, repository does not exist or may require 'docker login'`** | the image just isn't built in this Docker engine — `trinitycore-3.4.3:local` is a local name, no registry has it. Run `docker compose build` (or let `up -d` do it); `docker login` and `docker compose pull` cannot help. `./doctor.sh` says which case you are in · [details](#why-the-server-image-is-built-not-pulled) |
| `docker compose pull` fails, or warns *“Some service image(s) must be built from source”* | expected: the server image is built here, not published — `docker compose build` |
| You switched `SERVER_IMAGE` to GHCR and now it builds instead of pulling | `pull_policy` defaults to `never` → also set `SERVER_PULL_POLICY=always` in `.env` |
| GHCR pull denied / `manifest unknown` / `NAME_UNKNOWN` | the package is private (GHCR's default) → make it public, or `docker login ghcr.io` first |
| `error while loading shared libraries: libmysqlclient.so.21` | you are on an image built before the runtime `libmysqlclient21` dependency was added — rebuild (`docker compose build --pull`) |
| Want to attach consoles | `docker attach wow343-worldserver-1` (Ctrl-P Ctrl-Q to detach; bnetserver has no console) |

## Credits & license

* Source code: [xHashii/3.4.3_Source](https://github.com/xHashii/3.4.3_Source)
  → fork of [lineagedr/3.4.3_Source](https://github.com/lineagedr/3.4.3_Source)
  → [TrinityCore](https://github.com/TrinityCore/TrinityCore) `wotlk_classic`
  (GPL-2.0 — the image therefore ships GPL-2.0 software; these packaging
  files are provided as-is).
* Databases: official
  [`Databases.7z` release](https://github.com/lineagedr/3.4.3_Source/releases/tag/databases)
  by the upstream author.
