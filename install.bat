@echo off
pushd .\_vcpkg
.\vcpkg.exe --triplet x86-windows install libraw sqlite3
.\vcpkg.exe --triplet x64-windows install libraw sqlite3
popd
