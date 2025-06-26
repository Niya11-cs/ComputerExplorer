import QtQuick
import QtQuick.Layouts

Item {
    ColumnLayout {
        id: screenLayout
        anchors.fill: parent
        spacing: 0

        Rectangle {
            id: screenTextHolder
            color: "transparent"
            Layout.preferredHeight: 20
            Layout.fillWidth: true
            Text {
                id: flagsText
                anchors.centerIn: parent
                text: "SCREEN"
                color: "#385184"
                font.pixelSize: 20
            }
        }


        Rectangle{
            id: screenBorder
            color: "grey"
            //anchors.margins: 35
            Layout.leftMargin: 35
            Layout.rightMargin: 35
            Layout.fillWidth: true
            Layout.fillHeight: true

            Rectangle{
                id: screen
                color: "black"
                anchors.fill: parent
                anchors.margins: 8
                Text{
                    id: screenOutputText
                    anchors.centerIn: parent;
                    text: computer.outputValue
                    color: "white"
                    font.pixelSize: 64
                }
            }
        }
    }
}
