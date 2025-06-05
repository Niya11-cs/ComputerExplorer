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
    }

    Rectangle {
        id: buttonsHolder
        anchors.fill: parent
        color: "transparent"

        GridLayout{
            anchors.fill: parent
            rows: 18
            columns: 32
            rowSpacing: 0
            columnSpacing: 0
            Repeater{
                model: 32*18
                Rectangle{
                    visible: true
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    color: "transparent";
                    MouseArea {
                        anchors.fill: parent
                        cursorShape: (index === 356) ? Qt.PointingHandCursor : Qt.ArrowCursor
                        onClicked: {
                            if (index === 356|| index === 133 || index === 171|| index === 296){
                                console.log("Button clicked: " + index)
                                stackView.push("Game.qml")
                            }
                            else {
                                console.log("Empty rec")
                            }
                        }
                    }
                }
            }
        }
    }
}
