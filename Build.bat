REM ****************************************************************************
REM Usage:
REM   1 Start VS Command Tool
REM   2 In console, type:
REM     Build.bat <build_path> <android_ndk_path> <android_toolchain_file>
REM Remark:
REM   cmake must be in search path
REM ****************************************************************************
set BUILD_ROOT=%1
mkdir %BUILD_ROOT%
cd %BUILD_ROOT%
set ANDROID_NDK=%2
set ANDROID_TOOLCHAIN_FILE=%3
cmake -DCMAKE_TOOLCHAIN_FILE=%ANDROID_TOOLCHAIN_FILE% -DANDROID_ABI="armeabi-v7a" -DANDROID_NDK=%ANDROID_NDK% -DBUILD_SHARED_LIBS=OFF -G "NMake Makefiles" ..
cmake --build .