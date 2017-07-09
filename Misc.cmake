function(highlight_matching GLOB)
    file(GLOB_RECURSE MATCHED ${GLOB})
    add_custom_target(_highlight SOURCES ${MATCHED})
endfunction()
