import QtQuick
import QtQuick.Window

Window {
    width: 800
    height: 800
    visible: true
    title: qsTr("Tic Tac Toe")

    Grid {
        id: grid
        anchors.fill: parent
        rows: 3
        columns: 3

        Repeater {
            model: 9

            Rectangle {
                property int playerIndex: 0

                Image {
                    id: image
                    anchors.fill: parent
                    source: playerIndex === 0 ? "images/x_player.png" : "images/o_player.png"
                    visible: false
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        console.log("Mouse clicked: " + index)

                        playerIndex = cppManager.handleClick(index)
                        image.visible = true
                    }
                }

                width: grid.width / grid.columns
                height: grid.height / grid.rows
                color: "transparent"
                border.color: "black"
                border.width: 1
            }
        }
    }
}
