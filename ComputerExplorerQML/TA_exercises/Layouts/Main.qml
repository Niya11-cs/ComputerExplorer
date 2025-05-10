import QtQuick
import QtQuick.Layouts

Window {
    width: 800
    height: 800
    visible: true
    title: qsTr("Hello World")

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        /*Item {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 1

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
        }*/

        TestElement {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 1
        }

        Rectangle {
            color: "green"
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 1
        }

        Rectangle {
            color: "blue"
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 1
        }
    }
}
