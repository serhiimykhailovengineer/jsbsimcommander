
set(libDeprecated_a_SOURCES
    deprecated/wxexpr.cpp
    deprecated/dosyacc.c
)

add_library(Deprecated STATIC 
    ${libDeprecated_a_SOURCES}
)
target_compile_definitions(Deprecated PUBLIC wxUSE_DEPRECATED=1 ${WX_CXXFLAGS})
target_include_directories(Deprecated PRIVATE deprecated)
target_link_libraries(Deprecated PUBLIC CommonHeader ${wxWidgets_LIBRARIES})

set(libOGL_a_SOURCES
    ogl/basic2.cpp
    ogl/bmpshape.cpp
    ogl/composit.cpp
    ogl/divided.cpp
    ogl/lines.cpp
    ogl/ogldiag.cpp
    ogl/basic.cpp
    ogl/canvas.cpp
    ogl/constrnt.cpp
    ogl/drawn.cpp
    ogl/mfutils.cpp
    ogl/oglmisc.cpp
)

add_library(OGL STATIC 
    ${libOGL_a_SOURCES}
)
target_compile_definitions(OGL PUBLIC wxUSE_DEPRECATED=1 wxUSE_PROLOGIO=1 ${WX_CXXFLAGS})
target_include_directories(OGL PRIVATE ogl)
target_link_libraries(OGL PUBLIC CommonHeader wxWidgets::wxWidgets)

set(libPlot_a_SOURCES
    plot/plot.cpp
)

add_library(Plot STATIC 
    ${libPlot_a_SOURCES}
)
target_compile_definitions(Plot PUBLIC ${WX_CXXFLAGS})
target_include_directories(Plot PRIVATE plot)
target_link_libraries(Plot PUBLIC CommonHeader)