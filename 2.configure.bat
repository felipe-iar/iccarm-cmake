@echo off
rem Configure the build script for Ninja
rm build -r
cmake -H. -B%EW_BUILD_DIR% 