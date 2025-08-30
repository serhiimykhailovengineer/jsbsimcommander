set(libInputOutput_a_SOURCES
    FGPropertyManager.cpp
    FGXMLElement.cpp
    FGXMLParse.cpp
)

add_library(InputOutput STATIC 
    ${libInputOutput_a_SOURCES}
)
target_include_directories(InputOutput PUBLIC .)
target_link_libraries(InputOutput PUBLIC CommonHeader)
