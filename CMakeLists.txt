cmake_minimum_required(VERSION 3.16)

# set the project name and version
project(Tutorial VERSION 1.0.1 LANGUAGES CXX)

foreach(std IN ITEMS 98 11 14 17)
  message("C++${std} std flags: ${CMAKE_CXX${std}_STANDARD_COMPILE_OPTION}")
  message("C++${std} ext flags: ${CMAKE_CXX${std}_EXTENSION_COMPILE_OPTION}")
endforeach()

# should we use our own math functions
option(USE_MYMATH "Use tutorial provided math implementation" ON)

# add the MathFunctions library
if(USE_MYMATH)
  add_subdirectory(MathFunctions)
  list(APPEND EXTRA_LIBS MathFunctions)
  list(APPEND EXTRA_INCLUDES "${PROJECT_SOURCE_DIR}/MathFunctions")
endif()

# add the Tutorial executable sources
add_subdirectory(include)
add_subdirectory(Sources)

target_link_libraries(Tutorial PUBLIC ${EXTRA_LIBS})

# add the binary tree to the search path for include files
# so that we will find TutorialConfig.h
target_include_directories(Tutorial PUBLIC
                           "${PROJECT_BINARY_DIR}/include"
                           ${EXTRA_INCLUDES}
                           )
                                                     
set_property(TARGET Tutorial PROPERTY CXX_STANDARD "14")
set_property(TARGET Tutorial PROPERTY CXX_STANDARD_REQUIRED ON)
set_property(TARGET Tutorial PROPERTY CXX_EXTENSIONS ON)
