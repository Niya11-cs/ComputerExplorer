import QtQuick
import QtQuick.Layouts

Item {

    ColumnLayout {
        anchors.centerIn: parent

        Image {
            id: startButton
            Layout.preferredHeight: 60
            Layout.preferredWidth: 60
            source: "qrc:/ComputerExplorerQML/images/start_wb.png"
            sourceSize: Qt.size(60, 60)
            fillMode: Image.PreserveAspectFit

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

        Image {
            id: resetButton
            Layout.preferredHeight: 60
            Layout.preferredWidth: 60
            source: "qrc:/ComputerExplorerQML/images/reset_wb.png"
            sourceSize: Qt.size(60, 60)
            fillMode: Image.PreserveAspectFit

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

        Image {
            id: clearButton
            Layout.preferredHeight: 60
            Layout.preferredWidth: 60
            source: "qrc:/ComputerExplorerQML/images/reset_wb.png"
            sourceSize: Qt.size(60, 60)
            fillMode: Image.PreserveAspectFit

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
