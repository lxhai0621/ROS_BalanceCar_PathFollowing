# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "algorithm_simulation: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ialgorithm_simulation:/home/li/balance_car_simulation/src/algorithm_simulation/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(algorithm_simulation_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Lane.msg" NAME_WE)
add_custom_target(_algorithm_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "algorithm_simulation" "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Lane.msg" "geometry_msgs/Point:geometry_msgs/Twist:geometry_msgs/PoseStamped:geometry_msgs/Vector3:geometry_msgs/Pose:algorithm_simulation/Waypoint:std_msgs/Header:geometry_msgs/TwistStamped:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Waypoint.msg" NAME_WE)
add_custom_target(_algorithm_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "algorithm_simulation" "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Waypoint.msg" "geometry_msgs/Point:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/TwistStamped:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(algorithm_simulation
  "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/li/balance_car_simulation/src/algorithm_simulation/msg/Waypoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/algorithm_simulation
)
_generate_msg_cpp(algorithm_simulation
  "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/algorithm_simulation
)

### Generating Services

### Generating Module File
_generate_module_cpp(algorithm_simulation
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/algorithm_simulation
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(algorithm_simulation_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(algorithm_simulation_generate_messages algorithm_simulation_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Lane.msg" NAME_WE)
add_dependencies(algorithm_simulation_generate_messages_cpp _algorithm_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Waypoint.msg" NAME_WE)
add_dependencies(algorithm_simulation_generate_messages_cpp _algorithm_simulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(algorithm_simulation_gencpp)
add_dependencies(algorithm_simulation_gencpp algorithm_simulation_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS algorithm_simulation_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(algorithm_simulation
  "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/li/balance_car_simulation/src/algorithm_simulation/msg/Waypoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/algorithm_simulation
)
_generate_msg_eus(algorithm_simulation
  "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/algorithm_simulation
)

### Generating Services

### Generating Module File
_generate_module_eus(algorithm_simulation
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/algorithm_simulation
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(algorithm_simulation_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(algorithm_simulation_generate_messages algorithm_simulation_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Lane.msg" NAME_WE)
add_dependencies(algorithm_simulation_generate_messages_eus _algorithm_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Waypoint.msg" NAME_WE)
add_dependencies(algorithm_simulation_generate_messages_eus _algorithm_simulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(algorithm_simulation_geneus)
add_dependencies(algorithm_simulation_geneus algorithm_simulation_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS algorithm_simulation_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(algorithm_simulation
  "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/li/balance_car_simulation/src/algorithm_simulation/msg/Waypoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/algorithm_simulation
)
_generate_msg_lisp(algorithm_simulation
  "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/algorithm_simulation
)

### Generating Services

### Generating Module File
_generate_module_lisp(algorithm_simulation
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/algorithm_simulation
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(algorithm_simulation_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(algorithm_simulation_generate_messages algorithm_simulation_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Lane.msg" NAME_WE)
add_dependencies(algorithm_simulation_generate_messages_lisp _algorithm_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Waypoint.msg" NAME_WE)
add_dependencies(algorithm_simulation_generate_messages_lisp _algorithm_simulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(algorithm_simulation_genlisp)
add_dependencies(algorithm_simulation_genlisp algorithm_simulation_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS algorithm_simulation_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(algorithm_simulation
  "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/li/balance_car_simulation/src/algorithm_simulation/msg/Waypoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/algorithm_simulation
)
_generate_msg_nodejs(algorithm_simulation
  "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/algorithm_simulation
)

### Generating Services

### Generating Module File
_generate_module_nodejs(algorithm_simulation
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/algorithm_simulation
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(algorithm_simulation_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(algorithm_simulation_generate_messages algorithm_simulation_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Lane.msg" NAME_WE)
add_dependencies(algorithm_simulation_generate_messages_nodejs _algorithm_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Waypoint.msg" NAME_WE)
add_dependencies(algorithm_simulation_generate_messages_nodejs _algorithm_simulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(algorithm_simulation_gennodejs)
add_dependencies(algorithm_simulation_gennodejs algorithm_simulation_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS algorithm_simulation_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(algorithm_simulation
  "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/li/balance_car_simulation/src/algorithm_simulation/msg/Waypoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/algorithm_simulation
)
_generate_msg_py(algorithm_simulation
  "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/algorithm_simulation
)

### Generating Services

### Generating Module File
_generate_module_py(algorithm_simulation
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/algorithm_simulation
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(algorithm_simulation_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(algorithm_simulation_generate_messages algorithm_simulation_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Lane.msg" NAME_WE)
add_dependencies(algorithm_simulation_generate_messages_py _algorithm_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/li/balance_car_simulation/src/algorithm_simulation/msg/Waypoint.msg" NAME_WE)
add_dependencies(algorithm_simulation_generate_messages_py _algorithm_simulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(algorithm_simulation_genpy)
add_dependencies(algorithm_simulation_genpy algorithm_simulation_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS algorithm_simulation_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/algorithm_simulation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/algorithm_simulation
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(algorithm_simulation_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(algorithm_simulation_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/algorithm_simulation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/algorithm_simulation
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(algorithm_simulation_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(algorithm_simulation_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/algorithm_simulation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/algorithm_simulation
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(algorithm_simulation_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(algorithm_simulation_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/algorithm_simulation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/algorithm_simulation
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(algorithm_simulation_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(algorithm_simulation_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/algorithm_simulation)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/algorithm_simulation\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/algorithm_simulation
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(algorithm_simulation_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(algorithm_simulation_generate_messages_py geometry_msgs_generate_messages_py)
endif()
