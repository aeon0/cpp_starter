add_executable(${PROJECT_NAME} main.cpp adder.cpp)

install(TARGETS ${PROJECT_NAME} DESTINATION ${INSTALL_DIR})