function(install_tree OUT FILES PREFIX)
    foreach(F ${FILES})
        string(REGEX MATCH "(.*)[/\\]" DIR ${F})
        install(FILES ${F} DESTINATION ${PREFIX}/${DIR})
    endforeach()

    set(${OUT} ${RESULT} PARENT_SCOPE)
endfunction()
