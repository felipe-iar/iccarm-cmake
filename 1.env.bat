@echo off
rem Change according to the IAR Embedded Workbench (installation folder and architecture)
set EW_DIR=C:\IAR_Systems\EWARM\8.50.6
set CMAKE_DIR=%PROGRAMFILES%\CMake\bin
set NINJA_DIR=

rem The lines below are ready to use
set EW_BUILD_DIR=.\build
set EW_TOOL_DIR=%EW_DIR%\arm
set EW_DEBUGGER_DIR=%EW_DIR%\arm\config\debugger
set EW_COMMON_DIR=%EW_DIR%\common

rem add the build tools to the path
set PATH=%EW_TOOL_DIR%\bin;%CMAKE_DIR%;%PATH%
