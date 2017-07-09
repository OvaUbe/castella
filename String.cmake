function(string_join OUT SEPARATOR)
    string(REPLACE ";" ${SEPARATOR} RESULT "${ARGN}")

    set(${OUT} ${RESULT} PARENT_SCOPE)
endfunction()

function(string_prepend OUT PREFIX)
    set(RESULT "")
    foreach(STR ${ARGN})
        list(append RESULT "${PREFIX}${STR}")
    endforeach()

    set(${OUT} ${RESULT} PARENT_SCOPE)
endfunction()
