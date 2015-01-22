include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}
)

set(
    Squirclebackend_SRCS
    modules/Squircle/backend.cpp
    modules/Squircle/squircle.cpp
)

add_library(Squirclebackend MODULE
    ${Squirclebackend_SRCS}
)

set_target_properties(Squirclebackend PROPERTIES
         LIBRARY_OUTPUT_DIRECTORY Squircle)

qt5_use_modules(Squirclebackend Gui Qml Quick)

# Copy qmldir file to build dir for running in QtCreator
add_custom_target(Squirclebackend-qmldir ALL
    COMMAND cp ${CMAKE_CURRENT_SOURCE_DIR}/modules/Squircle/qmldir ${CMAKE_CURRENT_BINARY_DIR}/Squircle
    DEPENDS ${QMLFILES}
)

# Install plugin file
install(TARGETS Squirclebackend DESTINATION ${QT_IMPORTS_DIR}/Squircle/)
install(FILES   modules/Squircle/qmldir DESTINATION ${QT_IMPORTS_DIR}/Squircle/)

