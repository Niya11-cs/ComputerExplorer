import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item {
    width: parent.width
    height: parent.height

    Image {
        id: backgroundImage
        anchors.fill: parent
        source: "qrc:/ComputerExplorerQML/images/background.png"
        fillMode: Image.PreserveAspectCrop
        z: -1
    }

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 20

        Text {
            text: "Welcome to the Game!"
            font.pixelSize: 28
            horizontalAlignment: Text.AlignHCenter
        }

        Button {
            text: "Start Game"
            Layout.preferredWidth: 200
            Layout.alignment: Qt.AlignHCenter
            onClicked: {
                // Navigate to the game screen
                stackView.push("GameScreen.qml")
            }
        }

        Button {
            text: "Open Tutorial"
            Layout.preferredWidth: 200
            Layout.alignment: Qt.AlignHCenter
            onClicked: {
                Qt.openUrlExternally("https://drive.google.com/file/d/1MXS13fh8V928rPgea4DFYMsauaIKD1On/view?usp=sharing")
            }
        }
    }
}
