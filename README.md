# Vcpkg Test

[![AppVeyor](https://ci.appveyor.com/api/projects/status/l7ouc1pxuep1qhfy/branch/master?svg=true)](https://ci.appveyor.com/project/mloskot/vcpkg-test/branch/master)

Collection of minimal client programs linking against variety of
libraries deployed by [Vcpkg](https://github.com/Microsoft/vcpkg).

## Goals

* Verify usability of Vcpkg packages selection.
* Show how to use Vcpkg packages in CMakeLists.txt.

## Prerequisites

* CMake 3.14+
* Vcpkg (`master`)
* Visual Studio 2017+

Optionally:

* `pip install cmakelint`

## Programs

Check file listing for `test_<library>.cpp`.

## Usage

### Windows

In the Command Prompt or PowerShell run:

```console
git clone https://github.com/mloskot/vcpkg-test.git
cd vcpkg-test
.\bootstrap.bat
.\install.bat
.\build.bat
.\test.bat
```

### Linux

*TODO*
