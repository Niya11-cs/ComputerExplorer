import QtQuick
import QtQuick.Layouts

Item {
    ColumnLayout {
        id: registersLayout
        anchors.bottom: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 0

        Rectangle{
            id: registersTextHolder
            color: "transparent"
            Layout.preferredHeight: 20
            Layout.fillWidth: true
            Text {
                id: registersText
                anchors.centerIn: parent
                text: "REGISTERS"
                color: "#385184"
                font.pixelSize: 20
            }
        }

        RowLayout {
            id: registersValuesAndNamesLayout
            spacing: -2

            ColumnLayout{
                id: registersNamesLayouts
                spacing: -2
                Rectangle{
                    id: registerANameHolder
                    Layout.preferredWidth: 35
                    Layout.preferredHeight: 35
                    border.color: "#385184"
                    border.width: 2
                    color: "white"

                    Text{
                        id: registerAName
                        color: "#385184"
                        anchors.centerIn: parent
                        text: "A"
                        font.pixelSize: parent.height - 10
                    }
                }

                Rectangle{
                    id: registerBNameHolder
                    Layout.preferredWidth: 35
                    Layout.preferredHeight: 35
                    border.color: "#385184"
                    border.width: 2
                    color: "white"

                    Text{
                        id: registerBName
                        color: "#385184"
                        anchors.centerIn: parent
                        text: "B"
                        font.pixelSize: parent.height - 10
                    }
                }

                Rectangle{
                    id: registerCNameHolder
                    Layout.preferredWidth: 35
                    Layout.preferredHeight: 35
                    border.color: "#385184"
                    border.width: 2
                    color: "white"

                    Text{
                        id: registerCName
                        color: "#385184"
                        anchors.centerIn: parent
                        text: "C"
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
                    Layout.preferredWidth: 200
                    Layout.preferredHeight: 35

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
                    Layout.preferredWidth: 200
                    Layout.preferredHeight: 35

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
                    Layout.preferredWidth: 200
                    Layout.preferredHeight: 35

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
}
