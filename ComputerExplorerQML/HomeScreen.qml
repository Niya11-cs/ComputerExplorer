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

        /*Text {
            text: "Welcome to the game!"
            font.pixelSize: 32
            horizontalAlignment: Text.AlignHCenter
        }*/

        Button {
            text: "Играй"
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: 200
            Layout.preferredHeight: 50
            onClicked: {
                stackView.push("Game.qml")
            }
        }

        Button {
            text: "Правила"
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: 200
            Layout.preferredHeight: 50
            onClicked: {
                Qt.openUrlExternally("https://drive.google.com/file/d/1MXS13fh8V928rPgea4DFYMsauaIKD1On/view?usp=sharing")
            }
        }
    }
}
