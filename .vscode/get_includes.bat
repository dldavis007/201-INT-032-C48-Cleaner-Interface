@echo off
setlocal EnableDelayedExpansion

REM 1) Find the first .prj up one level
set "prjfile="
for %%F in ("%~dp0..\*.prj") do (
    set "prjfile=%%~fF"
    goto :foundPrj
)
echo ERROR: No .prj file found in "%~dp0.."
exit /b 1

:foundPrj
echo Using project: "%prjfile%"

REM 2) Extract the Edit1= value
set "rawPath="
for /f "usebackq tokens=1* delims==" %%A in (
    `findstr /b /c:"Edit1=" "!prjfile!"`
) do (
    set "rawPath=%%B"
)

if not defined rawPath (
    echo ERROR: Edit1= not found in "%prjfile%"
    exit /b 1
)

REM 3) Strip any embedded quotes and escape backslashes
set "rawPath=!rawPath:"=!"
set "incPath=!rawPath:\=\\!"

REM 4) Emit JSON to .vscode\c_cpp_properties.json
> "%~dp0c_cpp_properties.json" (
  echo {
  echo     "configurations": [
  echo         {
  echo             "name": "Win32",
  echo             "includePath": [
  echo                 "!incPath!"
  echo             ],
  echo             "defines": [
  echo                 "_DEBUG",
  echo                 "UNICODE",
  echo                 "_UNICODE"
  echo             ]
  echo         }
  echo     ],
  echo     "version": 4
  echo }
)

echo Generated c_cpp_properties.json in "%~dp0"
endlocal
