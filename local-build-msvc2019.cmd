REM run as Administrator
@echo off
cd /d %~dp0
@REM set DOWNLOAD_DIR=%USERPROFILE%\Downloads
@REM set DOWNLOAD_DIR_LINUX=%DOWNLOAD_DIR:\=/%
@REM %DOWNLOAD_DIR%\mingw64-win32; ^
@REM %DOWNLOAD_DIR%\mingw64-win32\bin; ^
@REM SET PATH=%DOWNLOAD_DIR%\PortableGit\bin;%DOWNLOAD_DIR%\cmake-3.22.2-windows-x86_64\bin;

set PATH=^
D:\Softwares\cmake-3.23.0-rc1-windows-x86_64\bin;

cmake -G "Visual Studio 16 2019" -A x64 ^
-DTCL_ROOT="C:/Users/Administrator/Downloads/1657010624089932/Tcl" -B./build

cd build
cmake --build . --target ALL_BUILD --config Release -- /nologo /verbosity:minimal /maxcpucount

pause

