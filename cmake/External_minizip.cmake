if(ANDROID_ABI)
  ExternalProject_Add(MINIZIP
    PREFIX MINIZIP
    URL ${PROJECT_SOURCE_DIR}/thirdparty/minizip.zip
    BINARY_DIR ${CMAKE_BINARY_DIR}/MINIZIP/build
    DEPENDS ${MINIZIP_DEPENDS}
    CMAKE_CACHE_ARGS
    -DCMAKE_TOOLCHAIN_FILE:STRING=${CMAKE_TOOLCHAIN_FILE}
    -DANDROID_ABI:STRING=${ANDROID_ABI}
    -DANDROID_NDK:STRING=${ANDROID_NDK}
    -DANDROID_NATIVE_API_LEVEL:STRING=${ANDROID_NATIVE_API_LEVEL}
    -DCMAKE_INSTALL_PREFIX:PATH=${INSTALL_DIR}
    -DCMAKE_BUILD_TYPE:STRING=${CMAKE_BUILD_TYPE}
    -DZLIB_INCLUDE_DIR:PATH=${ZLIB_INCLUDE_DIR}
    -DZLIB_LIBRARY:FILEPATH=${ZLIB_LIBRARY}
    -DBUILD_SHARED_LIBS:BOOL=${BUILD_SHARED_LIBS}
    -DCMAKE_DEBUG_POSTFIX:STRING=d)
else()
  ExternalProject_Add(MINIZIP
    PREFIX MINIZIP
    URL ${PROJECT_SOURCE_DIR}/thirdparty/minizip.tar.gz
    URL_MD5 d5f74eff74e03e497ea60b2c43623416
    BINARY_DIR ${CMAKE_BINARY_DIR}/MINIZIP/build
    DEPENDS ${MINIZIP_DEPENDS}
    CMAKE_CACHE_ARGS
    -DCMAKE_INSTALL_PREFIX:PATH=${INSTALL_DIR}
    -DCMAKE_BUILD_TYPE:STRING=${CMAKE_BUILD_TYPE}
    -DZLIB_INCLUDE_DIR:PATH=${ZLIB_INCLUDE_DIR}
    -DZLIB_LIBRARY:FILEPATH=${ZLIB_LIBRARY}
    -DBUILD_SHARED_LIBS:BOOL=${BUILD_SHARED_LIBS}
    -DCMAKE_DEBUG_POSTFIX:STRING=d )
endif()

include_project_vars(MINIZIP "libminizip")
