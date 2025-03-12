import QtQuick

Item {
    //anchors.fill: parent
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
                text: computer.outputValue
                color: "white"
                font.pixelSize: 64
            }
        }
    }
}
