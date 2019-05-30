@echo off
git clone https://github.com/Microsoft/vcpkg.git
pushd vcpkg
.\bootstrap-vcpkg.bat -verbose -win64
popd
