# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "noetic_industrial: 0 messages, 1 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(noetic_industrial_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/varad/catkin_ws/src/noetic_industrial/srv/LocalisePart.srv" NAME_WE)
add_custom_target(_noetic_industrial_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "noetic_industrial" "/home/varad/catkin_ws/src/noetic_industrial/srv/LocalisePart.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(noetic_industrial
  "/home/varad/catkin_ws/src/noetic_industrial/srv/LocalisePart.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/noetic_industrial
)

### Generating Module File
_generate_module_cpp(noetic_industrial
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/noetic_industrial
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(noetic_industrial_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(noetic_industrial_generate_messages noetic_industrial_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/varad/catkin_ws/src/noetic_industrial/srv/LocalisePart.srv" NAME_WE)
add_dependencies(noetic_industrial_generate_messages_cpp _noetic_industrial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(noetic_industrial_gencpp)
add_dependencies(noetic_industrial_gencpp noetic_industrial_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS noetic_industrial_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(noetic_industrial
  "/home/varad/catkin_ws/src/noetic_industrial/srv/LocalisePart.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/noetic_industrial
)

### Generating Module File
_generate_module_eus(noetic_industrial
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/noetic_industrial
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(noetic_industrial_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(noetic_industrial_generate_messages noetic_industrial_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/varad/catkin_ws/src/noetic_industrial/srv/LocalisePart.srv" NAME_WE)
add_dependencies(noetic_industrial_generate_messages_eus _noetic_industrial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(noetic_industrial_geneus)
add_dependencies(noetic_industrial_geneus noetic_industrial_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS noetic_industrial_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(noetic_industrial
  "/home/varad/catkin_ws/src/noetic_industrial/srv/LocalisePart.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/noetic_industrial
)

### Generating Module File
_generate_module_lisp(noetic_industrial
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/noetic_industrial
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(noetic_industrial_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(noetic_industrial_generate_messages noetic_industrial_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/varad/catkin_ws/src/noetic_industrial/srv/LocalisePart.srv" NAME_WE)
add_dependencies(noetic_industrial_generate_messages_lisp _noetic_industrial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(noetic_industrial_genlisp)
add_dependencies(noetic_industrial_genlisp noetic_industrial_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS noetic_industrial_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(noetic_industrial
  "/home/varad/catkin_ws/src/noetic_industrial/srv/LocalisePart.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/noetic_industrial
)

### Generating Module File
_generate_module_nodejs(noetic_industrial
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/noetic_industrial
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(noetic_industrial_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(noetic_industrial_generate_messages noetic_industrial_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/varad/catkin_ws/src/noetic_industrial/srv/LocalisePart.srv" NAME_WE)
add_dependencies(noetic_industrial_generate_messages_nodejs _noetic_industrial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(noetic_industrial_gennodejs)
add_dependencies(noetic_industrial_gennodejs noetic_industrial_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS noetic_industrial_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(noetic_industrial
  "/home/varad/catkin_ws/src/noetic_industrial/srv/LocalisePart.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/noetic_industrial
)

### Generating Module File
_generate_module_py(noetic_industrial
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/noetic_industrial
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(noetic_industrial_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(noetic_industrial_generate_messages noetic_industrial_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/varad/catkin_ws/src/noetic_industrial/srv/LocalisePart.srv" NAME_WE)
add_dependencies(noetic_industrial_generate_messages_py _noetic_industrial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(noetic_industrial_genpy)
add_dependencies(noetic_industrial_genpy noetic_industrial_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS noetic_industrial_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/noetic_industrial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/noetic_industrial
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(noetic_industrial_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/noetic_industrial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/noetic_industrial
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(noetic_industrial_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/noetic_industrial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/noetic_industrial
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(noetic_industrial_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/noetic_industrial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/noetic_industrial
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(noetic_industrial_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/noetic_industrial)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/noetic_industrial\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/noetic_industrial
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(noetic_industrial_generate_messages_py geometry_msgs_generate_messages_py)
endif()
