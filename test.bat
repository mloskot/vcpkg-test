@echo off
set BUILDDIR=build
set BUILDCFG=Release
pushd %BUILDDIR%
ctest --show-only
ctest --build-config %BUILDCFG% -VV
popd
