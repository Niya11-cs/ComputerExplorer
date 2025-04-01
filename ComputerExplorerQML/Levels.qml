import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    visible: true
    width: parent.width
    height: parent.height

    StackView {
        id: stack
        anchors.fill: parent
        initialItem: levelPage
    }

    Item {
        id: levelPage

        Image {
            source: "images/1levels.jpg"
            anchors.fill: parent
        }

        property alias stack: stack

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
                    if (stack) {
                        stack.push("Game.qml")
                    }
                }
            }
        }
    }
}
