import QtQuick
import QtQuick.Layouts

Window {
    id: root
    width: 800
    height: 800
    visible: true
    title: qsTr("Computer Explorer")

    RowLayout {
        anchors.fill: parent
        spacing: 0

        ColumnLayout {
            spacing: 0
            Layout.fillHeight: true
            Layout.preferredWidth: root.width / 2

            Rectangle{
                color: "#5fff5e"
                Layout.fillWidth: true
                Layout.preferredHeight: root.height / 8
                Rectangle{
                    color: "red"
                    width: 40
                    height: 40
                    anchors.centerIn: parent
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            console.log("start program");
                            ramModel.startProgram();
                        }
                    }
                }
            }

            Rectangle{
                color: "#5fff5e"
                Layout.fillWidth: true
                Layout.preferredHeight: root.height * 7 / 8

                ColumnLayout{
                    anchors.centerIn: parent
                    spacing: 0

                    Rectangle{
                        color: "transparent"
                        Layout.preferredHeight: 20
                        Layout.fillWidth: true
                        Text {
                            anchors.centerIn: parent
                            text: "RAM"
                            color: "green"
                            font.pixelSize: 20
                        }
                    }

                    GridLayout{
                        id: ramLayout
                        rows: 16
                        columns: 2
                        rowSpacing: -2
                        columnSpacing: -2


                        Repeater{
                            model: ramModel

                            Rectangle{
                                border.color: "green"
                                border.width: 2
                                color: active ? "pink" : (passive ? "grey" : "white")
                                width: (index % 2) === 0 ? 60 : 140
                                height: 30

                                TextInput{
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
            spacing: 0
            Layout.fillHeight: true
            Layout.preferredWidth: root.width / 2

            Rectangle {
                color: "#5fff5e"
                Layout.fillWidth: true
                Layout.preferredHeight: root.height / 8
            }

            ColumnLayout {
                spacing: 0
                Layout.fillWidth: true
                Layout.preferredHeight: root.height * 7 / 8

                Rectangle {
                    color: "#5fff5e"
                    Layout.fillWidth: true
                    Layout.preferredHeight: parent.height / 3

                    Rectangle{
                        color: "grey"
                        anchors.fill: parent
                        anchors.margins: 10

                        Rectangle{
                            color: "black"
                            anchors.fill: parent
                            anchors.margins: 8
                            Text{
                                anchors.centerIn: parent;
                                text: ramModel.outputValue
                                color: "white"
                                font.pixelSize: 64
                            }
                        }
                    }
                }
                Rectangle {
                    color: "purple"
                    Layout.fillWidth: true
                    Layout.preferredHeight: parent.height / 3
                }
                Rectangle {
                    color: "#5fff5e"
                    Layout.fillWidth: true
                    Layout.preferredHeight: parent.height / 3

                    GridLayout{
                        id: registerLayout
                        rows: 3
                        columns: 2
                        rowSpacing: -2
                        columnSpacing: -2
                        anchors.centerIn: parent

                        Repeater{
                            model: 6

                            Rectangle{
                                border.color: "green"
                                border.width: 2
                                color: "white"
                                width: (index % 2) === 0 ? 60 : 140
                                height: 30

                                TextInput{
                                    anchors.centerIn: parent
                                    text: (index % 2) === 0 ? "Reg A" : "0000 1111"
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
