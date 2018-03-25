import QtQuick 2.6
import "qrc:/"

Item {
    id: dial

    width: 1000
    height: 500

    Row {
        id: buttons
        anchors.bottom: parent.bottom
        width: parent.width

        Button {
            text: "Analog"
            width: parent.width / 2

            onButtonClick: console.log("Analog Button clicked")
        }

        Button {
            text: "Digital"
            width: parent.width / 2

            onButtonClick: console.log("Digital Button clicked")
        }
    }
}
