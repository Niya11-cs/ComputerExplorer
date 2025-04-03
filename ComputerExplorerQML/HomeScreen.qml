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
            color: "#febb48"

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

                onClicked: {
                    if (stackView) {
                        stackView.push("Levels.qml")
                    }
                }
            }

            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: 60
        }

        Rectangle {
            Layout.preferredWidth: 200
            Layout.preferredHeight: 50
            radius: 20

            color: "#8b67be"

            anchors.margins: 20

            Text {
                text: "Настройки"
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
                    parent.color = "#8b67be"
                }

                onExited: {
                    parent.color = "#8b67be"
                }

                onClicked: {
                    Qt.openUrlExternally("https://nhsms-my.sharepoint.com/:v:/g/personal/niyanm_students_npmg_org/EY8yolBkfEZKmwyW0kkBf24BBIjKXdRY7qbiAeVRHIQoVA?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=flwXgXс")
                }
            }

            anchors.top: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 10
        }

        Rectangle {
            Layout.preferredWidth: 200
            Layout.preferredHeight: 50
            radius: 20

            color: "#f76259"

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
                    parent.color = "#f76259"
                }

                onExited: {
                    parent.color = "#f76259"
                }
                onClicked: {
                    Qt.openUrlExternally("https://nhsms-my.sharepoint.com/:v:/g/personal/niyanm_students_npmg_org/EY8yolBkfEZKmwyW0kkBf24BBIjKXdRY7qbiAeVRHIQoVA?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=flwXgXс")
                }
            }
        }

        anchors.top: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 10
    }
}
