set(libMath_a_SOURCES
    FGColumnVector3.cpp
    bspline.cpp
    bsplines.cpp
    Matt1D.cpp
    MattMD.cpp
    FGFunction.cpp
    FGRealValue.cpp
    FGPropertyValue.cpp
    FGTable.cpp
)

add_library(Math STATIC 
    ${libMath_a_SOURCES}
)
target_include_directories(Math PRIVATE .)
target_link_libraries(Math PUBLIC CommonHeader)


