# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "count_pkg: 1 messages, 0 services")

set(MSG_I_FLAGS "-Icount_pkg:/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_4/nomeer_ws/src/count_pkg/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(count_pkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_4/nomeer_ws/src/count_pkg/msg/cmplx.msg" NAME_WE)
add_custom_target(_count_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "count_pkg" "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_4/nomeer_ws/src/count_pkg/msg/cmplx.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(count_pkg
  "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_4/nomeer_ws/src/count_pkg/msg/cmplx.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/count_pkg
)

### Generating Services

### Generating Module File
_generate_module_cpp(count_pkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/count_pkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(count_pkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(count_pkg_generate_messages count_pkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_4/nomeer_ws/src/count_pkg/msg/cmplx.msg" NAME_WE)
add_dependencies(count_pkg_generate_messages_cpp _count_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(count_pkg_gencpp)
add_dependencies(count_pkg_gencpp count_pkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS count_pkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(count_pkg
  "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_4/nomeer_ws/src/count_pkg/msg/cmplx.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/count_pkg
)

### Generating Services

### Generating Module File
_generate_module_eus(count_pkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/count_pkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(count_pkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(count_pkg_generate_messages count_pkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_4/nomeer_ws/src/count_pkg/msg/cmplx.msg" NAME_WE)
add_dependencies(count_pkg_generate_messages_eus _count_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(count_pkg_geneus)
add_dependencies(count_pkg_geneus count_pkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS count_pkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(count_pkg
  "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_4/nomeer_ws/src/count_pkg/msg/cmplx.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/count_pkg
)

### Generating Services

### Generating Module File
_generate_module_lisp(count_pkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/count_pkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(count_pkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(count_pkg_generate_messages count_pkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_4/nomeer_ws/src/count_pkg/msg/cmplx.msg" NAME_WE)
add_dependencies(count_pkg_generate_messages_lisp _count_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(count_pkg_genlisp)
add_dependencies(count_pkg_genlisp count_pkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS count_pkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(count_pkg
  "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_4/nomeer_ws/src/count_pkg/msg/cmplx.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/count_pkg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(count_pkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/count_pkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(count_pkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(count_pkg_generate_messages count_pkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_4/nomeer_ws/src/count_pkg/msg/cmplx.msg" NAME_WE)
add_dependencies(count_pkg_generate_messages_nodejs _count_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(count_pkg_gennodejs)
add_dependencies(count_pkg_gennodejs count_pkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS count_pkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(count_pkg
  "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_4/nomeer_ws/src/count_pkg/msg/cmplx.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/count_pkg
)

### Generating Services

### Generating Module File
_generate_module_py(count_pkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/count_pkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(count_pkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(count_pkg_generate_messages count_pkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nomeer/NoMeEr/Robotics/Courses/Robotics Corner/ROS/Tasks/Task_4/nomeer_ws/src/count_pkg/msg/cmplx.msg" NAME_WE)
add_dependencies(count_pkg_generate_messages_py _count_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(count_pkg_genpy)
add_dependencies(count_pkg_genpy count_pkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS count_pkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/count_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/count_pkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(count_pkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/count_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/count_pkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(count_pkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/count_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/count_pkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(count_pkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/count_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/count_pkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(count_pkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/count_pkg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/count_pkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/count_pkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(count_pkg_generate_messages_py std_msgs_generate_messages_py)
endif()
