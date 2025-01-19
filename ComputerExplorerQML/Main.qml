import QtQuick
import QtQuick.Layouts

Window {
    id: root
    width: 400
    height: 800
    visible: true
    title: qsTr("QML Test")
    ColumnLayout {
        spacing: 0
        anchors.fill: parent

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
            Layout.preferredHeight: root.height * 5 / 8

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
                            //color: active ? "pink" : "white"
                            width: (index % 2) === 0 ? 60 : 140
                            height: 30

                            TextInput{
                                anchors.centerIn: parent
                                //text: (index % 2) === 0 ? "0000" : "0000 0000"
                                text: index
                                font.pixelSize: parent.height - 10
                                onTextChanged:{
                                    value = text
                                }
                            }
                        }
                    }
                }
            }
        }

        Rectangle{
            color: "grey"
            Layout.fillWidth: true
            Layout.preferredHeight: root.height * 2 /  8

            Rectangle{
                color: "black"
                anchors.fill: parent
                anchors.margins: 8
                Text{
                    anchors.centerIn: parent;
                    //text: "255"
                    text: ramModel.outputValue
                    color: "white"
                    font.pixelSize: 64
                }
            }

        }
    }
}
