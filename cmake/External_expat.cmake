if(ANDROID_ABI)
  ExternalProject_Add(EXPAT
    PREFIX EXPAT
    URL "http://sourceforge.net/projects/expat/files/expat/2.1.0/expat-2.1.0.tar.gz/download"
    URL_MD5 dd7dab7a5fea97d2a6a43f511449b7cd
    BINARY_DIR ${CMAKE_BINARY_DIR}/EXPAT/build
    DOWNLOAD_DIR ${DOWNLOAD_LOCATION}
    CMAKE_CACHE_ARGS
    -DCMAKE_TOOLCHAIN_FILE:STRING=${CMAKE_TOOLCHAIN_FILE}
    -DANDROID_ABI:STRING=${ANDROID_ABI}
    -DANDROID_NDK:STRING=${ANDROID_NDK}
    -DCMAKE_INSTALL_PREFIX:PATH=${INSTALL_DIR}
    -DCMAKE_BUILD_TYPE:STRING=${CMAKE_BUILD_TYPE}
    -DBUILD_examples:BOOL=OFF
    -DBUILD_tests:BOOL=OFF
    -DBUILD_tools:BOOL=OFF
    -DBUILD_shared:BOOL=${BUILD_SHARED_LIBS})
else()
  ExternalProject_Add(EXPAT
    PREFIX EXPAT
    URL "http://sourceforge.net/projects/expat/files/expat/2.1.0/expat-2.1.0.tar.gz/download"
    URL_MD5 dd7dab7a5fea97d2a6a43f511449b7cd
    BINARY_DIR ${CMAKE_BINARY_DIR}/EXPAT/build
    DOWNLOAD_DIR ${DOWNLOAD_LOCATION}
    CMAKE_CACHE_ARGS
    -DCMAKE_INSTALL_PREFIX:PATH=${INSTALL_DIR}
    -DCMAKE_BUILD_TYPE:STRING=${CMAKE_BUILD_TYPE}
    -DBUILD_examples:BOOL=OFF
    -DBUILD_tests:BOOL=OFF
    -DBUILD_tools:BOOL=OFF
    -DBUILD_shared:BOOL=${BUILD_SHARED_LIBS})
endif()

include_project_vars(EXPAT "libexpat")
