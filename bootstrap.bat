@echo off
git clone https://github.com/Microsoft/vcpkg.git _vcpkg
pushd _vcpkg
.\bootstrap-vcpkg.bat -verbose -win64
popd
