cmake_minimum_required(VERSION 3.16)

project(ComputerExplorerQML VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

set(app_icon_resource_windows "${CMAKE_CURRENT_SOURCE_DIR}/resources/computer_explorer.rc")

qt_add_executable(appComputerExplorerQML
    main.cpp
    ${app_icon_resource_windows}
)

qt_add_qml_module(appComputerExplorerQML
    URI ComputerExplorerQML
    VERSION 1.0
    QML_FILES
        Main.qml
        SOURCES computer.cpp computer.h
        RESOURCES
        QML_FILES HomeScreen.qml
        QML_FILES Game.qml
        RESOURCES images/main_page.png
        RESOURCES images/home_screen_background.png
        RESOURCES images/first_level.png
        RESOURCES
        RESOURCES
        RESOURCES images/start_button.png
        RESOURCES images/arrow.png
        QML_FILES ComputerScreen.qml
        QML_FILES ComputerCPUFlags.qml
        QML_FILES ComputerRegisters.qml
        QML_FILES ComputerRAM.qml
        QML_FILES
        QML_FILES ComputerButtons.qml
        RESOURCES
        RESOURCES
        RESOURCES
        RESOURCES images/circle_svg_vector.svg
        RESOURCES
        RESOURCES images/past_arrow.png
        RESOURCES images/next_arrow.png
        RESOURCES
        QML_FILES
        RESOURCES images/settings_icon.png
        RESOURCES images/help_icon.png
        RESOURCES images/level_icon.png
        QML_FILES
        QML_FILES
        RESOURCES images/levels.png
        QML_FILES Levels.qml
        RESOURCES images/arrow_next_level.png
        RESOURCES images/home_icon.png
        RESOURCES images/save_icon.png
        RESOURCES images/save_icon.png
        RESOURCES images/arrow_past_level.png
        RESOURCES images/first_level_icon.png
        RESOURCES images/1levels.jpg
        RESOURCES images/hint_icon.jpg
        RESOURCES images/settings_icon.jpg
        RESOURCES images/hint_icon.png
        RESOURCES images/lut.svg
        RESOURCES images/map_icon.svg
        RESOURCES images/message_warning_icon.svg
        RESOURCES images/img_2.png
        RESOURCES
        RESOURCES images/start_wb.png
        RESOURCES images/settings_wb.png
        RESOURCES images/save_wb.png
        RESOURCES images/home_wb.png
        RESOURCES images/reset_wb.png
        RESOURCES images/previous_arrow_wb.png
        RESOURCES images/next_arrow_wb.png
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appComputerExplorerQML PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appComputerExplorerQML
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appComputerExplorerQML
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appComputerExplorerQML
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
