# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appexample2_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appexample2_autogen.dir/ParseCache.txt"
  "appexample2_autogen"
  )
endif()
