include(${CMAKE_CURRENT_LIST_DIR}/String.cmake)


string(ASCII 27 _CMAKEUTILS_TERMINAL_ESCAPE)

set(_CMAKEUTILS_TERMINAL_COLOR_BLACK "${_CMAKEUTILS_TERMINAL_ESCAPE}[30m")
set(_CMAKEUTILS_TERMINAL_COLOR_RED "${_CMAKEUTILS_TERMINAL_ESCAPE}[31m")
set(_CMAKEUTILS_TERMINAL_COLOR_GREEN "${_CMAKEUTILS_TERMINAL_ESCAPE}[32m")
set(_CMAKEUTILS_TERMINAL_COLOR_YELLOW "${_CMAKEUTILS_TERMINAL_ESCAPE}[33m")
set(_CMAKEUTILS_TERMINAL_COLOR_BLUE "${_CMAKEUTILS_TERMINAL_ESCAPE}[34m")
set(_CMAKEUTILS_TERMINAL_COLOR_MAGENTA "${_CMAKEUTILS_TERMINAL_ESCAPE}[35m")
set(_CMAKEUTILS_TERMINAL_COLOR_CYAN "${_CMAKEUTILS_TERMINAL_ESCAPE}[36m")
set(_CMAKEUTILS_TERMINAL_COLOR_WHITE "${_CMAKEUTILS_TERMINAL_ESCAPE}[37m")

set(_CMAKEUTILS_TERMINAL_ATTRIBUTE_RESET "${_CMAKEUTILS_TERMINAL_ESCAPE}[0m")


function(log LOG_LEVEL)
    if(${LOG_LEVEL} STREQUAL "info")
        set(LOG_COLOR ${_CMAKEUTILS_TERMINAL_COLOR_WHITE})
    elseif(${LOG_LEVEL} STREQUAL "warning")
        set(LOG_COLOR ${_CMAKEUTILS_TERMINAL_COLOR_YELLOW})
    elseif(${LOG_LEVEL} STREQUAL "error")
        set(LOG_COLOR ${_CMAKEUTILS_TERMINAL_COLOR_RED})
    elseif(${LOG_LEVEL} STREQUAL "highlight")
        set(LOG_COLOR ${_CMAKEUTILS_TERMINAL_COLOR_CYAN})
    else()
        message(FATAL_ERROR "Unknown log level: " ${LOG_LEVEL})
    endif()

    string_join(MESSAGE " " ${ARGN})
    message("${_CMAKEUTILS_TERMINAL_COLOR_BLUE}[${PROJECT_NAME}]${_CMAKEUTILS_TERMINAL_ATTRIBUTE_RESET} ${LOG_COLOR}[${LOG_LEVEL}] ${MESSAGE} ${_CMAKEUTILS_TERMINAL_ATTRIBUTE_RESET}")
endfunction()