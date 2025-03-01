import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item {
    width: parent.width
    height: parent.height

    Image {
        id: backgroundImage
        anchors.fill: parent
        source: "qrc:/ComputerExplorerQML/images/home_screen_background.png"
        fillMode: Image.PreserveAspectCrop
        z: -1
    }

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 32

        Rectangle {
            Layout.preferredWidth: 200
            Layout.preferredHeight: 50
            radius: 20


            color: "#8b67be"

            Text {
                text: "Играй"
                anchors.centerIn: parent
                font.family: "Arial"
                font.pointSize: 18
                font.bold: true
                color: "white"
            }

            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor

                onEntered: {
                    parent.color = "#a07be0"
                }

                onExited: {
                    parent.color = "#8b67be"
                }

                onClicked: {
                    stackView.push("Game.qml")
                }
            }

            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: 20
        }

        Rectangle {
            Layout.preferredWidth: 200
            Layout.preferredHeight: 50
            radius: 20

            color: "#febb48"

            anchors.margins: 20

            Text {
                text: "Правила"
                anchors.centerIn: parent
                font.family: "Arial"
                font.pointSize: 18
                font.bold: true
                color: "white"
            }

            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor

                onEntered: {
                    parent.color = "#febb48"
                }

                onExited: {
                    parent.color = "#febb48"
                }

                onClicked: {
                    Qt.openUrlExternally("https://nhsms-my.sharepoint.com/:v:/g/personal/niyanm_students_npmg_org/EY8yolBkfEZKmwyW0kkBf24BBIjKXdRY7qbiAeVRHIQoVA?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=flwXgXс")
                }
            }

            anchors.top: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 10
        }
    }
}
