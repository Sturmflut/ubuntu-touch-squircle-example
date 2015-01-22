file(GLOB COMPONENTS_QML_JS_FILES *.qml *.js)

# Make the files visible in the qtcreator tree
add_custom_target(squircle_components_QMlFiles ALL SOURCES ${COMPONENTS_QML_JS_FILES})

install(FILES ${COMPONENTS_QML_JS_FILES} DESTINATION ${SQUIRCLE_DIR}/components)

