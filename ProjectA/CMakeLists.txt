cmake_minimum_required(VERSION 3.10)

set(EXE_APP_NAME "Exe_Ex")
set(PROJECT_NAME ${EXE_APP_NAME})

project(${PROJECT_NAME} LANGUAGES CXX)
add_executable(${PROJECT_NAME} Exe_Ex.cpp)

add_subdirectory(component_a)

target_link_libraries(${PROJECT_NAME}
    
    PRIVATE
        ex
)

install(TARGETS ${PROJECT_NAME}
    RUNTIME DESTINATION build/
    PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE
)