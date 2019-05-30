@echo off
if not exist %CD%\vcpkg\scripts\buildsystems\vcpkg.cmake (
    @echo build.bat: File not found: %CD%\vcpkg\scripts\buildsystems\vcpkg.cmake
    exit /B 1
)
set BUILDDIR=build
set BUILDCFG=Release
:: Use default generator in current environment
cmake -S . -B %BUILDDIR% -DCMAKE_TOOLCHAIN_FILE=%CD%\vcpkg\scripts\buildsystems\vcpkg.cmake
cmake --build %BUILDDIR% --config %BUILDCFG%
