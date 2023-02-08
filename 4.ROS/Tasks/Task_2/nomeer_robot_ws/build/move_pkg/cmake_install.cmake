# Install script for directory: /home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_2/nomeer_robot_ws/src/move_pkg

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_2/nomeer_robot_ws/install")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/move_pkg/msg" TYPE FILE FILES "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_2/nomeer_robot_ws/src/move_pkg/msg/Age.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/move_pkg/cmake" TYPE FILE FILES "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_2/nomeer_robot_ws/build/move_pkg/catkin_generated/installspace/move_pkg-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_2/nomeer_robot_ws/devel/include/move_pkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_2/nomeer_robot_ws/devel/share/roseus/ros/move_pkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_2/nomeer_robot_ws/devel/share/common-lisp/ros/move_pkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_2/nomeer_robot_ws/devel/share/gennodejs/ros/move_pkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_2/nomeer_robot_ws/devel/lib/python3/dist-packages/move_pkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_2/nomeer_robot_ws/devel/lib/python3/dist-packages/move_pkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_2/nomeer_robot_ws/build/move_pkg/catkin_generated/installspace/move_pkg.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/move_pkg/cmake" TYPE FILE FILES "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_2/nomeer_robot_ws/build/move_pkg/catkin_generated/installspace/move_pkg-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/move_pkg/cmake" TYPE FILE FILES
    "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_2/nomeer_robot_ws/build/move_pkg/catkin_generated/installspace/move_pkgConfig.cmake"
    "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_2/nomeer_robot_ws/build/move_pkg/catkin_generated/installspace/move_pkgConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/move_pkg" TYPE FILE FILES "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_2/nomeer_robot_ws/src/move_pkg/package.xml")
endif()

