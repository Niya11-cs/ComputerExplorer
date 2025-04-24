import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Controls 2.15

Item {
    visible: true
    width: parent.width
    height: parent.height

    Image {
        id: backgroundImage
        anchors.fill: parent
        source: "qrc:/ComputerExplorerQML/images/levels.png"
        fillMode: Image.PreserveAspectCrop
        z: -1
    }

    /*RowLayout {
        spacing: 0

        Repeater {
            model: 25

            Rectangle {
                width: Screen.width * 1 / 25
                height: Screen.height
                border.color: "black"

                Image {
                    visible: index % 2 === 0
                    anchors.centerIn: parent
                    source: "qrc:/ComputerExplorerQML/images/levels_icon.png"
                    width: Screen.width * 1 / 25
                    height: Screen.width * 1 / 25

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            console.log("Clicked image at index", index)
                        }
                    }
                }
            }
        }
    }*/


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
