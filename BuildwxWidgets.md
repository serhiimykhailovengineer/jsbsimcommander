# Download wxWidgets 2.8.12
Download wxWidgets 2.8.12 library from https://wxwidgets.org/downloads/ for Windows (wxMSW)
# Unzip or install in selected folder.
For example: C:\3rdParty\wxWidgets\2.8.12
# Open command line
# Select folder where library was unpack(installed).
```batch
cd C:\3rdParty\wxWidgets\2.8.12
```

# Setup Microsoft Visual Studio environment vars:
```batch
call "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\VsDevCmd.bat -host_arch=x64 -arch=x64"
```

# Build library
```batch
nmake -f makefile.vc CXXFLAGS="/DNEED_PBT_H" TARGET_CPU=x64
```

# After build you need folders:
C:\3rdParty\wxWidgets\2.8.12\include - for includes
C:\3rdParty\wxWidgets\2.8.12\lib\vc_lib - for libs