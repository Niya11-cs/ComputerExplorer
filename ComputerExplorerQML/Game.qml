import QtQuick
import QtQuick.Layouts

Item {
    id: root


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
                        mainScreensStack.currentIndex = 1
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
                            mainScreensStack.currentIndex = 0
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
                            mainScreensStack.currentIndex = 1
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

                        }
                    }
                }

                Image {
                    source: "qrc:/ComputerExplorerQML/images/hint_wb.png"
                    Layout.preferredWidth: 100
                    Layout.preferredHeight: 100
                    sourceSize: Qt.size(100, 100)
                    fillMode: Image.PreserveAspectFit

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor

                        onClicked: {

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
                    Layout.fillHeight: true
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

                ComputerRegisters {
                    id: registers
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.preferredHeight: 1
                }
            }

            ColumnLayout {
                id: computerRightColumn
                spacing: 0
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredWidth: 2

                ComputerScreen {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }

                Item {
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    Image {
                        anchors.fill: parent
                        source: "qrc:/ComputerExplorerQML/images/zuks.png"
                        fillMode: Image.PreserveAspectFit
                    }
                }
            }
        }
    }
}
