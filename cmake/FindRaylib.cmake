option(USE_FALLBACK "If raylib can't be found, download and build from source" ON)

if(MINGW)
    set(raylib_INSTALL_PATH "C:/raylib" CACHE PATH "Path to raylib folder")
endif()

find_package(raylib QUIET)

if(MINGW)
    target_include_directories(${PROJECT_NAME} PRIVATE ${raylib_INSTALL_PATH}/raylib/src)
    target_link_libraries(${PROJECT_NAME} PRIVATE raylib winmm opengl32 gdi32)
elseif(raylib_FOUND)
    target_include_directories(${PROJECT_NAME} PRIVATE ${raylib_INCLUDE_DIRS})
    target_link_libraries(${PROJECT_NAME} PRIVATE ${raylib_LIBRARIES})
elseif(USE_FALLBACK)
    include(FetchContent)
    FetchContent_Declare(
        raylib
        URL https://github.com/raysan5/raylib/archive/refs/tags/3.7.0.tar.gz
        URL_HASH SHA256=7BFDF2E22F067F16DEC62B9D1530186DDBA63EC49DBD0AE6A8461B0367C23951
    )
    FetchContent_MakeAvailable(raylib)
    target_link_libraries(${PROJECT_NAME} PRIVATE raylib)
else()
    message(FATAL_ERROR "\nCouldn't find raylib and USE_FALLBACK is disabled.
    If using MinGW, ensure that the path to raylib is correct.\n")
endif()
