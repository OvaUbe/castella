function(string_join OUT SEPARATOR)
    string(REPLACE ";" ${SEPARATOR} RESULT "${ARGN}")

    set(${OUT} ${RESULT} PARENT_SCOPE)
endfunction()
