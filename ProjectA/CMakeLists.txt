cmake_minimum_required(VERSION 3.13)

# Variable for Exe's name
set(EXE_APP_NAME "Exe_Ex")
set(PROJECT_NAME ${EXE_APP_NAME})

# Adds executable to the project
project(${PROJECT_NAME} LANGUAGES CXX)
add_executable(${PROJECT_NAME} Exe_Ex.cpp)

# Adds component name(s)
add_subdirectory(component_a)

# Links components to project
target_link_libraries(${PROJECT_NAME}
    PRIVATE
        ex
)

# Install params, permissions
install(TARGETS ${PROJECT_NAME}
    RUNTIME DESTINATION build/
    PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE
)