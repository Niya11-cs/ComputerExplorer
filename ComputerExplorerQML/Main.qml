import QtQuick
import QtQuick.Layouts

Window {
    id: mainWindow
    color: "#e0eaff"
    visibility: Window.Maximized
    width: Screen.width
    height: Screen.height
    visible: true
    title: qsTr("Computer Explorer")

    StackLayout {
        id: mainScreensStack
        anchors.fill: parent
        currentIndex: 0

        HomeScreen {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        Levels {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        Game {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        WelcomeTutorial {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}
