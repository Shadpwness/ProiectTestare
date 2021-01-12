cmake_minimum_required(VERSION 3.13)

set(EXE_APP_NAME "Exe_ExB")
set(PROJECT_NAME ${EXE_APP_NAME})

project(${PROJECT_NAME} LANGUAGES CXX)
add_executable(${PROJECT_NAME} Exe_ExB.cpp)

add_subdirectory(component_b)

target_link_libraries(${PROJECT_NAME}
    
    PRIVATE
        exB
)

install(TARGETS ${PROJECT_NAME}
    RUNTIME DESTINATION build/
    PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE
)