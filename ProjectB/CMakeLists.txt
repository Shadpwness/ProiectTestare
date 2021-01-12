cmake_minimum_required(VERSION 3.13)

# Exe's name
set(EXE_APP_NAME "Exe_ExB")
set(PROJECT_NAME ${EXE_APP_NAME})

# Executable to be added to Exe
project(${PROJECT_NAME} LANGUAGES CXX)
add_executable(${PROJECT_NAME} Exe_ExB.cpp)

# Adds component(s)
add_subdirectory(component_b)

# Links component(s)
target_link_libraries(${PROJECT_NAME}
    PRIVATE
        exB
)

# Install params, permissions
install(TARGETS ${PROJECT_NAME}
    RUNTIME DESTINATION build/
    PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE
)