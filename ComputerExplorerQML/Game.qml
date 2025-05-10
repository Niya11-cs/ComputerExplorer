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

    ColumnLayout {
        id: computerLayout
        spacing: 0
        anchors.fill: parent

        Rectangle {
            id: settingsHolder
            Layout.preferredHeight: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: '#e0eaff'

            Image {
                source: "qrc:/ComputerExplorerQML/images/previous_arrow_wb.png"
                width: 100
                height: 100
                sourceSize: Qt.size(100, 100)
                fillMode: Image.PreserveAspectFit

                anchors.leftMargin: 20
                anchors.left: parent.left
                anchors.top: parent.top

                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor

                    onClicked: {
                        stackView.push("Levels.qml")
                    }
                }
            }

            RowLayout {
                spacing: 10
                anchors.centerIn: parent

                Image {
                    source: "qrc:/ComputerExplorerQML/images/home_wb.png"
                    Layout.preferredWidth: 100
                    Layout.preferredHeight: 100
                    sourceSize: Qt.size(100, 100)
                    fillMode: Image.PreserveAspectFit

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor

                        onClicked: {
                            stackView.push("HomeScreen.qml")
                        }
                    }
                }

                Image {
                    source: "qrc:/ComputerExplorerQML/images/levels_icon_wb.png"
                    Layout.preferredWidth: 100
                    Layout.preferredHeight: 100
                    sourceSize: Qt.size(100, 100)
                    fillMode: Image.PreserveAspectFit

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor

                        onClicked: {
                            stackView.push("Levels.qml")
                        }
                    }
                }

                Image {
                    source: "qrc:/ComputerExplorerQML/images/settings_wb.png"
                    Layout.preferredWidth: 100
                    Layout.preferredHeight: 100
                    sourceSize: Qt.size(100, 100)
                    fillMode: Image.PreserveAspectFit

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor

                        onClicked: {
                            stackView.push(".qml")
                        }
                    }
                }

                Image {
                    source: "qrc:/ComputerExplorerQML/images/hint_icon.png"
                    Layout.preferredWidth: 100
                    Layout.preferredHeight: 100
                    sourceSize: Qt.size(100, 100)
                    fillMode: Image.PreserveAspectFit

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor

                        onClicked: {
                            stackView.push(".qml")
                        }
                    }
                }
            }

            Image {
                source: "qrc:/ComputerExplorerQML/images/next_arrow_wb.png"
                width: 100
                height: 100
                sourceSize: Qt.size(100, 100)
                fillMode: Image.PreserveAspectFit

                anchors.leftMargin: 20
                anchors.right: parent.right
                anchors.top: parent.top

                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor

                    onClicked: {
                        stackView.push(".qml")
                    }
                }
            }
        }

        RowLayout {
            id: gameLayout
            spacing: 0
            Layout.preferredHeight: 7
            Layout.fillHeight: true
            Layout.fillWidth: true

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
                Layout.preferredWidth: 1

                ComputerRAM {
                    id: ram
                    Layout.fillWidth: true
                    Layout.preferredHeight: root.height * 7 / 8
                }
            }

            ColumnLayout {
                id: computerMiddleColumn
                spacing: 0
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredWidth: 1

                ComputerCPUFlags {
                    id: cpuFlags
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.preferredHeight: 1
                }

                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.preferredHeight: 1
                    color:"red"
                }

                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.preferredHeight: 1
                    color: "blue"
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

                    /*ComputerCPUFlags {
                        id: cpuFlags
                        Layout.fillWidth: true
                        Layout.preferredHeight: parent.height / 3
                    }

                    ComputerRegisters {
                        id: registers
                        Layout.fillWidth: true
                        Layout.preferredHeight: parent.height / 3
                    }*/
                }
            }
        }
    }
}
