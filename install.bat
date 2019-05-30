@echo off
pushd .\vcpkg
.\vcpkg.exe --triplet x86-windows install sqlite3
.\vcpkg.exe --triplet x64-windows install sqlite3
popd
