function(string_join OUT SEPARATOR)
    string(REPLACE ";" ${SEPARATOR} RESULT "${ARGN}")

    set(${OUT} ${RESULT} PARENT_SCOPE)
endfunction()

function(string_prepend OUT PREFIX)
    foreach(STR ${ARGN})
        list(APPEND RESULT "${PREFIX}${STR}")
    endforeach()

    set(${OUT} ${RESULT} PARENT_SCOPE)
endfunction()

function(string_append OUT SUFFIX)
    foreach(STR ${ARGN})
        list(APPEND RESULT "${STR}${SUFFIX}")
    endforeach()

    set(${OUT} ${RESULT} PARENT_SCOPE)
endfunction()
