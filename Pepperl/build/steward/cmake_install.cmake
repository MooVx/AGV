# Install script for directory: /home/dawid/AGV/Pepperl/src/steward

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/dawid/AGV/Pepperl/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/steward/msg" TYPE FILE FILES
    "/home/dawid/AGV/Pepperl/src/steward/msg/STMdata.msg"
    "/home/dawid/AGV/Pepperl/src/steward/msg/Camera.msg"
    "/home/dawid/AGV/Pepperl/src/steward/msg/Motors.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/steward/action" TYPE FILE FILES "/home/dawid/AGV/Pepperl/src/steward/action/Motors.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/steward/msg" TYPE FILE FILES
    "/home/dawid/AGV/Pepperl/devel/share/steward/msg/MotorsAction.msg"
    "/home/dawid/AGV/Pepperl/devel/share/steward/msg/MotorsActionGoal.msg"
    "/home/dawid/AGV/Pepperl/devel/share/steward/msg/MotorsActionResult.msg"
    "/home/dawid/AGV/Pepperl/devel/share/steward/msg/MotorsActionFeedback.msg"
    "/home/dawid/AGV/Pepperl/devel/share/steward/msg/MotorsGoal.msg"
    "/home/dawid/AGV/Pepperl/devel/share/steward/msg/MotorsResult.msg"
    "/home/dawid/AGV/Pepperl/devel/share/steward/msg/MotorsFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/steward/cmake" TYPE FILE FILES "/home/dawid/AGV/Pepperl/build/steward/catkin_generated/installspace/steward-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/dawid/AGV/Pepperl/devel/include/steward")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/dawid/AGV/Pepperl/devel/share/roseus/ros/steward")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/dawid/AGV/Pepperl/devel/share/common-lisp/ros/steward")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/dawid/AGV/Pepperl/devel/share/gennodejs/ros/steward")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/dawid/AGV/Pepperl/devel/lib/python2.7/dist-packages/steward")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/dawid/AGV/Pepperl/devel/lib/python2.7/dist-packages/steward")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/dawid/AGV/Pepperl/build/steward/catkin_generated/installspace/steward.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/steward/cmake" TYPE FILE FILES "/home/dawid/AGV/Pepperl/build/steward/catkin_generated/installspace/steward-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/steward/cmake" TYPE FILE FILES
    "/home/dawid/AGV/Pepperl/build/steward/catkin_generated/installspace/stewardConfig.cmake"
    "/home/dawid/AGV/Pepperl/build/steward/catkin_generated/installspace/stewardConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/steward" TYPE FILE FILES "/home/dawid/AGV/Pepperl/src/steward/package.xml")
endif()

