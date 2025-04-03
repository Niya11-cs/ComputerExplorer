import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    visible: true
    width: parent.width
    height: parent.height

    Image {
        source: "images/1levels.jpg"
        anchors.fill: parent
    }

    Image {
        source: "images/first_level_icon.png"
        width: 345
        height: 275
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.bottomMargin: 230
        anchors.leftMargin: 120

        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor

            onClicked: {
                stackView.push("Game.qml")
            }
        }
    }
}
