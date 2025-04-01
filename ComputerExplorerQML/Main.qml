import QtQuick
import QtQuick.Controls

Window {
    id: mainWindow
    color: "#5fff5e"
    width: Screen.width
    height: Screen.height
    visible: true
    title: qsTr("Computer Explorer")

    StackView {
        id: stack
        anchors.fill: parent
        initialItem: "Levels.qml"
    }

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: "HomeScreen.qml"
    }

    property StackView stackView

}
