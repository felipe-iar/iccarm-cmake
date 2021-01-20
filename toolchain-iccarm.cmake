# Set CMake for cross-compiling
set(CMAKE_SYSTEM_NAME Generic)

# Retrieve the EW Toolkit directory location from the environment variable
# Many times this shortens the expression instead of using the full path 
set(TOOLKIT_DIR $ENV{EW_TOOL_DIR})

# Set the CMake compiler vars for C, C++ and Assembly
# For ICC, the executables for C and C++ is the same
set(CMAKE_C_COMPILER   iccarm)
set(CMAKE_CXX_COMPILER ${CMAKE_C_COMPILER})
set(CMAKE_ASM_COMPILER iasmarm)

# Set the ICC compiler options
set(CMAKE_C_FLAGS "--cpu Cortex-M4 --dlib_config normal")
set(CMAKE_CXX_FLAGS "--cpu Cortex-M4 --dlib_config normal")

# Set the ILINK linker options
set(CMAKE_C_LINK_FLAGS "--semihosting --vfe --redirect __write=__write_buffered --config ${TOOLKIT_DIR}/config/linker/ST/stm32f429xI.icf")
set(CMAKE_CXX_LINK_FLAGS "--semihosting --vfe --redirect __write=__write_buffered --config ${TOOLKIT_DIR}/config/linker/ST/stm32f429xI.icf")
