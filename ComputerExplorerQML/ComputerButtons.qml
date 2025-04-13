import QtQuick
import QtQuick.Layouts

Item {
    Rectangle {
        anchors.fill: parent
        color: "red"
    }

    ColumnLayout {
        anchors.centerIn: parent

        Image {
            id: startButton
            Layout.preferredHeight: 60
            Layout.preferredWidth: 60
            source: "qrc:/ComputerExplorerQML/images/start_wb.png"
            sourceSize: Qt.size(60, 60)
            fillMode: Image.PreserveAspectCrop

            MouseArea {
                id: startButtonMouseArea
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor

                onClicked: {
                    console.log("start program");
                    computer.startProgram();
                }
            }
        }

        Rectangle {
            Layout.preferredHeight: 40
            Layout.preferredWidth: 40
            color: "blue"
            MouseArea {
                id: resetButtonMouseArea
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor

                onClicked: {
                    console.log("reset program");
                    computer.resetProgram();
                }
            }
        }

        Rectangle {
            Layout.preferredHeight: 40
            Layout.preferredWidth: 40
            color: "green"
            MouseArea {
                id: clearButtonMouseArea
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor

                onClicked: {
                    console.log("clear program");
                    computer.clearProgram();
                }
            }
        }
    }
}
