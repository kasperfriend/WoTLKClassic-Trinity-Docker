# TrinityCore 3.4.3 (WotLK Classic) — Docker + Auto-Rebuild

[![poll-and-build](https://github.com/kasperfriend/WoTLKClassic-Trinity-Docker/actions/workflows/poll-and-build.yml/badge.svg)](https://github.com/kasperfriend/WoTLKClassic-Trinity-Docker/actions/workflows/poll-and-build.yml)

A self-rebuilding Docker distribution of the
**[xHashii/3.4.3_Source](https://github.com/xHashii/3.4.3_Source)** World of
Warcraft 3.4.3 (WotLK Classic) server (TrinityCore-based).

**`git clone` → `docker compose up -d`.** That is the whole install: the image
is a **public** GHCR package, so there is no `docker login`, no
Visual Studio/Boost/CMake and no 45-minute compile between you and a running
server.

* **Runs prebuilt, or builds itself** — `docker compose up -d` pulls
  `ghcr.io/kasperfriend/wotlkclassic-trinity-docker:latest`; only when that
  pull *can't* happen does Compose compile `worldserver`, `bnetserver` and the
  map/vmap/mmap extractors from the upstream source in this Dockerfile. Both
  paths produce the same image.
* **Rebuilds itself** via GitHub Actions: polls upstream every 15 minutes and
  builds + publishes to GHCR only when there is a commit it hasn't built yet.
  Every run also verifies the image is still anonymously pullable, so the
  "no login" promise cannot rot silently.
* **Runs the whole stack** with one command: MySQL 8 + logon server +
  world server, with databases created and populated automatically.

---

## The whole workflow

```
1. git clone                    →  get this repo
2. docker compose up -d         →  ONE command: pulls the public prebuilt
                                   image, starts, creates the DBs, downloads
                                   the world DB, drops the extractors into
                                   this folder — no login, no compiling
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

* Docker 24+ with the `docker compose` **v2** plugin
  (`docker compose version` ≥ 2.17 — that is when `pull_policy` arrived; the
  one set here is what keeps a pinned local name from probing Docker Hub)
* ~10 GB disk for the image, +25 GB while extracting a client
* **No compiler toolchain, no registry login, no account at all.** You only
  need to build the image yourself if you opt into it — see
  [Which image you run](#which-image-you-run-and-why-no-login-is-ever-needed)
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
> MySQL password, the realm name/address, or to switch between the public CI
> image and compiling it yourself. **The defaults work as-is** — including the
> image, which is pulled from the public GHCR package — so you can skip this
> file entirely and come back to it later
> (see [Configuration](#configuration-reference)).

### 2. Run `docker compose up -d` — once

```bash
docker compose up -d
docker compose logs -f worldserver     # watch the first boot
```

This one command does everything up to the point where the server needs your
client data:

1. **Gets the image**: pulls the public
   `ghcr.io/kasperfriend/wotlkclassic-trinity-docker:latest` — a few minutes,
   no `docker login`, no compiler. It is only pulled when it isn't cached yet,
   and if the pull can't happen (offline, registry down, or `SERVER_IMAGE`
   pinned to a local name) Compose compiles it from this Dockerfile instead
   (~25–45 min on a typical 4-core machine; `SERVERS=ON`, `TOOLS=ON`).
2. **Starts the stack** — MySQL 8 + `bnetserver` + `worldserver`.
3. **Creates the databases** `auth`, `characters`, `world`, `hotfixes`
   (utf8mb4) and imports the base schemas shipped in the source.
4. **Fetches the world database.** The source repo doesn't ship one, so the
   entrypoint downloads the **official full dumps for the revision in the
   image** (`world_full_2026_08_10.sql` + `hotfixes_full_2026_08_10.sql`,
   ~300 MB from the author's `DB.2608` release) and imports the full `world`
   and `hotfixes` content — 10–20 min, one time only. The `auth`/`characters`
   base schemas ship inside the source tree. Afterwards the core's built-in
   auto-updater applies `sql/updates/*` on every start; the entrypoint also
   seeds the `world`/`hotfixes` `updates_include` rows so that always happens
   on a fresh image, not only when the dump happened to carry them, and
   inserts the `auth.build_info` row the 3.4.3 client needs.
5. **Registers the realm** in `auth.realmlist` and starts both servers.
6. **Drops the extractors into this folder** — `extract-data.sh`,
   `extract-data.bat` and `tools/` — so step 3 needs no further Docker work.
7. **Seeds `./etc/worldserver.conf` and `./etc/bnetserver.conf`**, which are
   then yours to edit.

Then worldserver prints *"client data is missing or empty in ./data"* and
**waits, re-checking every 60 s.** That's expected: leave the stack running
and go to step 3. `bnetserver` is already up, so you can create accounts in
the meantime.

> **Rather compile it yourself** (own fork of the core, own source commit,
> air-gapped host)? Put **both** lines in `.env` — the pair is what matters, see
> [Which image you run](#which-image-you-run-and-why-no-login-is-ever-needed):
> ```ini
> SERVER_IMAGE=trinitycore-3.4.3:local
> SERVER_PULL_POLICY=never
> ```
> `up -d` then builds from this Dockerfile and never asks a registry. Without
> the second line it would look the name up on Docker Hub and print:
>
> #### `pull access denied for trinitycore-3.4.3, repository does not exist or may require 'docker login'`
>
> **Not** a login problem. A plain name like `trinitycore-3.4.3:local` is
> *local-only*: it exists only after this repo builds it, so every command that
> resolves it through a registry answers exactly this sentence. Two ways out —
> take the default (recommended), or make the local build deliberate:
>
> ```bash
> # a) drop the overrides and pull the public prebuilt image  (fast)
> sed -i.bak '/^SERVER_\(IMAGE\|PULL_POLICY\)=/d' .env && docker compose up -d
>
> # b) keep compiling here, once (25-45 min)
> echo 'SERVER_PULL_POLICY=never' >> .env && docker compose up -d
> ```
>
> [`./doctor.sh`](#troubleshooting) tells you which case you are in — including
> whether the registry would even answer an anonymous pull — and
> [Which image you run](#which-image-you-run-and-why-no-login-is-ever-needed)
> lists every command that can trigger it.

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

* **Use the matching 64-bit 3.4.3.54261 client.** A current retail/Classic
  client is a different build and cannot connect. Use the compatible client
  linked by the [upstream source README](https://github.com/xHashii/3.4.3_Source#readme)
  and start it with the launcher/executable supplied for that client; a stock
  Battle.net-launched executable may ignore private login endpoints. With an
  Arctium-compatible launcher on localhost, use:

  ```powershell
  & ".\Arctium WoW Launcher.exe" --version Classic --dev
  ```

  Do **not** add `--staticseed` for this image. The 54261 auth row contains the
  client's normal `25FD…` seed; Arctium's standard static-seed patch uses a
  different `179D…` value and authentication then ends in `BLZ51900003`.
  `--dev` is for loopback/private-LAN testing, where the bundled development
  TLS certificate is expected; do not use it for an Internet-facing portal.
* In the client, edit **`WTF/Config.wtf`** and set:

  ```text
  SET portal "127.0.0.1"
  ```

  Then log in with `myuser@local` / `mypass`. WotLK **Classic** does not use
  `realmlist.wtf`; that file is for the old 3.3.5 client and changing it has no
  effect here. Do not put `http://` or a port in `portal`.
* For a client on another LAN computer, set `REALM_ADDRESS` in `.env` **and**
  the client's `portal` to the Docker host's LAN IP, then recreate the servers:

  ```bash
  docker compose up -d --force-recreate bnetserver worldserver
  ```

  `REALM_ADDRESS` now updates the realm address and both bnet REST/SRP callback
  addresses. Older images left the latter at `127.0.0.1`, causing remote
  clients to call themselves during login.

**Quick login-path check:** this must print the same host/IP as the client's
`portal`, followed by `:1119`:

```bash
docker compose exec bnetserver \
  curl -fksS https://127.0.0.1:8081/bnetserver/portal/
# default output: 127.0.0.1:1119
```

If no client is open, repeated `[127.0.0.1:random-port] SSL Handshake failed
stream truncated` lines are from an older image's active health probe, not a
failed login. Refresh and recreate that container:

```bash
docker compose pull
docker compose up -d --force-recreate bnetserver worldserver
```

### Day-to-day afterwards

```bash
docker compose up -d          # start (seconds — no re-import, no re-extract)
docker compose pull           # optional: refresh to the newest CI build
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
4. **Make the image pullable — mandatory if anyone but you should pull it.**
   GHCR packages are **private by default**, so a fresh `docker pull` fails
   with `denied`/`manifest unknown` until you go to your repo's **Packages**
   section → the package → *Change visibility → Public*. GitHub offers no API
   for that switch, so it is a one-time click; **this repo's package is already
   Public**, which is exactly what lets a stranger `up -d` without logging in,
   and the `Verify anonymous pull` step in the workflow re-tests it on every
   run (green badge = still pullable; a warning annotation = it flipped back to
   private and fresh clones can no longer pull it). Keeping it private instead
   means every host has to `docker login ghcr.io`.
5. Want your own builds served to your users? Put your path in
   **`.env.example`** (so every clone of your fork inherits it):
   ```ini
   SERVER_IMAGE=ghcr.io/<your-user>/<your-repo>:latest
   ```
   `SERVER_PULL_POLICY=missing` is already the default, so nothing else is
   required — add `always` only if every `up` should re-check the registry.
   Skip this entirely if you're happy shipping upstream's image: a fork pulls
   it and works without any package of its own.

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
| `SERVER_IMAGE` | `ghcr.io/kasperfriend/wotlkclassic-trinity-docker:latest` | the public prebuilt image the stack runs; set it to a local name (e.g. `trinitycore-3.4.3:local`) to compile here instead |
| `SERVER_PULL_POLICY` | `missing` | `missing` = use the cached image, pull when it isn't there. `never` = never touch a registry (**required** with a local-only `SERVER_IMAGE`, and the pairing that prevents `pull access denied for trinitycore-3.4.3`); `always` = pull on every `up` |
| `AUTO_DOWNLOAD_DB` | `true` | download the official DB bundle when `world` is empty |
| `WORLD_DB_URL` / `HOTFIXES_DB_URL` | `xHashii/WyrmrestCore` `DB.2608` (`world_full_2026_08_10.sql`, `hotfixes_full_2026_08_10.sql`) | full `world`/`hotfixes` dumps downloaded on first boot (the entrypoint defaults) |
| `DB_URL` | empty | legacy one-file `.7z` database bundle; set it to the old `lineagedr` `databases` release only if you want that fallback instead of the current dumps |
| `SOURCE_REPO` / `SOURCE_BRANCH` / `SOURCE_SHA` | `xHashii/3.4.3_Source` `main` | what the image is compiled from — set these if upstream ever moves |
| `REALM_NAME` | `TrinityCore 3.4.3` | realm name in the client realm list |
| `REALM_ADDRESS` | `127.0.0.1` | bare host/IP advertised in `auth.realmlist` **and** by bnet's REST/SRP flow; use the Docker host's LAN/public address for clients on other machines |
| `REALM_LOCAL_ADDRESS` | `REALM_ADDRESS` | advanced override for `auth.realmlist.localAddress`; normally leave unset under Docker NAT |
| `LOGIN_REST_EXTERNAL_ADDRESS` / `LOGIN_REST_LOCAL_ADDRESS` | `REALM_ADDRESS` / `REALM_LOCAL_ADDRESS` | advanced bnet callback overrides; normally leave unset under Docker NAT |
| `TZ` | `Europe/Kiev` | container timezone |

Everything has a working default, which is why step 2 runs without an `.env`
at all. `cp .env.example .env`, edit, then `docker compose up -d` to apply.

### Which image you run (and why no login is ever needed)

Three lines in `docker-compose.yml` decide everything:

```yaml
image: ${SERVER_IMAGE:-ghcr.io/kasperfriend/wotlkclassic-trinity-docker:latest}
build: *tcbuild                                   # the fallback: compile it here
pull_policy: ${SERVER_PULL_POLICY:-missing}       # pull only when not cached
```

* **Default, nothing configured:** `up -d` pulls the **public** CI image once,
  then starts. No `docker login`, no PAT, no account — a public GHCR package
  answers anonymous pulls, and the workflow's *Verify anonymous pull* step
  raises a warning annotation on every run the moment that stops being true.
* **`build:` stays on purpose:** when the pull *can't* happen (offline,
  registry hiccup, private package, or `SERVER_IMAGE` pinned to a local name),
  Compose compiles the same image from this Dockerfile instead. Slower, but
  never stuck — and `./doctor.sh` says which of the two you are about to get.
* **Cached is cached:** with `missing`, `up` reuses the local image and does
  *not* re-check the registry. To pick up the newest CI build:
  `docker compose pull` (or `docker compose up -d --pull always`).

A name **without a registry host** — `trinitycore-3.4.3:local` — is different:
the daemon reads it as `docker.io/library/trinitycore-3.4.3`, which exists
nowhere, so combining such a name with a policy that allows pulling is the one
way to reproduce

```
Error response from daemon: pull access denied for trinitycore-3.4.3,
repository does not exist or may require 'docker login'
```

which means **“not built in this engine”**, never “wrong password”.

| You ran | What happens | Do this |
|---|---|---|
| `docker compose up -d` | pulls the public image, or compiles it when the pull can't happen | nothing — this is the flow |
| `docker compose pull` | refreshes `mysql:8.0` **and** the server image from GHCR | nothing — this *is* the update command |
| `up -d` with `SERVER_IMAGE=trinitycore-3.4.3:local` and a pulling policy | Docker Hub lookup for a name only this repo can build → the error above (fatal on Compose ≲ v2.24, otherwise a warning + a local build) | add `SERVER_PULL_POLICY=never`, or delete both lines and pull the CI image |
| `docker compose up --pull always` | forces the registry check — fine for a GHCR name, an error for a local one | `--pull missing`, or drop it |
| `./extract-data.sh`, `extract-data.bat` | run the extractors *inside* the image; they check the local cache, pull registry names, and otherwise offer to build | — |
| `docker run trinitycore-3.4.3:local …` | blind pull → the error | `docker compose run --rm --no-deps bnetserver …` |

`pull_policy` needs Compose ≥ v2.17 (Jan 2023) and does not exist in
`docker-compose` v1 — `./doctor.sh` detects both by letting *your* Compose parse
the file, and tells you to run `docker compose build` first if it can't read it.

Denial even though you never touched `.env`? Then it's the tag or the engine:
`docker build -t trinitycore-3.4.3 .` (no `:local`) builds a tag the stack never
looks at, and an image built inside WSL is not in Docker Desktop's engine.
`docker images \| grep -E 'trinitycore\|wotlk'` settles it — or run
`./doctor.sh`, which also probes whether the registry would answer an anonymous
pull of your configured image (200 public · 401/403 private · 404 wrong name).

**Forks:** your own workflow pushes `ghcr.io/<you>/<fork-lowercased>`, and a
brand-new package starts out **private** — GitHub has no API for that, so flip
it in the UI (Packages → the package → *Change visibility* → Public), then put
your path in `SERVER_IMAGE`. Until you do, a fork still works out of the box: it
pulls this repo's public image. See
[Auto-rebuild](#auto-rebuild-poll-upstream-every-15-minutes).

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
* **Re-applied on every boot:** the four `*DatabaseInfo` lines
  (`Login`/`World`/`Character`/`Hotfix`), because they are built from the
  `MYSQL_*` variables in `.env`; bnet's `LoginREST.ExternalAddress` and
  `LoginREST.LocalAddress`, because they follow `REALM_ADDRESS` (or the
  dedicated `LOGIN_REST_*` overrides); plus the container path defaults
  (`DataDir`/`LogsDir`/`SourceDirectory`, or the bnet TLS cert paths) **when
  they still have stock defaults**. This repairs confs left behind by an older
  image without touching unrelated settings. Change managed values in `.env`,
  not directly in these lines.
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
| worldserver logs `Waiting for import files` | world/hotfixes DB are empty — either let the full DB dumps download (`AUTO_DOWNLOAD_DB=true`) or drop dumps into `./import/world/` |
| worldserver initialises fully, then exits/restarts on an assertion | usually a stale world/hotfixes DB from an older source revision or from the legacy `Databases.7z`. Use the updated image, then run `docker compose down && docker volume rm wow343_mysql-data` once to re-import with the current dumps (`AUTO_DOWNLOAD_DB=true`). The entrypoint also seeds `updates_include`, so on subsequent boots the built-in `sql/updates` runner keeps the DB aligned with the core |
| bnetserver logs `[127.0.0.1:…] SSL Handshake failed stream truncated` every ~30 s even with no client | it is an old image's Docker healthcheck opening/closing port 1119. It does **not** describe a failed player login. Pull and recreate: `docker compose pull && docker compose up -d --force-recreate bnetserver`; the current healthcheck reads `/proc/net/tcp` and never connects to TLS |
| Client cannot log in, but both servers are running | use the **64-bit 3.4.3.54261** client; set `SET portal "127.0.0.1"` in `WTF/Config.wtf` (not `realmlist.wtf`); create an e-mail-style account with `bnetaccount create`; then check `docker compose logs --since=2m bnetserver`. Also refresh an older install with `docker compose pull && docker compose up -d --force-recreate` |
| Client reports `BLZ51900003` when using Arctium locally | launch with `--version Classic --dev` and **remove `--staticseed`**. The image registers build 54261's normal `25FD…` auth seed, while the common static-seed launcher patch sends a different `179D…` seed. `--dev` handles the bundled development TLS certificate on localhost |
| Login works on the Docker host but not from another PC | set `.env` `REALM_ADDRESS=<Docker host LAN IP>` and set the client's `WTF/Config.wtf` portal to the same bare IP, then `docker compose up -d --force-recreate bnetserver worldserver`. Forward TCP 1119, 8081, 8085 and 8086 for internet clients |
| Client receives a version/realm-not-permitted error | only build **54261** is supported. The entrypoint now repairs both `auth.build_info` and an older `auth.realmlist.gamebuild`; pull/recreate both server containers |
| `Some required *.txt GameTable files not found` | `./data/gt` is missing — re-run the extractor |
| No `extract-data.sh` / `tools/` in the repo folder | the `extractors` service didn't run — `docker compose up -d extractors` and check `docker compose logs extractors` |
| `Unable to load map and vmap data for starting zones` | `./data/maps` or `./data/vmaps` is incomplete — re-run the extractor (a bare `vmap4assembler .` produces empty vmaps) |
| First worldserver boot takes very long | normal — full world DB import, one time (10–30 min) |
| DB connection errors | MySQL still starting (healthcheck gates startup) or wrong `MYSQL_ROOT_PASSWORD` after first boot — delete the `mysql-data` volume to reset |
| **`pull access denied for trinitycore-3.4.3, repository does not exist or may require 'docker login'`** | an old `.env` pins `SERVER_IMAGE=trinitycore-3.4.3:local`, a name no registry serves: delete the `SERVER_IMAGE`/`SERVER_PULL_POLICY` lines to pull the public CI image, or add `SERVER_PULL_POLICY=never` to build it here. `docker login` cannot help · [details](#which-image-you-run-and-why-no-login-is-ever-needed) |
| `denied` / `manifest unknown` / `not authorized` on **`ghcr.io/…`** | the image name is fine but the package is private (true for a fork's first builds) → owner flips it to Public in the UI, or the host runs `docker login ghcr.io`; `./doctor.sh` probes it anonymously for you |
| First `up -d` is compiling instead of pulling | your `.env` overrides `SERVER_IMAGE`, or the registry is unreachable — `./doctor.sh` says which; `docker compose build` is the deliberate version of it |
| `docker compose pull` warns *“Some service image(s) must be built from source”* | only with a local-only `SERVER_IMAGE`: that tag can't be pulled, it is built — pair it with `SERVER_PULL_POLICY=never` or drop the override |
| A GHCR `SERVER_IMAGE` builds instead of pulling | `SERVER_PULL_POLICY=never` left over in `.env` → set it to `missing` (or delete the line) |
| GHCR pull denied / `manifest unknown` / `NAME_UNKNOWN` | the package is private (GHCR's default) → make it public, or `docker login ghcr.io` first |
| `error while loading shared libraries: libmysqlclient.so.21` | you are on an image built before the runtime `libmysqlclient21` dependency was added — rebuild (`docker compose build --pull`) |
| Want to attach consoles | `docker attach wow343-worldserver-1` (Ctrl-P Ctrl-Q to detach; bnetserver has no console) |

## Credits & license

* Source code: [xHashii/3.4.3_Source](https://github.com/xHashii/3.4.3_Source)
  → fork of [lineagedr/3.4.3_Source](https://github.com/lineagedr/3.4.3_Source)
  → [TrinityCore](https://github.com/TrinityCore/TrinityCore) `wotlk_classic`
  (GPL-2.0 — the image therefore ships GPL-2.0 software; these packaging
  files are provided as-is).
* Databases: official `DB.2608` full dumps
  (`world_full_2026_08_10.sql`, `hotfixes_full_2026_08_10.sql`) published by the
  upstream author; the legacy `lineagedr` `databases` `.7z` bundle remains
  available as the `DB_URL` fallback.
