cmake_minimum_required (VERSION 3.5)
project(CppStarter)

set(INSTALL_DIR "${CMAKE_CURRENT_SOURCE_DIR}/dist/${CMAKE_BUILD_TYPE}")

add_subdirectory(externals)
add_subdirectory(src)