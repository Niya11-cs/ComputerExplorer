import QtQuick
import QtQuick.Controls

Window {
    id: mainWindow
    color: "#5fff5e"
    width: 1422
    height: 800
    visible: true
    title: qsTr("Computer Explorer")

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: "HomeScreen.qml"
    }
}
