# Set CMake for cross-compiling with IAR C/C++ Compiler
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

# Retrieve the EW Toolkit directory location from the environment variable
# Many times this shortens the expression instead of using the full path 
set(TOOLKIT_DIR $ENV{EW_TOOL_DIR})

# Use the IAR C compiler
set(CMAKE_C_COMPILER   icc${CMAKE_SYSTEM_PROCESSOR})
# Use the IAR C++ compiler (same executable for the C compiler)
set(CMAKE_CXX_COMPILER ${CMAKE_C_COMPILER})
# Use the IAR Assembler
set(CMAKE_ASM_COMPILER iasm${CMAKE_SYSTEM_PROCESSOR})

# Set the IAR C Compiler options
set(CMAKE_C_FLAGS   "      --cpu 7-M --dlib_config normal")
# Set the IAR C++ Compiler options
set(CMAKE_CXX_FLAGS "--c++ --cpu 7-M --dlib_config normal")

# Set the ILINK linker options for the IAR C Compiler
set(CMAKE_C_LINK_FLAGS   "      --semihosting --redirect __write=__write_buffered --config ${TOOLKIT_DIR}/config/generic.icf")
# Set the ILINK linker options for the IAR C++ Compiler
set(CMAKE_CXX_LINK_FLAGS "--vfe --semihosting --redirect __write=__write_buffered --config ${TOOLKIT_DIR}/config/generic.icf")
