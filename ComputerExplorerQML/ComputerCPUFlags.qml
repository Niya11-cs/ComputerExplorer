import QtQuick
import QtQuick.Layouts

Item {
    ColumnLayout {
        id: flagsLayout
        anchors.centerIn: parent
        spacing: 0

        Rectangle{
            id: flagsTextHolder
            color: "transparent"
            Layout.preferredHeight: 20
            Layout.fillWidth: true
            Text {
                id: flagsText
                anchors.centerIn: parent
                text: "FLAGS"
                color: "#385184"
                font.pixelSize: 20
            }
        }

        RowLayout {
            id: flagsValuesAndNamesLayout
            spacing: -2

            ColumnLayout {
                id: flagsValuesLayout
                spacing: -2
                Rectangle{
                    id: flagEqualValueHolder
                    border.color: "#385184"
                    border.width: 2
                    color: computer.flagEqualValue ? "red" : "white"
                    Layout.preferredWidth: 35
                    Layout.preferredHeight: 35
                }

                Rectangle{
                    id: flagLessThanValueHolder
                    border.color: "#385184"
                    border.width: 2
                    color: computer.flagLessThanValue ? "green" : "white"
                    Layout.preferredWidth: 35
                    Layout.preferredHeight: 35
                }

                Rectangle{
                    id: flagGreaterThanValueHolder
                    border.color: "#385184"
                    border.width: 2
                    color: computer.flagGreaterThanValue ? "blue" : "white"
                    Layout.preferredWidth: 35
                    Layout.preferredHeight: 35
                }
            }

            ColumnLayout{
                id: flagsNamesLayouts
                spacing: -2
                Rectangle{
                    id: flagEqualNameHolder
                    border.color: "#385184"
                    color: "white"
                    border.width: 2
                    Layout.preferredWidth: 200
                    Layout.preferredHeight: 35

                    Text{
                        id: flagEqualName
                        color: "#385184"
                        anchors.centerIn: parent
                        text: "EQ (Equal)"
                        font.pixelSize: parent.height - 10
                    }
                }

                Rectangle{
                    id: flagLessThanNameHolder
                    border.color: "#385184"
                    color: "white"
                    border.width: 2
                    Layout.preferredWidth: 200
                    Layout.preferredHeight: 35

                    Text{
                        id: flagLessThanName
                        color: "#385184"
                        anchors.centerIn: parent
                        text: "LT (Less Than)"
                        font.pixelSize: parent.height - 10
                    }
                }

                Rectangle{
                    id: flagGreaterThanNameHolder
                    border.color: "#385184"
                    color: "white"
                    border.width: 2
                    Layout.preferredWidth: 200
                    Layout.preferredHeight: 35

                    Text{
                        id: flagGreaterThanName
                        color: "#385184"
                        anchors.centerIn: parent
                        text: "GT (Greater Than)"
                        font.pixelSize: parent.height - 10
                    }
                }
            }
        }
    }
}
