import QtQuick
import QtQuick.Layouts

Item {
    ColumnLayout {
        id: computerRightColumn
        spacing: 0
        Layout.fillHeight: true
        Layout.preferredWidth: root.width / 2

        Rectangle {
            id: computerRightTopSpacer
            color: "transparent"
            Layout.fillWidth: true
            Layout.preferredHeight: root.height / 8
        }

        ColumnLayout {
            id: computerPartsLayout
            spacing: 0
            Layout.fillWidth: true
            Layout.preferredHeight: root.height * 7 / 8

            ComputerScreen {
                id: screen
                Layout.fillWidth: true
                Layout.preferredHeight: parent.height / 3
            }

            ComputerCPUFlags {
                id: cpuFlags
                Layout.fillWidth: true
                Layout.preferredHeight: parent.height / 3
            }

            ComputerRegisters {
                id: registers
                Layout.fillWidth: true
                Layout.preferredHeight: parent.height / 3
            }
        }
    }
}
