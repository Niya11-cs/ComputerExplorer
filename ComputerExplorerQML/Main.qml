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
            color: "blue"
            Layout.fillWidth: true
            Layout.preferredHeight: root.height/4
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
            color: "cyan"
            Layout.fillWidth: true
            Layout.preferredHeight: root.height * 3 / 4

            GridLayout{
                id: ramLayout
                anchors.centerIn: parent
                rows: 16
                columns: 2
                rowSpacing: 0
                columnSpacing: 0


                Repeater{
                    model: ramLayout.rows * ramLayout.columns

                    Rectangle{
                        border.color: "green"
                        border.width: 2
                        color: "white"
                        width: 100
                        height: 30

                        TextInput{
                            anchors.centerIn: parent
                            text: "0000"
                            font.pixelSize: parent.height - 10
                        }
                    }
                }
            }
        }
    }
}
