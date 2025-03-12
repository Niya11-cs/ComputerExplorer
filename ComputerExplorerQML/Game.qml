import QtQuick
import QtQuick.Layouts

Item {
    id: root
    width: parent.width
    height: parent.height

    Image {
        id: gameBackgroundImage
        anchors.fill: parent
        source: "qrc:/ComputerExplorerQML/images/first_level.png"
        fillMode: Image.PreserveAspectCrop
        z: -1
    }

    Image {
        id: myImage
        source: "qrc:/ComputerExplorerQML/images/arrow.png"
        width: 100
        height: 100

        anchors.leftMargin: 20
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.top: parent.top

        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor

            onClicked: {
                stackView.push("HomeScreen.qml")
            }
        }
    }

    RowLayout {
        id: computerLayout
        anchors.fill: parent
        spacing: 0

        ComputerButtons {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 1
        }

        ColumnLayout {
            id: computerLeftColumn
            spacing: 0
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 2

            Rectangle{
                id: controlsHolder
                color: "transparent"
                Layout.fillWidth: true
                Layout.preferredHeight: root.height / 8

                Item {
                    width: 400
                    height: 300

                    Image {
                        id: startButton
                        source: "qrc:/ComputerExplorerQML/images/start_button.png"
                        width: 125
                        height: 125
                        anchors.centerIn: parent
                        anchors.horizontalCenterOffset: 155
                        anchors.verticalCenterOffset: -30

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
                }
            }

            ComputerRAM {
                id: ram
                Layout.fillWidth: true
                Layout.preferredHeight: root.height * 7 / 8
            }
        }

        ColumnLayout {
            id: computerRightColumn
            spacing: 0
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 2

            Rectangle {
                id: computerRightTopSpacer
                color: "transparent"
                Layout.fillWidth: true
                Layout.preferredHeight: root.height / 8
            }

            ColumnLayout {
                id: computerPartsLayout
                spacing: 0
                Layout.fillWidth: true
                Layout.preferredHeight: root.height * 7 / 8

                ComputerScreen {
                    id: screen
                    Layout.fillWidth: true
                    Layout.preferredHeight: parent.height / 3
                }

                ComputerCPUFlags {
                    id: cpuFlags
                    Layout.fillWidth: true
                    Layout.preferredHeight: parent.height / 3
                }

                ComputerRegisters {
                    id: registers
                    Layout.fillWidth: true
                    Layout.preferredHeight: parent.height / 3
                }
            }
        }
    }
}
