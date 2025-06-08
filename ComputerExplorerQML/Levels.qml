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
            rows: 7
            columns: 14
            rowSpacing: 0
            columnSpacing: 0
            Repeater{
                model: 14*7
                Rectangle{
                    visible: true
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    color: "transparent";
                    border.color: "red"
                    border.width: 1
                    MouseArea {
                        anchors.fill: parent
                        cursorShape: (index === 17) ? Qt.PointingHandCursor : Qt.ArrowCursor
                        onClicked: {
                            if (index === 17){
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
