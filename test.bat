@echo off
set BUILDDIR=%CD%\_build
set BUILDCFG=Release
pushd %BUILDDIR%
ctest --show-only
ctest --build-config %BUILDCFG% -VV
popd
