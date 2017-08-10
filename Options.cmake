include(${CMAKE_CURRENT_LIST_DIR}/Log.cmake)


function(set_option OPTION VALUE DESCRIPTION)
    set(${OPTION} ${VALUE} PARENT_SCOPE)
    log(info "${OPTION}: ${VALUE} (${DESCRIPTION})")
endfunction()
