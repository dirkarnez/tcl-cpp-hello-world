cmake_minimum_required(VERSION 3.14)

project(tcl-cpp-hello-world)

# set(CMAKE_CXX_STANDARD 11)
# set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_library(tcl STATIC IMPORTED)

set_property(
  TARGET tcl APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG
)

set_target_properties(tcl PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${TCL_ROOT}/tcl.lib"
)

set_property(
  TARGET tcl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE
)

set_target_properties(tcl PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${TCL_ROOT}/tcl.lib"
)
  
set_target_properties(tcl PROPERTIES
  MAP_IMPORTED_CONFIG_MINSIZEREL Release
  MAP_IMPORTED_CONFIG_RELWITHDEBINFO Release
)

target_include_directories(tcl INTERFACE "${TCL_ROOT}/include")

add_executable(${PROJECT_NAME} 
    "src/main.cpp"
)

target_link_libraries(${PROJECT_NAME} tcl)