import QtQuick
import QtQuick.Controls

Window {
    id: mainWindow
    color: "#5fff5e"
    visibility: "Maximized"
    width: Screen.width
    height: Screen.height
    visible: true
    title: qsTr("Computer Explorer")

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: "HomeScreen.qml"
    }
}
