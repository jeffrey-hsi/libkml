ExternalProject_Add(BOOST
  PREFIX BOOST
  URL ${PROJECT_SOURCE_DIR}/thirdparty/boost_1_50.zip
  SOURCE_DIR ${INSTALL_DIR}/include/boost_1_50
  CONFIGURE_COMMAND ""
  BUILD_COMMAND ""
  INSTALL_COMMAND "" )

set(Boost_INCLUDE_DIRS ${INSTALL_DIR}/include/boost_1_50)