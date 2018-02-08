if(ANDROID_ABI)
  ExternalProject_Add(EXPAT
    PREFIX EXPAT
    URL ${PROJECT_SOURCE_DIR}/thirdparty/expat-2.1.0.tar.gz
    URL_MD5 dd7dab7a5fea97d2a6a43f511449b7cd
    BINARY_DIR ${CMAKE_BINARY_DIR}/EXPAT/build
    DOWNLOAD_DIR ${DOWNLOAD_LOCATION}
    CMAKE_CACHE_ARGS
    -DCMAKE_TOOLCHAIN_FILE:STRING=${CMAKE_TOOLCHAIN_FILE}
    -DANDROID_ABI:STRING=${ANDROID_ABI}
    -DANDROID_NDK:STRING=${ANDROID_NDK}
    -DANDROID_NATIVE_API_LEVEL:STRING=${ANDROID_NATIVE_API_LEVEL}
    -DCMAKE_INSTALL_PREFIX:PATH=${INSTALL_DIR}
    -DCMAKE_BUILD_TYPE:STRING=${CMAKE_BUILD_TYPE}
    -DBUILD_examples:BOOL=OFF
    -DBUILD_tests:BOOL=OFF
    -DBUILD_tools:BOOL=OFF
    -DBUILD_shared:BOOL=${BUILD_SHARED_LIBS}
    -DCMAKE_DEBUG_POSTFIX:STRING=d)
else()
  ExternalProject_Add(EXPAT
    PREFIX EXPAT
    URL ${PROJECT_SOURCE_DIR}/thirdparty/expat-2.1.0.tar.gz
    URL_MD5 dd7dab7a5fea97d2a6a43f511449b7cd
    BINARY_DIR ${CMAKE_BINARY_DIR}/EXPAT/build
    DOWNLOAD_DIR ${DOWNLOAD_LOCATION}
    CMAKE_CACHE_ARGS
    -DCMAKE_INSTALL_PREFIX:PATH=${INSTALL_DIR}
    -DCMAKE_BUILD_TYPE:STRING=${CMAKE_BUILD_TYPE}
    -DBUILD_examples:BOOL=OFF
    -DBUILD_tests:BOOL=OFF
    -DBUILD_tools:BOOL=OFF
    -DBUILD_shared:BOOL=${BUILD_SHARED_LIBS}
    -DCMAKE_DEBUG_POSTFIX:STRING=d)
endif()

include_project_vars(EXPAT "libexpat")
