@echo off
rem Configure the build script for Ninja
cmake -H. -B%EW_BUILD_DIR% -G "Ninja" -DCMAKE_TOOLCHAIN_FILE=toolchain-iccarm.cmake