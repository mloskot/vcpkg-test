cmake_minimum_required(VERSION 3.14 FATAL_ERROR)

project(vcpkg-test VERSION 1.0.0 LANGUAGES CXX
  DESCRIPTION "Test project to verify usability of selection of Vcpkg packages on Windows"
  HOMEPAGE_URL "https://github.com/mloskot/vcpkg-test")

set(CMAKE_CXX_STANDARD 11 CACHE
  STRING "C++ standard version to use (default is 11)")
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
message(STATUS "vcpkg-test: Require C++${CMAKE_CXX_STANDARD}")

enable_testing()

#-------------------------------------------------------------------------------
# libjpeg
#-------------------------------------------------------------------------------
message(STATUS "vcpkg-test: Configuring test_libjpeg with CMake Find-module")
find_package(JPEG REQUIRED)
add_executable(test_libjpeg test_libjpeg.cpp)
target_link_libraries(test_libjpeg PRIVATE JPEG::JPEG)
add_test(NAME t_libjpeg COMMAND test_libjpeg)

#-------------------------------------------------------------------------------
# libpng
#-------------------------------------------------------------------------------
message(STATUS "vcpkg-test: Configuring test_libpng with CMake Find-module")
find_package(PNG REQUIRED)
add_executable(test_libpng test_libpng.cpp)
target_link_libraries(test_libpng PRIVATE PNG::PNG)
add_test(NAME t_libpng COMMAND test_libpng)

# FIXME: vcpkg deploys libpng16.cmake, but not libpng-config.cmake
#        and where the 16 comes from?
#message(STATUS "vcpkg-test: Configuring test_libpng with Vcpkg Config-module")
#find_package(libpng CONFIG REQUIRED)
#add_executable(test_libpng_config test_libpng.cpp)
#target_link_libraries(test_libpng_config PRIVATE libpng)
#add_test(NAME t_libpng_config COMMAND test_libpng_config)

#-------------------------------------------------------------------------------
# libraw
#-------------------------------------------------------------------------------
message(STATUS "vcpkg-test: Configuring test_libraw with Vcpkg Config-module")
find_package(LibRaw REQUIRED)
add_executable(test_libraw_config test_libraw.cpp)
target_link_libraries(test_libraw_config PRIVATE ${LibRaw_LIBRARIES})
target_include_directories(test_libraw_config PRIVATE ${LibRaw_INCLUDE_DIR})
target_compile_definitions(test_libraw_config PRIVATE ${LibRaw_DEFINITIONS})
add_test(NAME t_libraw_config COMMAND test_libraw_config)

#-------------------------------------------------------------------------------
# sqlite3
#-------------------------------------------------------------------------------
message(STATUS "vcpkg-test: Configuring test_sqlite3 with CMake Find-module")
find_package(SQLite3 REQUIRED)
add_executable(test_sqlite3 test_sqlite3.cpp)
target_link_libraries(test_sqlite3 PRIVATE SQLite::SQLite3)
add_test(NAME t_sqlite3 COMMAND test_sqlite3)

message(STATUS "vcpkg-test: Configuring test_sqlite3 with Vcpkg Config-module")
find_package(sqlite3 CONFIG REQUIRED)
add_executable(test_sqlite3_config test_sqlite3.cpp)
target_link_libraries(test_sqlite3_config PRIVATE sqlite3)
add_test(NAME t_sqlite3_config COMMAND test_sqlite3_config)
