add_custom_target(_highlight_${CMAKE_PROJECT_NAME})

function(highlight_matching GLOB)
    file(GLOB_RECURSE MATCHED ${GLOB})
    set_property(TARGET _highlight_${CMAKE_PROJECT_NAME} APPEND PROPERTY SOURCES ${MATCHED})
endfunction()


macro(register_definitions)
    list(APPEND _CMAKEUTILS_DEFINITION_LIST ${ARGN})
    string_prepend(_CMAKEUTILS_REGISTER_DEFINITIONS_TEMP_LIST "-D" ${ARGN})
    add_definitions(${_CMAKEUTILS_REGISTER_DEFINITIONS_TEMP_LIST})
    unset(_CMAKEUTILS_REGISTER_DEFINITIONS_TEMP_LIST)
endmacro()

function(dump_definitions)
    string_append(DUMP "\n" ${_CMAKEUTILS_DEFINITION_LIST})
    string(REGEX REPLACE "\n$" "" DUMP ${DUMP})
    message(${DUMP})
endfunction()
