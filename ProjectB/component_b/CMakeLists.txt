cmake_minimum_required(VERSION 3.13)

set(SOFTWARE_COMPONENT_NAME exB)

add_library(${SOFTWARE_COMPONENT_NAME} STATIC)
add_subdirectory(src)

target_include_directories(${SOFTWARE_COMPONENT_NAME}
    PUBLIC
        ${CMAKE_CURRENT_LIST_DIR}/inc
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/src
)