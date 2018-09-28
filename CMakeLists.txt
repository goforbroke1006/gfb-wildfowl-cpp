cmake_minimum_required(VERSION 3.10)
project(gfb_wildfowl)

set(CMAKE_CXX_STANDARD 11)

add_library(gfb_wildfowl SHARED wildfowl.cpp wildfowl.h)


set(PUBLIC_HEADER_FILES wildfowl.h)
set_target_properties(gfb_wildfowl
        PROPERTIES    PUBLIC_HEADER           "${PUBLIC_HEADER_FILES}"
        )
install(TARGETS                                 gfb_wildfowl
        LIBRARY             DESTINATION         lib
        PUBLIC_HEADER       DESTINATION         include/${PROJECT_NAME}
        )