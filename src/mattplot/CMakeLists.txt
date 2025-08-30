set(libMattPlot_a_SOURCES
    Table.cpp
    plot.cpp
    NomoFrm.cpp
    Condition.cpp
)

add_library(MattPlot STATIC 
    ${libMattPlot_a_SOURCES}
)
target_include_directories(MattPlot PRIVATE .)
target_link_libraries(MattPlot PUBLIC CommonHeader ${wxWidgets_LIBRARIES})


