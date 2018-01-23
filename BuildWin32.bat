REM ****************************************************************************
REM Usage:
REM   1 Start VS Command Tool
REM   2 In console, type:
REM     Build.bat <build_path> <android_ndk_path> <android_toolchain_file>
REM Remark:
REM   cmake must be in search path
REM ****************************************************************************
set BUILD_ROOT=%1
set BUILD_TYPE=%2
mkdir %BUILD_ROOT%
cd %BUILD_ROOT%
cmake -DUSE_EXTERNAL_ZLIB=ON -DUSE_EXTERNAL_MINIZIP=ON -DUSE_EXTERNAL_BOOST=ON -DUSE_EXTERNAL_URIPARSER=ON -DUSE_EXTERNAL_EXPAT=ON -DBUILD_SHARED_LIBS=OFF -DCMAKE_BUILD_TYPE=%BUILD_TYPE% -G "NMake Makefiles" ..
cmake --build .