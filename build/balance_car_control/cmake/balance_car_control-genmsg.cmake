# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "balance_car_control: 0 messages, 1 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(balance_car_control_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/li/balance_car_simulation/src/balance_car_control/srv/control_param.srv" NAME_WE)
add_custom_target(_balance_car_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "balance_car_control" "/home/li/balance_car_simulation/src/balance_car_control/srv/control_param.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(balance_car_control
  "/home/li/balance_car_simulation/src/balance_car_control/srv/control_param.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/balance_car_control
)

### Generating Module File
_generate_module_cpp(balance_car_control
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/balance_car_control
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(balance_car_control_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(balance_car_control_generate_messages balance_car_control_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/li/balance_car_simulation/src/balance_car_control/srv/control_param.srv" NAME_WE)
add_dependencies(balance_car_control_generate_messages_cpp _balance_car_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(balance_car_control_gencpp)
add_dependencies(balance_car_control_gencpp balance_car_control_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS balance_car_control_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(balance_car_control
  "/home/li/balance_car_simulation/src/balance_car_control/srv/control_param.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/balance_car_control
)

### Generating Module File
_generate_module_eus(balance_car_control
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/balance_car_control
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(balance_car_control_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(balance_car_control_generate_messages balance_car_control_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/li/balance_car_simulation/src/balance_car_control/srv/control_param.srv" NAME_WE)
add_dependencies(balance_car_control_generate_messages_eus _balance_car_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(balance_car_control_geneus)
add_dependencies(balance_car_control_geneus balance_car_control_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS balance_car_control_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(balance_car_control
  "/home/li/balance_car_simulation/src/balance_car_control/srv/control_param.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/balance_car_control
)

### Generating Module File
_generate_module_lisp(balance_car_control
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/balance_car_control
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(balance_car_control_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(balance_car_control_generate_messages balance_car_control_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/li/balance_car_simulation/src/balance_car_control/srv/control_param.srv" NAME_WE)
add_dependencies(balance_car_control_generate_messages_lisp _balance_car_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(balance_car_control_genlisp)
add_dependencies(balance_car_control_genlisp balance_car_control_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS balance_car_control_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(balance_car_control
  "/home/li/balance_car_simulation/src/balance_car_control/srv/control_param.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/balance_car_control
)

### Generating Module File
_generate_module_nodejs(balance_car_control
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/balance_car_control
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(balance_car_control_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(balance_car_control_generate_messages balance_car_control_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/li/balance_car_simulation/src/balance_car_control/srv/control_param.srv" NAME_WE)
add_dependencies(balance_car_control_generate_messages_nodejs _balance_car_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(balance_car_control_gennodejs)
add_dependencies(balance_car_control_gennodejs balance_car_control_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS balance_car_control_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(balance_car_control
  "/home/li/balance_car_simulation/src/balance_car_control/srv/control_param.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/balance_car_control
)

### Generating Module File
_generate_module_py(balance_car_control
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/balance_car_control
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(balance_car_control_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(balance_car_control_generate_messages balance_car_control_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/li/balance_car_simulation/src/balance_car_control/srv/control_param.srv" NAME_WE)
add_dependencies(balance_car_control_generate_messages_py _balance_car_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(balance_car_control_genpy)
add_dependencies(balance_car_control_genpy balance_car_control_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS balance_car_control_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/balance_car_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/balance_car_control
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(balance_car_control_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(balance_car_control_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(balance_car_control_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/balance_car_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/balance_car_control
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(balance_car_control_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(balance_car_control_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(balance_car_control_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/balance_car_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/balance_car_control
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(balance_car_control_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(balance_car_control_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(balance_car_control_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/balance_car_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/balance_car_control
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(balance_car_control_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(balance_car_control_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(balance_car_control_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/balance_car_control)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/balance_car_control\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/balance_car_control
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(balance_car_control_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(balance_car_control_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(balance_car_control_generate_messages_py std_msgs_generate_messages_py)
endif()
