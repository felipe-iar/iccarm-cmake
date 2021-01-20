### BEGIN CMAKE_TOOLCHAIN_FILE
# "Generic" is used when cross compiling
set(CMAKE_SYSTEM_NAME Generic)

# Set the EW installation root directory 
#(Avoid spaces in the path or you need to escape them)
#set(TOOLKIT_DIR "c:/iar_systems/ewarm/8.50.6/arm")
set(TOOLKIT_DIR $ENV{EW_TOOL_DIR})

# Compiler flags needed to compile for this CPU
# set(CPU_FLAGS "--cpu ARM9E")

# Set up the CMake variables for compiler and assembler
# (The reason for both C and CXX variables is that CMake 
# treats C and C++ tools individually)
set(CMAKE_C_COMPILER   iccarm)
set(CMAKE_CXX_COMPILER ${CMAKE_C_COMPILER})
set(CMAKE_ASM_COMPILER iasmarm)

# Set up ICC compiler options
set(CMAKE_C_FLAGS "--cpu Cortex-M4 --dlib_config normal")
set(CMAKE_CXX_FLAGS "--cpu Cortex-M4 --dlib_config normal")

# Set up ILINK linker options
set(CMAKE_C_LINK_FLAGS "--semihosting --vfe --config ${TOOLKIT_DIR}/config/linker/ST/stm32f429xI.icf")
set(CMAKE_CXX_LINK_FLAGS "--semihosting --redirect _Printf=_PrintfFullNoMb --redirect _Scanf=_ScanfFullNoMb --vfe --entry __iar_program_start --text_out locale --config ${TOOLKIT_DIR}/config/linker/ST/stm32f429xI.icf")
