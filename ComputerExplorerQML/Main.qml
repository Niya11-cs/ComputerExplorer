import QtQuick
import QtQuick.Controls

Window {
    id: root
    color: "#5fff5e"
    width: 800
    height: 800
    visible: true
    title: qsTr("Computer Explorer")

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: "HomeScreen.qml"  // Load the home screen first
    }
}
