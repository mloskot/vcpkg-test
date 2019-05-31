@echo off
set VCPKG=%CD%\_vcpkg\vcpkg.exe
if exist %CD%\vcpkg.exe set VCPKG=%CD%\vcpkg.exe

set PACKAGES=libpng libraw sqlite3
%VCPKG% --triplet x86-windows install %PACKAGES%
%VCPKG% --triplet x64-windows install %PACKAGES%
