add_library(simgear INTERFACE)
target_include_directories(simgear INTERFACE .)

set(libProperties_a_SOURCES
    props/props.cxx
)

add_library(Properties STATIC 
    ${libProperties_a_SOURCES}
)
target_include_directories(Properties PRIVATE props)
target_link_libraries(Properties PUBLIC CommonHeader simgear)

set(libExpat_a_SOURCES
    xml/xmlparse.c
    xml/xmltok.c
    xml/xmlrole.c
    xml/easyxml.cxx
)

add_library(Expat STATIC 
    ${libExpat_a_SOURCES}
)
target_compile_definitions(Expat PUBLIC NOSIMGEAR HAVE_EXPAT_CONFIG_H HAVE_MEMMOVE)
target_include_directories(Expat PRIVATE xml)
target_link_libraries(Expat PUBLIC CommonHeader simgear)
