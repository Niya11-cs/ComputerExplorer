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
                        console.log("start program")
                    }
                }
            }
        }

        Rectangle{
            color: "green"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}
