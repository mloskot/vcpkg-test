@echo off
set PACKAGES=libpng libraw sqlite3
set VCPKG=.\_vcpkg\vcpkg.exe
%VCPKG% --triplet x86-windows install %PACKAGES%
%VCPKG% --triplet x64-windows install %PACKAGES%
