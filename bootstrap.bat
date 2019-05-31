@echo off
set VCPKGDIR=%CD%\_vcpkg
git clone https://github.com/Microsoft/vcpkg.git %VCPKGDIR%
%VCPKGDIR%\bootstrap-vcpkg.bat -verbose -win64

