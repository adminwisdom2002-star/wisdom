@echo off
setlocal
set "BASE=%~dp0"
set "APP=%BASE%release-portable\WisdomSchoolDesktop-Portable-1.0.0.exe"
if not exist "%APP%" (
  for %%F in ("%BASE%release-portable\*.exe") do set "APP=%%~fF"
)
if not exist "%APP%" (
  echo Portable app not found in %BASE%release-portable
  echo Please run the Windows build first.
  pause
  exit /b 1
)
start "" "%APP%"
