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

        /*Button {
            Text {
                text: "Играй"
                anchors.centerIn: parent
                font.family: "Arial"
                font.pointSize: 18
                font.bold: true
                color: "white"
            }

            Layout.preferredWidth: 200
            Layout.preferredHeight: 50

            background: Rectangle {
                color: "#8b67be"
                radius: 20
            }

            onClicked: {
                stackView.push("Game.qml")
            }
            onEntered: {
                parent.color = "#a07be0" // Променя цвета при hover
            }

            onExited: {
                parent.color = "#8b67be" // Връща обратно цвета при излизане на мишката
            }
        }*/

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


        /*Button {
            Text {
                text: "Правила"
                anchors.centerIn: parent
                font.family: "Arial"
                font.pointSize: 18
                font.bold: true
                color: "white"
            }
            Layout.preferredWidth: 200
            Layout.preferredHeight: 50
            background: Rectangle {
                        color: "#febb48"
                        radius: 20
                    }
            onClicked: {
                Qt.openUrlExternally("https://drive.google.com/file/d/1MXS13fh8V928rPgea4DFYMsauaIKD1On/view?usp=sharing")
            }
        }*/

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
                    Qt.openUrlExternally("https://drive.google.com/file/d/1MXS13fh8V928rPgea4DFYMsauaIKD1On/view?usp=sharing")
                }
            }

            anchors.top: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 10
        }
    }
}
