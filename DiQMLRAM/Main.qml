import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    //color: "green"

    GridLayout {
        id: gridTable
        anchors.centerIn: parent
        rows: 16
        columns: 2
        rowSpacing: 0
        columnSpacing: 0

        Repeater {
            model: 32

            Rectangle {
                id: textInputWrapper
                width: 200
                height: 40
                //anchors.centerIn: parent
                color: "white"
                border.color: "green"
                border.width: 2

                TextInput {
                    id: input
                    anchors.fill: parent
                    anchors.margins: 4
                    font.pixelSize: 16
                }
            }
        }
    }
}
