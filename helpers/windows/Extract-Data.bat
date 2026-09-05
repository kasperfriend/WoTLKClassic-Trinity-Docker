@echo off
setlocal enabledelayedexpansion
title WoW 3.4.3 - Extract client data

rem ==========================================================================
rem  Extracts dbc / maps / vmaps / mmaps / gt / cameras from a WoW 3.4.3
rem  (WotLK Classic) client, for a TrinityCore 3.4.3 server.
rem
rem  Put this file (and the four .exe files next to it) into your CLIENT
rem  folder - the one that contains Wow.exe - and double-click it.
rem ==========================================================================

echo(
echo  ===============================================================
echo   WoW 3.4.3 client data extractor
echo  ===============================================================
echo(

rem --- Are we actually in a client folder? -----------------------------------
if not exist "Data" (
  echo  ERROR: no "Data" folder here.
  echo(
  echo  Put this file - together with the four .exe files - into your
  echo  World of Warcraft 3.4.3 folder, the one that contains Wow.exe,
  echo  and run it from there.
  echo(
  echo  Current folder: %CD%
  goto :fail
)

rem --- Are the tools next to us? ---------------------------------------------
for %%T in (mapextractor.exe vmap4extractor.exe vmap4assembler.exe mmaps_generator.exe) do (
  if not exist "%%~T" (
    echo  ERROR: %%~T is missing from this folder.
    echo  Extract the whole zip here, not just this .bat file.
    goto :fail
  )
)

rem --- Disk space warning ----------------------------------------------------
echo  This will take a LONG time - typically 1 to 4 hours, almost all of it
echo  in the last step - and needs about 25 GB of free disk space.
echo  You can stop at any time with Ctrl+C and re-run this file later.
echo(
choice /C YN /M "Start extraction now"
if errorlevel 2 goto :cancelled
echo(

rem ==========================================================================
rem  1/4  dbc + maps + cameras + gt
rem ==========================================================================
echo  [1/4] mapextractor  (dbc, maps, cameras, gt)
echo  ---------------------------------------------------------------
mapextractor.exe
if errorlevel 1 goto :toolfail
echo(

rem ==========================================================================
rem  2/4  raw model data -> .\Buildings
rem
rem  vmap4extractor refuses to run if .\Buildings already contains dir/dir_bin
rem  from an earlier (possibly interrupted) run, so clear it first.
rem ==========================================================================
echo  [2/4] vmap4extractor  (raw model data)
echo  ---------------------------------------------------------------
if exist "Buildings" rd /s /q "Buildings"
vmap4extractor.exe
if errorlevel 1 goto :toolfail
echo(

rem ==========================================================================
rem  3/4  Buildings -> vmaps
rem
rem  Arguments are <raw data dir> <vmap dest dir>. vmap4extractor writes to
rem  .\Buildings, so that is the source - passing "." here silently produces
rem  no vmaps at all.
rem ==========================================================================
echo  [3/4] vmap4assembler  (Buildings -^> vmaps)
echo  ---------------------------------------------------------------
if exist "vmaps" rd /s /q "vmaps"
vmap4assembler.exe Buildings vmaps
if errorlevel 1 goto :toolfail
echo(

rem ==========================================================================
rem  4/4  mmaps  (the slow one - reads .\maps and .\vmaps from the cwd)
rem ==========================================================================
echo  [4/4] mmaps_generator  (movement maps - this is the slow step)
echo  ---------------------------------------------------------------
mmaps_generator.exe
if errorlevel 1 goto :toolfail
echo(

rem --- Clean up the ~10 GB intermediate --------------------------------------
if exist "Buildings" rd /s /q "Buildings"

rem --- Verify everything we need exists --------------------------------------
set "MISSING="
for %%D in (dbc maps vmaps mmaps gt) do (
  if not exist "%%~D" set "MISSING=!MISSING! %%~D"
)
if defined MISSING (
  echo  WARNING: these required folders were not produced:!MISSING!
  echo  The server will not start without them. Scroll up for errors.
  goto :fail
)

echo  ===============================================================
echo   Done.
echo  ===============================================================
echo(
echo  Now copy these folders into the "data" folder of your server
echo  (the "data" folder next to docker-compose.yml):
echo(
echo      dbc  maps  vmaps  mmaps  gt  cameras
echo(
echo  Then the worldserver picks them up within a minute - or run
echo  "docker compose restart worldserver" to not wait.
echo(
goto :end

:toolfail
echo(
echo  ===============================================================
echo   A tool reported an error (exit code %errorlevel%).
echo  ===============================================================
echo(
echo  Common causes:
echo    * Not a 3.4.3 (WotLK Classic) client - this does not work with
echo      3.3.5a / MPQ-based clients.
echo    * The client was never fully downloaded/repaired in the launcher.
echo    * Not enough free disk space.
echo(
goto :fail

:cancelled
echo(
echo  Cancelled - nothing was changed.
goto :end

:fail
echo(
pause
exit /b 1

:end
pause
exit /b 0
