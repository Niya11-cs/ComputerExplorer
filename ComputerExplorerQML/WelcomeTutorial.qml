import QtQuick
import QtQuick.Layouts

Item {

    Rectangle {
        anchors.fill: parent
        color: '#e0eaff'

        StackLayout {
            id: welcomeTutorialStack
            anchors.fill: parent
            currentIndex: 0

            Image {
                source: "qrc:/ComputerExplorerQML/images/zuks_first_sence.png"
                fillMode: Image.PreserveAspectFit
                Layout.fillHeight: true
                Layout.fillWidth: true
                visible: false
                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor

                    onClicked: {
                        welcomeTutorialStack.currentIndex=1
                    }
                }
            }

            Image {
                source: "qrc:/ComputerExplorerQML/images/computer.png"
                fillMode: Image.PreserveAspectFit
                Layout.fillHeight: true
                Layout.fillWidth: true
                visible: true
                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor

                    onClicked: {
                        welcomeTutorialStack.currentIndex=0
                    }
                }
            }
        }
    }
}
