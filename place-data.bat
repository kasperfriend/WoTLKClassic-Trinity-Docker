@echo off
setlocal enabledelayedexpansion
title WoW 3.4.3 - Place existing extracted data

rem ==========================================================================
rem  Place EXISTING extracted client data into .\data - no re-extraction.
rem
rem  Drag the folder that holds the extracted data onto this file, or run:
rem      place-data.bat "D:\WoW extraction"
rem
rem  Works with:
rem    - a folder that directly contains dbc\ maps\ vmaps\ mmaps\ gt\
rem    - a client folder the extractors were already run in (the output
rem      sits next to Wow.exe)
rem    - another checkout of this repo (its .\data is found automatically)
rem
rem  The folders are COPIED into .\data, so the source stays intact;
rem  anything already in .\data from an earlier attempt is replaced first.
rem  No Docker needed for this step. Afterwards:
rem      docker compose restart worldserver
rem ==========================================================================

set "SRC=%~1"
if "%SRC%"=="" (
  echo.
  echo  Usage: drag your extracted-data folder onto this file,
  echo         or run:  place-data.bat "D:\WoW extraction"
  echo.
  echo  That is the folder containing dbc, maps, vmaps, mmaps, gt.
  goto :fail
)
if not exist "%SRC%\" (
  echo  ERROR: "%SRC%" is not a folder.
  goto :fail
)

rem Locate the data root: the folder itself, or its data\ subfolder.
set "ROOT=%SRC%"
call :has_all "%ROOT%"
if errorlevel 1 set "ROOT="
if not defined ROOT (
  if exist "%SRC%\data" (
    call :has_all "%SRC%\data"
    if not errorlevel 1 (
      echo  Found the data in "%SRC%\data" - using that.
      set "ROOT=%SRC%\data"
    )
  )
)
if not defined ROOT (
  echo.
  echo  ERROR: "%SRC%" does not look like extracted client data -
  echo  none of the dbc, maps, vmaps, mmaps, gt folders were found
  echo  (neither in the folder itself nor in "%SRC%\data").
  echo  Nothing was changed.
  goto :fail
)

set "DEST=%~dp0data"
echo.
echo  Source : %ROOT%
echo  Target : %DEST%
echo.
echo  Copying the data folders into .\data - this can take a while
echo  (a full extraction is ~25 GB). Ctrl+C is safe - just re-run.
echo.

for %%D in (dbc maps vmaps mmaps gt cameras) do (
  if exist "%ROOT%\%%D\" (
    if exist "%DEST%\%%D\" rd /s /q "%DEST%\%%D"
    xcopy "%ROOT%\%%D" "%DEST%\%%D" /E /I /Y /Q >nul
    if errorlevel 1 (
      echo.
      echo  ERROR: xcopy failed while copying %%D.
      echo  Check disk space and re-run - already-copied folders are kept.
      goto :fail
    )
    echo     %%D
  )
)

set "MISSING="
for %%D in (dbc maps vmaps mmaps gt) do (
  if not exist "%DEST%\%%D\" set "MISSING=!MISSING! %%D"
)
if defined MISSING (
  echo.
  echo  ERROR: required data is missing:!MISSING!
  echo  worldserver will not start - check the source folder and re-run.
  goto :fail
)

echo.
echo  == done - worldserver picks this up within 60 seconds ==
echo     (or run: docker compose restart worldserver)
echo.
pause
exit /b 0

:has_all
rem %~1 = dir - succeed only if dbc maps vmaps mmaps gt all exist in it
for %%D in (dbc maps vmaps mmaps gt) do (
  if not exist "%~1\%%D\" exit /b 1
)
exit /b 0

:fail
echo.
pause
exit /b 1
