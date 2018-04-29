include(${CMAKE_CURRENT_LIST_DIR}/Log.cmake)


function(set_option OPTION VALUE DESCRIPTION)
    option(${OPTION} ${DESCRIPTION} ${VALUE})
    log(info "${OPTION}: ${${OPTION}} (${DESCRIPTION})")
endfunction()
