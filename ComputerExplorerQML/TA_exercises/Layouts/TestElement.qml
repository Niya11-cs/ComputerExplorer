import QtQuick
import QtQuick.Layouts

Item {
    ColumnLayout {
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 0

        Rectangle {
            color: "yellow"
            Layout.preferredHeight: 20
            Layout.preferredWidth: 200
        }

        Rectangle {
            color: "cyan"
            Layout.preferredHeight: 20
            Layout.preferredWidth: 200
        }

        Rectangle {
            color: "purple"
            Layout.preferredHeight: 20
            Layout.preferredWidth: 200
        }

    }
}
