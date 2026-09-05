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

## Repository layout

```
WoTLKClassic-Trinity-Docker/
├── Dockerfile                        # multi-stage: clone upstream → compile → slim runtime
├── docker-compose.yml                # mysql + bnetserver + worldserver stack
├── .env.example                      # copy to .env and edit
├── .github/workflows/poll-and-build.yml # polls upstream, builds only on new commits
├── runtime/
│   ├── entrypoint.sh                 # DB wait → create DBs → import → render conf → start
│   └── healthcheck.sh                # container health (process + port)
└── helpers/
    └── extract-data.sh               # run extractor tools against your 3.4.3 client
```

## Requirements

* Docker 24+ with BuildKit and the `docker compose` v2 plugin
* ~10 GB disk for the image, +15–25 GB if you extract a client
* The WoW 3.4.3 (WotLK Classic) client if you want a playable world —
  link is in the [upstream README](https://github.com/xHashii/3.4.3_Source#readme)

---

## Quick start

### 1. Get the image

Either **build it locally right now** (the default — nothing else to do):

```bash
docker build -t trinitycore-3.4.3:local .
```

…or **pull the CI-built image** from your GHCR once the workflow has run
(see [Auto-rebuild](#auto-rebuild-poll-upstream-every-15-minutes) — the package
has to be made **public** first, or the host pulling it must
`docker login ghcr.io`):

```bash
docker pull ghcr.io/<your-github-username>/<your-repo>:latest
```

> Build takes ~25–45 min on a typical 4-core machine. `SERVERS=ON`,
> `TOOLS=ON`, Release.

### 2. Configure

```bash
cp .env.example .env
# edit MYSQL_ROOT_PASSWORD (and SERVER_IMAGE only if you use the GHCR image)
```

`SERVER_IMAGE` defaults to `trinitycore-3.4.3:local`, so `docker compose up`
builds from this repo and needs no registry access.

### 3. Start the stack

```bash
docker compose up -d
docker compose logs -f worldserver    # watch first boot
```

**First boot does everything for you:**

1. Waits for MySQL, creates `auth`, `characters`, `world`, `hotfixes`
   databases (utf8mb4).
2. Imports the base schemas shipped in the source
   (`sql/base/auth_database.sql`, `characters_database.sql`,
   `hotfixes_database.sql`).
3. The source repo **does not ship a world database**, so the entrypoint
   downloads the **official database bundle** for this source
   (`Databases.7z`, ~48 MB, published by the upstream author) and imports
   the full `world`, `hotfixes`, `auth` and `characters` dumps
   (10–20 min import, one time only). Afterwards the core's built-in
   auto-updater applies `sql/updates/*` on every start.
4. Registers/updates the realm in `auth.realmlist` and starts both servers.

Later boots take seconds.

### 4. Extract client data (dbc / maps / vmaps / mmaps)

The world DB alone isn't enough — worldserver also needs data extracted
**from the 3.4.3 client**. Put your client anywhere on disk and run:

```bash
./helpers/extract-data.sh /path/to/3.4.3/client
docker compose restart worldserver
```

The script runs `mapextractor`, `vmap4extractor`, `vmap4assembler` and
`mmaps_generator` inside the image (you can also run them by hand with
`docker run --rm -it --entrypoint bash <image>`), then moves `dbc/`,
`maps/`, `vmaps/`, `mmaps/` into `./data/`, which is mounted into both
servers at `/opt/tc/data`.

### 5. Create an account & log in

```bash
docker attach wow343-bnetserver-1     # attach to the logon server console
account create myuser mypass
# detach with Ctrl-P Ctrl-Q
```

* Client: edit the client's `realmlist.wtf` → `set realmlist 127.0.0.1`
  (the client talks to the logon server on port 1119) and log in with
  `myuser` / `mypass`.
* For friends on your LAN set `REALM_ADDRESS` in `.env` to your LAN IP.

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
5. Put `ghcr.io/<your-user>/<your-repo>:latest` into `SERVER_IMAGE` in
   your `.env` and `docker compose up -d` uses the CI-built image instead of
   building locally.

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
| `AUTO_DOWNLOAD_DB` | `true` | download the official DB bundle when `world` is empty |
| `REALM_NAME` | `TrinityCore 3.4.3` | realm name in the client realm list |
| `REALM_ADDRESS` | `127.0.0.1` | realm address clients connect to |
| `TZ` | `Europe/Kiev` | container timezone |

**Bring your own databases:** drop one or more dumps into `import/world/`
(`/opt/tc/import/world` in the container) — they are imported on next boot
(filenames containing `hotfix`/`auth`/`character` are routed to the right
database, everything else goes to `world`). Set `AUTO_DOWNLOAD_DB=false`
to skip the automatic download entirely.

**Ports:** `1119` (battle.net logon protocol), `8081` (login REST), `8085` (world) ·
**Volumes:** `./data` → `/opt/tc/data`, `./logs` → `/opt/tc/logs`,
`./import` → `/opt/tc/import`, named volume `mysql-data`.

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
| worldserver logs `Waiting for import files` | world DB is empty — either let the DB bundle download (`AUTO_DOWNLOAD_DB=true`) or drop dumps into `./import/world/` |
| `Missing maps/dbc/vmaps` on worldserver start | run `helpers/extract-data.sh` with your 3.4.3 client |
| First worldserver boot takes very long | normal — full world DB import, one time (10–30 min) |
| DB connection errors | MySQL still starting (healthcheck gates startup) or wrong `MYSQL_ROOT_PASSWORD` after first boot — delete the `mysql-data` volume to reset |
| GHCR pull denied / `manifest unknown` / `NAME_UNKNOWN` | the package is private (GHCR's default) → make it public, or `docker login ghcr.io` first |
| `error while loading shared libraries: libmysqlclient.so.21` | you are on an image built before the runtime `libmysqlclient21` dependency was added — rebuild (`docker compose build --pull`) |
| Want to attach consoles | `docker attach wow343-worldserver-1` / `wow343-bnetserver-1` (Ctrl-P Ctrl-Q to detach) |

## Credits & license

* Source code: [xHashii/3.4.3_Source](https://github.com/xHashii/3.4.3_Source)
  → fork of [lineagedr/3.4.3_Source](https://github.com/lineagedr/3.4.3_Source)
  → [TrinityCore](https://github.com/TrinityCore/TrinityCore) `wotlk_classic`
  (GPL-2.0 — the image therefore ships GPL-2.0 software; these packaging
  files are provided as-is).
* Databases: official
  [`Databases.7z` release](https://github.com/lineagedr/3.4.3_Source/releases/tag/databases)
  by the upstream author.
