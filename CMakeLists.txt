cmake_minimum_required(VERSION 3.14 FATAL_ERROR)

project(vcpkg-test VERSION 1.0.0 LANGUAGES CXX
  DESCRIPTION "Test project verifying Vcpkg packages usability on Windows"
  HOMEPAGE_URL "https://github.com/mloskot/vcpkg-test")

set(CMAKE_CXX_STANDARD 11 CACHE
  STRING "C++ standard version to use (default is 11)")
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
message(STATUS "vcpkg-test: Require C++${CMAKE_CXX_STANDARD}")

enable_testing()

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
