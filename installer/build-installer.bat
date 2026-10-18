@echo off
setlocal EnableExtensions EnableDelayedExpansion

set "compiler=C:\Program Files (x86)\Inno Setup 6\ISCC.exe"
set "script=%~dp0AvroKeyboardGermanPhonetic.iss"
set "build=%~dp0..\build"

if not exist "!compiler!" (
  echo Inno Setup 6 was not found: !compiler!
  exit /b 1
)

if not exist "!build!\Avro Keyboard.exe" (
  echo Release files were not found. Run build-ce.bat, build all projects in Delphi,
  echo then wait for build-ce.bat to rename the executables before running this script.
  exit /b 1
)

"!compiler!" "!script!"
