set(libGUI_a_SOURCES
    AeroDynamics_Diag.cpp
    ResultShow_Diag.cpp
    fcsprop_dlg.cpp
    kinemat_dlg.cpp
    AircraftDialog.cpp
    Table_Diag.cpp
    filter.cpp
    shape.cpp
    Axis_Diag.cpp
    TreeItem.cpp
    filter_dlg.cpp
    sum.cpp
    Engine_Diag.cpp
    Turbine_Diag.cpp
    func.cpp
    sum_dlg.cpp
    Function_Diag.cpp
    When_Diag.cpp
    func_dlg.cpp
    switch.cpp
    LGear_Diag.cpp
    condition.cpp
    gain.cpp
    switch_dlg.cpp
    Mass_Diag.cpp
    deadband.cpp
    gain_dlg.cpp
    toolbar.cpp
    Property_Diag.cpp
    deadband_dlg.cpp
    import.cpp
    view.cpp
    Propulsion_Diag.cpp
    doc.cpp
    kinemat.cpp
    EngineMgr_Diag.cpp
    MyFrame.cpp
    pid.cpp
    pid_dlg.cpp
    sensor.cpp
    sensor_dlg.cpp
    actuator.cpp
    actuator_dlg.cpp
)

add_library(GUI STATIC 
    ${libGUI_a_SOURCES}
)
target_include_directories(GUI PRIVATE .)
target_compile_definitions(GUI PUBLIC wxUSE_DEPRECATED=1 wxUSE_PROLOGIO=1)
target_link_libraries(GUI PUBLIC CommonHeader InputOutput Expat ${wxWidgets_LIBRARIES})
