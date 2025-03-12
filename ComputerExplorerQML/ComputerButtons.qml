import QtQuick
import QtQuick.Layouts

Item {
    Rectangle {
        anchors.fill: parent
        color: "red"
    }
    /*ColumnLayout {
        spacing: -2
        Rectangle {
            color: "blue"
            border.color: "yellow"
            border.width: 2
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        Repeater {
            model: 10
            Rectangle {
                color: "blue"
                border.color: "yellow"
                border.width: 2
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
        }
    }*/
}
