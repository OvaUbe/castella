include(${CMAKE_CURRENT_LIST_DIR}/Log.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/String.cmake)


add_custom_target(_highlight_${PROJECT_NAME})

function(highlight_matching GLOB)
    file(GLOB_RECURSE MATCHED ${GLOB})
    set_property(TARGET _highlight_${PROJECT_NAME} APPEND PROPERTY SOURCES ${MATCHED})
endfunction()

set(_CMAKEUTILS_DEFINITION_LIST_${PROJECT_NAME} "")

macro(register_definitions)
    list(APPEND _CMAKEUTILS_DEFINITION_LIST_${PROJECT_NAME} ${ARGN})
    string_prepend(_CMAKEUTILS_REGISTER_DEFINITIONS_TEMP_LIST "-D" ${ARGN})
    add_definitions(${_CMAKEUTILS_REGISTER_DEFINITIONS_TEMP_LIST})
    unset(_CMAKEUTILS_REGISTER_DEFINITIONS_TEMP_LIST)
endmacro()

function(dump_definitions)
    string_append(DUMP "\n" ${_CMAKEUTILS_DEFINITION_LIST_${PROJECT_NAME}})
    string_prepend(DUMP "    " ${DUMP})
    string(REGEX REPLACE "\n$" "" DUMP ${DUMP})

    log(info "Definitions:\n${DUMP}")
endfunction()
