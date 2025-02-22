import QtQuick
import QtQuick.Layouts

Window {
    id: root
    color: "#5fff5e"
    width: 800
    height: 800
    visible: true
    title: qsTr("Computer Explorer")

    RowLayout {
        id: computerLayout
        anchors.fill: parent
        spacing: 0

        ColumnLayout {
            id: computerLeftColumn
            spacing: 0
            Layout.fillHeight: true
            Layout.preferredWidth: root.width / 2

            Rectangle{
                id: controlsHolder
                color: "#5fff5e"
                Layout.fillWidth: true
                Layout.preferredHeight: root.height / 8
                Rectangle{
                    id: startButton
                    color: "red"
                    width: 40
                    height: 40
                    anchors.centerIn: parent
                    MouseArea{
                        id: startButtonMouseArea
                        anchors.fill: parent
                        onClicked: {
                            console.log("start program");
                            ramModel.startProgram();
                        }
                    }
                }
            }

            Rectangle{
                id: ramHolder
                color: "#5fff5e"
                Layout.fillWidth: true
                Layout.preferredHeight: root.height * 7 / 8

                ColumnLayout{
                    id: ramLayout
                    anchors.centerIn: parent
                    spacing: 0

                    Rectangle{
                        id: ramTextHolder
                        color: "transparent"
                        Layout.preferredHeight: 20
                        Layout.fillWidth: true
                        Text {
                            id: ramText
                            anchors.centerIn: parent
                            text: "RAM"
                            color: "green"
                            font.pixelSize: 20
                        }
                    }

                    GridLayout{
                        id: ramCellsLayout
                        rows: 16
                        columns: 2
                        rowSpacing: -2
                        columnSpacing: -2


                        Repeater{
                            id: ramCellsRepeater
                            model: ramModel

                            Rectangle{
                                id: ramCellRect
                                border.color: "green"
                                border.width: 2
                                color: active ? "pink" : (passive ? "grey" : "white")
                                width: (index % 2) === 0 ? 60 : 165
                                height: 30

                                TextInput{
                                    id: ramCellTextInput
                                    anchors.centerIn: parent
                                    text: value
                                    font.pixelSize: parent.height - 10
                                    onTextChanged:{
                                        if (value !== text) {
                                            value = text
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        ColumnLayout {
            id: computerRightColumn
            spacing: 0
            Layout.fillHeight: true
            Layout.preferredWidth: root.width / 2

            Rectangle {
                id: computerRightTopSpacer
                color: "#5fff5e"
                Layout.fillWidth: true
                Layout.preferredHeight: root.height / 8
            }

            ColumnLayout {
                id: computerPartsLayout
                spacing: 0
                Layout.fillWidth: true
                Layout.preferredHeight: root.height * 7 / 8

                Rectangle {
                    id: screenHolder
                    color: "#5fff5e"
                    Layout.fillWidth: true
                    Layout.preferredHeight: parent.height / 3

                    Rectangle{
                        id: screenBorder
                        color: "grey"
                        anchors.fill: parent
                        anchors.margins: 10

                        Rectangle{
                            id: screen
                            color: "black"
                            anchors.fill: parent
                            anchors.margins: 8
                            Text{
                                id: screenOutputText
                                anchors.centerIn: parent;
                                text: ramModel.outputValue
                                color: "white"
                                font.pixelSize: 64
                            }
                        }
                    }
                }
                Rectangle {
                    id: cpuFlagsHolder
                    color: "#5fff5e"
                    Layout.fillWidth: true
                    Layout.preferredHeight: parent.height / 3

                    ColumnLayout{
                        id: cpuFlagsHolderLayout
                        anchors.centerIn: parent
                        spacing: 0

                        Rectangle{
                            id: cpuTextHolder
                            color: "transparent"
                            Layout.preferredHeight: 20
                            Layout.fillWidth: true
                            Text {
                                id: cpuFlagsText
                                anchors.centerIn: parent
                                text: "CPU FLAGS"
                                color: "green"
                                font.pixelSize: 20
                            }
                        }

                        Rectangle {
                            id: flagsHolder
                            color: "#5fff5e"
                            Layout.fillWidth: true
                            Layout.preferredHeight: parent.height / 3

                            RowLayout {
                                id: flagsLayout
                                spacing: -2
                                anchors.centerIn: parent

                                ColumnLayout {
                                    id: flagsValuesLayout
                                    spacing: -2
                                    Rectangle{
                                        id: flagEqualValueHolder
                                        border.color: "green"
                                        border.width: 2
                                        color: ramModel.flagEqualValue ? "red" : "white"
                                        Layout.preferredWidth: 30
                                        Layout.preferredHeight: 30
                                    }

                                    Rectangle{
                                        id: flagLessThanValueHolder
                                        border.color: "green"
                                        border.width: 2
                                        color: ramModel.flagLessThanValue ? "green" : "white"
                                        Layout.preferredWidth: 30
                                        Layout.preferredHeight: 30
                                    }

                                    Rectangle{
                                        id: flagGreaterThanValueHolder
                                        border.color: "green"
                                        border.width: 2
                                        color: ramModel.flagGreaterThanValue ? "blue" : "white"
                                        Layout.preferredWidth: 30
                                        Layout.preferredHeight: 30
                                    }
                                }

                                ColumnLayout{
                                    id: flagsNamesLayouts
                                    spacing: -2
                                    Rectangle{
                                        id: flagEqualNameHolder
                                        border.color: "green"
                                        color: "white"
                                        border.width: 2
                                        Layout.preferredWidth: 170
                                        Layout.preferredHeight: 30

                                        Text{
                                            id: flagEqualName
                                            color: "green"
                                            anchors.centerIn: parent
                                            text: "EQ Equal"
                                            font.pixelSize: parent.height - 10
                                        }
                                    }

                                    Rectangle{
                                        id: flagLessThanNameHolder
                                        border.color: "green"
                                        color: "white"
                                        border.width: 2
                                        Layout.preferredWidth: 170
                                        Layout.preferredHeight: 30

                                        Text{
                                            id: flagLessThanName
                                            color: "green"
                                            anchors.centerIn: parent
                                            text: "LT Less Than"
                                            font.pixelSize: parent.height - 10
                                        }
                                    }

                                    Rectangle{
                                        id: flagGreaterThanNameHolder
                                        border.color: "green"
                                        color: "white"
                                        border.width: 2
                                        Layout.preferredWidth: 170
                                        Layout.preferredHeight: 30

                                        Text{
                                            id: flagGreaterThanName
                                            color: "green"
                                            anchors.centerIn: parent
                                            text: "GT Greater Than"
                                            font.pixelSize: parent.height - 10
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                Rectangle {
                    id: registersHolder
                    color: "#5fff5e"
                    Layout.fillWidth: true
                    Layout.preferredHeight: parent.height / 3

                    RowLayout {
                        id: registersLayout
                        spacing: 0
                        anchors.centerIn: parent

                        ColumnLayout{
                            id: registersNamesLayouts
                            spacing: -2
                            Rectangle{
                                id: registerANameHolder
                                color: "transparent"
                                Layout.preferredWidth: 60
                                Layout.preferredHeight: 30

                                Text{
                                    id: registerAName
                                    color: "green"
                                    anchors.centerIn: parent
                                    text: "Reg A"
                                    font.pixelSize: parent.height - 10
                                }
                            }

                            Rectangle{
                                id: registerBNameHolder
                                color: "transparent"
                                Layout.preferredWidth: 60
                                Layout.preferredHeight: 30

                                Text{
                                    id: registerBName
                                    color: "green"
                                    anchors.centerIn: parent
                                    text: "Reg B"
                                    font.pixelSize: parent.height - 10
                                }
                            }

                            Rectangle{
                                id: registerCNameHolder
                                color: "transparent"
                                Layout.preferredWidth: 60
                                Layout.preferredHeight: 30

                                Text{
                                    id: registerCName
                                    color: "green"
                                    anchors.centerIn: parent
                                    text: "Reg C"
                                    font.pixelSize: parent.height - 10
                                }
                            }
                        }

                        ColumnLayout {
                            id: registersValuesLayout
                            spacing: -2
                            Rectangle{
                                id: registerAValueHolder
                                border.color: "green"
                                border.width: 2
                                color: "white"
                                Layout.preferredWidth: 140
                                Layout.preferredHeight: 30

                                Text{
                                    id: registerAValue
                                    color: "black"
                                    anchors.centerIn: parent
                                    text: ramModel.regAValue
                                    font.pixelSize: parent.height - 10
                                }
                            }

                            Rectangle{
                                id: registerBValueHolder
                                border.color: "green"
                                border.width: 2
                                color: "white"
                                Layout.preferredWidth: 140
                                Layout.preferredHeight: 30

                                Text{
                                    id: registerBValue
                                    color: "black"
                                    anchors.centerIn: parent
                                    text: ramModel.regBValue
                                    font.pixelSize: parent.height - 10
                                }
                            }

                            Rectangle{
                                id: registerCValueHolder
                                border.color: "green"
                                border.width: 2
                                color: "white"
                                Layout.preferredWidth: 140
                                Layout.preferredHeight: 30

                                Text{
                                    id: registerCValue
                                    color: "black"
                                    anchors.centerIn: parent
                                    text: ramModel.regCValue
                                    font.pixelSize: parent.height - 10
                                }
                            }
                        }

                    }
                }
            }
        }
    }
}
