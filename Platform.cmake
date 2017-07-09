function (detect_clang_compiler OUT)
    if ("${CMAKE_CXX_COMPILER_ID}" MATCHES "Clang")
        set(${OUT} True PARENT_SCOPE)
    endif()
endfunction()

function (detect_gcc_compiler OUT)
    if ("${CMAKE_CXX_COMPILER_ID}" MATCHES "GNU")
        set(${OUT} True PARENT_SCOPE)
    endif()
endfunction()

function (detect_intel_compiler OUT)
    if ("${CMAKE_CXX_COMPILER_ID}" MATCHES "Intel")
        set(${OUT} True PARENT_SCOPE)
    endif()
endfunction()

function (detect_ms_compiler OUT)
    if ("${CMAKE_CXX_COMPILER_ID}" MATCHES "MSVC")
        set(${OUT} True PARENT_SCOPE)
    endif()
endfunction()

