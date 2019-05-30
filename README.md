# Vcpkg Test

Collection of minimal client programs linking against variety of
libraries deployed by [Vcpkg](https://github.com/Microsoft/vcpkg).

Goal: Basic verification of Vcpkg packages usability on Windows.

## Prerequisites

* CMake 3.14+
* Vcpkg (`master`)
* Visual Studio 2017+

Optionally:

* `pip install cmakelint`

## Programs

Check file listing for `test_<library>.cpp`.

## Usage

* On Windows, in the Command Prompt or PowerShell:

```
git clone https://github.com/mloskot/vcpkg-test.git
cd vcpkg-test
.\bootstrap.bat
.\install.bat
.\build.bat
.\test.bat
```
