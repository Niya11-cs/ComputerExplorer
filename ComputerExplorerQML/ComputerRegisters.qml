import QtQuick
import QtQuick.Layouts

Item {
    RowLayout {
        id: registersLayout
        spacing: 0
        //anchors.centerIn: parent

        ColumnLayout{
            id: registersNamesLayouts
            spacing: -2
            Rectangle{
                id: registerANameHolder
                color: "transparent"
                Layout.preferredWidth: 60
                Layout.preferredHeight: 30

                Text{
                    id: registerAName
                    color: "#385184"
                    anchors.centerIn: parent
                    text: "Reg A"
                    font.pixelSize: parent.height - 10
                }
            }

            Rectangle{
                id: registerBNameHolder
                color: "transparent"
                Layout.preferredWidth: 60
                Layout.preferredHeight: 30

                Text{
                    id: registerBName
                    color: "#385184"
                    anchors.centerIn: parent
                    text: "Reg B"
                    font.pixelSize: parent.height - 10
                }
            }

            Rectangle{
                id: registerCNameHolder
                color: "transparent"
                Layout.preferredWidth: 60
                Layout.preferredHeight: 30

                Text{
                    id: registerCName
                    color: "#385184"
                    anchors.centerIn: parent
                    text: "Reg C"
                    font.pixelSize: parent.height - 10
                }
            }
        }

        ColumnLayout {
            id: registersValuesLayout
            spacing: -2
            Rectangle{
                id: registerAValueHolder
                border.color: "#385184"
                border.width: 2
                color: "white"
                Layout.preferredWidth: 140
                Layout.preferredHeight: 30

                Text{
                    id: registerAValue
                    color: "black"
                    anchors.centerIn: parent
                    text: computer.regAValue
                    font.pixelSize: parent.height - 10
                }
            }

            Rectangle{
                id: registerBValueHolder
                border.color: "#385184"
                border.width: 2
                color: "white"
                Layout.preferredWidth: 140
                Layout.preferredHeight: 30

                Text{
                    id: registerBValue
                    color: "black"
                    anchors.centerIn: parent
                    text: computer.regBValue
                    font.pixelSize: parent.height - 10
                }
            }

            Rectangle{
                id: registerCValueHolder
                border.color: "#385184"
                border.width: 2
                color: "white"
                Layout.preferredWidth: 140
                Layout.preferredHeight: 30

                Text{
                    id: registerCValue
                    color: "black"
                    anchors.centerIn: parent
                    text: computer.regCValue
                    font.pixelSize: parent.height - 10
                }
            }
        }
    }
}
