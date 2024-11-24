import QtQuick

Window {
    width: 800
    height: 800
    visible: true
    title: qsTr("Niya Tic Tac Toe")

    Grid{
        id: grid
        anchors.fill: parent
        rows: 3
        columns: 3

        Repeater{
            model: 9

            Rectangle {
                property int playerIndex: 0

                width: parent.width / 3
                height: parent.height / 3
                border.color: "blue"
                border.width: 2

                Image{
                    id: image
                    anchors.fill: parent
                    source: parent.playerIndex === 0 ? "images/x.png": "images/circle.png"
                    visible: false
                }

                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        console.log(index)
                        parent.playerIndex = cppManager.handleClick()
                        image.visible = true
                    }
                }
            }
        }
    }
}
