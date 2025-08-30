@echo off
echo Run MSVC cmd.bat

call "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\VsDevCmd.bat"

if "%VSINSTALLDIR%"=="" (
    echo ERROR: Visual Studio env not set!
    pause
    exit /b 1
)

echo VSINSTALLDIR: %VSINSTALLDIR%

if not exist "build" mkdir build

set wxWidgets_ROOT_DIR=C:\3rdParty\wxWidgets\2.8.12
set wxWidgets_LIB_DIR=%wxWidgets_ROOT_DIR%\lib\vc_lib
echo wxWidgets_ROOT_DIR="%wxWidgets_ROOT_DIR%"
echo wxWidgets_LIB_DIR="%wxWidgets_LIB_DIR%"

echo Generating Visual Studio project...
cmake -G "Visual Studio 17 2022" -B build -S . -DwxWidgets_ROOT_DIR="%wxWidgets_ROOT_DIR%" -DwxWidgets_CONFIGURATION=mswd -DwxWidgets_LIB_DIR="%wxWidgets_LIB_DIR%"

