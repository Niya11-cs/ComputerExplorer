import QtQuick
import QtQuick.Layouts

Item {
    ColumnLayout{
        id: ramLayout
        anchors.centerIn: parent
        spacing: 0

        Rectangle{
            id: ramTextHolder
            color: "transparent"
            Layout.preferredHeight: 20
            Layout.fillWidth: true
            Text {
                id: ramText
                anchors.centerIn: parent
                text: "RAM"
                color: "green"
                font.pixelSize: 20
            }
        }

        GridLayout{
            id: ramCellsLayout
            rows: 16
            columns: 2
            rowSpacing: -2
            columnSpacing: -2


            Repeater{
                id: ramCellsRepeater
                model: computer

                Rectangle{
                    id: ramCellRect
                    border.color: "green"
                    border.width: 2
                    color: active ? "pink" : (passive ? "grey" : "white")
                    /*width: (index % 2) === 0 ? 60 : 160
                    height: 30*/
                    width: (index % 2) === 0 ? 70 : 200
                    height: 35

                    TextInput{
                        id: ramCellTextInput
                        anchors.centerIn: parent
                        text: value
                        font.pixelSize: parent.height - 10
                        onTextChanged:{
                            if (value !== text) {
                                value = text
                            }
                        }
                    }
                }
            }
        }
    }
}
