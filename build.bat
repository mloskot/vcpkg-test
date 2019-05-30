@echo off
set VCPKG_CMAKE=%CD%\_vcpkg\scripts\buildsystems\vcpkg.cmake
if not exist %VCPKG_CMAKE% (
    @echo build.bat: File not found: %VCPKG_CMAKE%
    exit /B 1
)
set BUILDDIR=_build
set BUILDCFG=Release
:: Use default generator in current environment
cmake -S . -B %BUILDDIR% -DCMAKE_TOOLCHAIN_FILE=%VCPKG_CMAKE%
cmake --build %BUILDDIR% --config %BUILDCFG% --verbose
