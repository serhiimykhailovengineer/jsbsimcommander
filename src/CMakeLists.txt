
add_compile_definitions(HAVE_CONFIG_H)

add_library(CommonHeader INTERFACE)
target_include_directories(CommonHeader INTERFACE .)

add_subdirectory(math)
add_subdirectory(gui)
add_subdirectory(input_output)
add_subdirectory(mattplot)
add_subdirectory(simgear)
add_subdirectory(wx)
# add_subdirectory(rc)

set(libJSBSim_a_SOURCES
	FGJSBBase.cpp
)

add_library(JSBSim STATIC 
    ${libJSBSim_a_SOURCES}
)
target_link_libraries(JSBSim PUBLIC CommonHeader)

# set(Commander_SOURCES
# 	Commander.cpp
# )

# add_executable(Commander ${Commander_SOURCES})
# target_link_libraries(Commander PUBLIC CommonHeader InputOutput Expat Properties GUI Math MattPlot Deprecated OGL Plot ${wxWidgets_LIBRARIES})

set(JSBSimCommander_SOURCES
	MyApp.cpp
)
add_executable(JSBSimCommander ${JSBSimCommander_SOURCES})
target_link_libraries(JSBSimCommander PUBLIC CommonHeader JSBSim InputOutput Expat Properties GUI Math MattPlot Deprecated OGL Plot ${wxWidgets_LIBRARIES})


