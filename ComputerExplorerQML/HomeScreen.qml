import QtQuick
import QtQuick.Layouts

Item {
    Image {
        id: backgroundImage
        anchors.fill: parent
        source: "qrc:/ComputerExplorerQML/images/home_screen_background.png"
        fillMode: Image.PreserveAspectCrop
        z: -1
    }

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 16

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
                    mainScreensStack.currentIndex = 3
                }
            }
        }

        Rectangle {
            Layout.preferredWidth: 200
            Layout.preferredHeight: 50
            radius: 20
            color: "#8b67be"

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
    }
}
