add_custom_target(_highlight)

function(highlight_matching GLOB)
    file(GLOB_RECURSE MATCHED ${GLOB})
    set_property(TARGET _highlight APPEND PROPERTY SOURCES ${MATCHED})
endfunction()
