set(CPACK_RPM_COMPONENT_INSTALL "ON")

install(FILES CMakeLists.txt DESTINATION foo COMPONENT applications)
install(FILES CMakeLists.txt DESTINATION bar COMPONENT headers)
install(FILES CMakeLists.txt DESTINATION bas COMPONENT libs)

if(RunCMake_SUBTEST_SUFFIX STREQUAL "invalid")
  set(CPACK_RPM_MAIN_COMPONENT "")
else()
  set(CPACK_RPM_MAIN_COMPONENT "applications")
  set(CPACK_RPM_APPLICATIONS_FILE_NAME "RPM-DEFAULT")
endif()
