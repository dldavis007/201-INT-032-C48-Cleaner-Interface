@echo off
REM Enable delayed variable expansion for proper handling inside the loop
setlocal EnableDelayedExpansion

REM 0) Remember our own batch name so we can skip moving it
set "batch_file=%~nx0"

REM 1) Get the full absolute path of the parent directory of the .vscode folder
set "parent_dir=%~dp0.."
for %%a in ("%parent_dir%") do set "parent_dir=%%~fpa"

REM 2) Ensure the parent directory path ends with a backslash
if not "%parent_dir:~-1%"=="\" set "parent_dir=%parent_dir%\"

REM 3) Rename any .src files to .SRC in the parent directory
for %%f in ("%parent_dir%*.src") do ren "%%f" "%%~nf.SRC"

REM 4) Create the necessary directories in the parent folder
mkdir "%parent_dir%Build" 2>nul
mkdir "%parent_dir%Document Files" 2>nul
mkdir "%parent_dir%Source Files" 2>nul

REM 5) Move .txt files in the parent folder to "Document Files"
move "%parent_dir%*.txt" "%parent_dir%Document Files" 2>nul

REM 6) Move .c and .h files in the parent folder to "Source Files"
move "%parent_dir%*.c" "%parent_dir%Source Files" 2>nul
move "%parent_dir%*.h" "%parent_dir%Source Files" 2>nul

REM 7) Move all remaining files except .SRC, .prj, and this batch to "Build"
for %%f in ("%parent_dir%*.*") do (
    if /I not "%%~xf"==".SRC" if /I not "%%~xf"==".prj" if /I not "%%~nxf"=="%batch_file%" (
        move "%%f" "%parent_dir%Build" 2>nul
    )
)

REM 8) Process the .SRC file based on sections [Files], [Headers], and [Documents]
set "src_file="
for %%f in ("%parent_dir%*.SRC") do set "src_file=%%f"

set "in_files_section=0"
set "in_headers_section=0"
set "in_documents_section=0"

(
  for /f "usebackq delims=" %%a in ("%src_file%") do (
    if "%%a"=="[Files]" (
      set "in_files_section=1" & set "in_headers_section=0" & set "in_documents_section=0"
      echo %%a
    ) else if "%%a"=="[Headers]" (
      set "in_files_section=0" & set "in_headers_section=1" & set "in_documents_section=0"
      echo %%a
    ) else if "%%a"=="[Documents]" (
      set "in_files_section=0" & set "in_headers_section=0" & set "in_documents_section=1"
      echo %%a
    ) else (
      if !in_files_section!==1 (
        echo Source Files\%%a
      ) else if !in_headers_section!==1 (
        echo Source Files\%%a
      ) else if !in_documents_section!==1 (
        echo Document Files\%%a
      ) else (
        echo %%a
      )
    )
  )
) > "%parent_dir%temp_file.txt"

move /y "%parent_dir%temp_file.txt" "%src_file%" 2>nul

REM 9) Modify the line "Edit8=" in the .prj file to "Edit8=[parent dir]\Build\"
set "prj_file="
for %%f in ("%parent_dir%*.prj") do set "prj_file=%%f"

(
  for /f "usebackq delims=" %%a in ("%prj_file%") do (
    echo %%a | findstr /b /c:"Edit8=" >nul
    if !errorlevel! equ 0 (
      echo Edit8=%parent_dir%Build\
    ) else (
      echo %%a
    )
  )
) > "%parent_dir%temp_prj.txt"

move /y "%parent_dir%temp_prj.txt" "%prj_file%" 2>nul

echo Files moved and .SRC and .prj files modified successfully!

REM ----------------------------------------------------------------------------
REM NOW call your helper to extract include paths and generate the JSON
REM ----------------------------------------------------------------------------
call "%~dp0get_includes.bat"

endlocal
