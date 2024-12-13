import QtQuick
import QtQuick.Layouts

Window {
    id: root
    width: 400
    height: 800
    visible: true
    title: qsTr("Hello World")

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        Rectangle {
            color: "green"
            Layout.fillWidth: true
            Layout.preferredHeight: root.height / 4

            Rectangle {
                anchors.centerIn: parent
                color: "cyan"
                width: 40
                height: 40

                MouseArea {
                    anchors.fill: parent

                    onClicked: {
                        console.log("Start Program");
                        ramModel.startProgram();
                    }
                }
            }
        }

        Rectangle {
            color: "red"
            Layout.fillWidth: true
            Layout.preferredHeight: root.height * (3 / 4)

            GridLayout {
                id: tableLayout
                anchors.centerIn: parent
                rows: 16
                columns: 2
                rowSpacing: -2
                columnSpacing: -2

                Repeater {
                    //model: tableLayout.rows * tableLayout.columns
                    model: ramModel

                    Rectangle {
                        width: index % 2 ? 120 : 60
                        height: 30
                        color: active ? "pink" : (passive ? "grey" : "white")
                        border.color: "green"
                        border.width: 2

                        TextInput {
                            anchors.fill: parent
                            //text: index % 2 ? "0101 0101" : "0101"
                            font.pixelSize: 20
                            horizontalAlignment: TextInput.AlignHCenter
                            verticalAlignment: TextInput.AlignVCenter
                            onTextChanged: {
                                cellValue = text
                            }
                        }
                    }
                }
            }
        }
    }
}
