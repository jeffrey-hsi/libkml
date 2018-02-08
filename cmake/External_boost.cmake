ExternalProject_Add(BOOST
  PREFIX BOOST
  URL ${PROJECT_SOURCE_DIR}/thirdparty/boost_1_61_0-minimal.zip
  SOURCE_DIR ${INSTALL_DIR}/include/boost_1_61-minimal
  CONFIGURE_COMMAND ""
  BUILD_COMMAND ""
  INSTALL_COMMAND "" )

set(Boost_INCLUDE_DIRS ${INSTALL_DIR}/include/boost_1_61-minimal)