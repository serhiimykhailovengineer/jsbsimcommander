@echo off
echo Run MSVC cmd.bat

call "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\VsDevCmd.bat"

echo Building...
cmake --build build