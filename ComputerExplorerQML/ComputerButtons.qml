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
            Layout.preferredHeight: 40
            Layout.preferredWidth: 40
            source: "qrc:/ComputerExplorerQML/images/circle_svg_vector.svg"
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
        }
    }
}
