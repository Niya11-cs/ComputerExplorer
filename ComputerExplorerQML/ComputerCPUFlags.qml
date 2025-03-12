import QtQuick
import QtQuick.Layouts

Item {
    ColumnLayout{
        id: cpuFlagsHolderLayout
        //anchors.centerIn: parent
        spacing: 0
        Rectangle{
            id: cpuFlagspacer
            color: "transparent"
            Layout.preferredHeight: 20
            Layout.fillWidth: true
        }
        /*Rectangle{
            id: cpuTextHolder
            color: "transparent"
            Layout.preferredHeight: 20
            Layout.fillWidth: true
            Text {
                id: cpuFlagsText
                //anchors.centerIn: parent
                text: "CPU FLAGS"
                color: "green"
                font.pixelSize: 20
            }
        }*/

        Rectangle {
            id: flagsHolder
            color: "transparent"
            Layout.fillWidth: true
            Layout.preferredHeight: parent.height / 3

            RowLayout {
                id: flagsLayout
                spacing: -2
                //anchors.centerIn: parent

                ColumnLayout {
                    id: flagsValuesLayout
                    spacing: -2
                    Rectangle{
                        id: flagEqualValueHolder
                        border.color: "green"
                        border.width: 2
                        color: computer.flagEqualValue ? "red" : "white"
                        Layout.preferredWidth: 30
                        Layout.preferredHeight: 30
                    }

                    Rectangle{
                        id: flagLessThanValueHolder
                        border.color: "green"
                        border.width: 2
                        color: computer.flagLessThanValue ? "green" : "white"
                        Layout.preferredWidth: 30
                        Layout.preferredHeight: 30
                    }

                    Rectangle{
                        id: flagGreaterThanValueHolder
                        border.color: "green"
                        border.width: 2
                        color: computer.flagGreaterThanValue ? "blue" : "white"
                        Layout.preferredWidth: 30
                        Layout.preferredHeight: 30
                    }
                }

                ColumnLayout{
                    id: flagsNamesLayouts
                    spacing: -2
                    Rectangle{
                        id: flagEqualNameHolder
                        border.color: "green"
                        color: "white"
                        border.width: 2
                        Layout.preferredWidth: 170
                        Layout.preferredHeight: 30

                        Text{
                            id: flagEqualName
                            color: "green"
                            anchors.centerIn: parent
                            text: "EQ flag"
                            font.pixelSize: parent.height - 10
                        }
                    }

                    Rectangle{
                        id: flagLessThanNameHolder
                        border.color: "green"
                        color: "white"
                        border.width: 2
                        Layout.preferredWidth: 170
                        Layout.preferredHeight: 30

                        Text{
                            id: flagLessThanName
                            color: "green"
                            anchors.centerIn: parent
                            text: "LT flag"
                            font.pixelSize: parent.height - 10
                        }
                    }

                    Rectangle{
                        id: flagGreaterThanNameHolder
                        border.color: "green"
                        color: "white"
                        border.width: 2
                        Layout.preferredWidth: 170
                        Layout.preferredHeight: 30

                        Text{
                            id: flagGreaterThanName
                            color: "green"
                            anchors.centerIn: parent
                            text: "GT flag"
                            font.pixelSize: parent.height - 10
                        }
                    }
                }
            }
        }
    }
}
