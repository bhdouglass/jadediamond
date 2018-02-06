# Install script for directory: /home/brian/dev/ubuntu/apps/kidbrowser/plugins/PamAuthentication

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}/lib/x86_64-linux-gnu/PamAuthentication/libPamAuthentication.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/lib/x86_64-linux-gnu/PamAuthentication/libPamAuthentication.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/lib/x86_64-linux-gnu/PamAuthentication/libPamAuthentication.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/lib/x86_64-linux-gnu/PamAuthentication/libPamAuthentication.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/lib/x86_64-linux-gnu/PamAuthentication" TYPE MODULE FILES "/home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/PamAuthentication/PamAuthentication/libPamAuthentication.so")
  if(EXISTS "$ENV{DESTDIR}/lib/x86_64-linux-gnu/PamAuthentication/libPamAuthentication.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/lib/x86_64-linux-gnu/PamAuthentication/libPamAuthentication.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/lib/x86_64-linux-gnu/PamAuthentication/libPamAuthentication.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/lib/x86_64-linux-gnu/PamAuthentication/qmldir")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/lib/x86_64-linux-gnu/PamAuthentication" TYPE FILE FILES "/home/brian/dev/ubuntu/apps/kidbrowser/plugins/PamAuthentication/qmldir")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/lib/x86_64-linux-gnu/PamAuthentication/PasswordDialog.qml;/lib/x86_64-linux-gnu/PamAuthentication/AuthenticationHandler.qml")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/lib/x86_64-linux-gnu/PamAuthentication" TYPE FILE FILES
    "/home/brian/dev/ubuntu/apps/kidbrowser/plugins/PamAuthentication/PasswordDialog.qml"
    "/home/brian/dev/ubuntu/apps/kidbrowser/plugins/PamAuthentication/AuthenticationHandler.qml"
    )
endif()

