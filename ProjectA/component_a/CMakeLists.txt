# Minimum CMake version
cmake_minimum_required(VERSION 3.13)

# Variable for component name
set(SOFTWARE_COMPONENT_NAME ex)

add_library(${SOFTWARE_COMPONENT_NAME} STATIC)

# Adds src directory's CMake
add_subdirectory(src)

# Link inc and src folders
target_include_directories(${SOFTWARE_COMPONENT_NAME}
    PUBLIC
        ${CMAKE_CURRENT_LIST_DIR}/inc
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/src
)