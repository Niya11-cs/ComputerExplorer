import QtQuick
import QtQuick.Layouts

Item {
    Rectangle {
        anchors.fill: parent
        color: "red"

        ColumnLayout {
            anchors.centerIn: parent

            Rectangle {
                color: "white"
                width: 40
                height: 40
            }

            Rectangle {
                color: "green"
                width: 40
                height: 40
            }

            Rectangle {
                color: "orange"
                width: 40
                height: 40
            }
        }
    }
}
