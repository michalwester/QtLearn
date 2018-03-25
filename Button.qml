import QtQuick 2.6

Rectangle {
    id: buttonArea
    width: 150
    height: 75

    property alias text: buttonLabel.text
    property color buttonColor: "white"
    property color borderColor: "black"
    property color hoverColor: "red"

    border.color: borderColor

    signal buttonClick()

    Text {
        id: buttonLabel
        text: "unnamed_button"
        anchors.centerIn: parent
    }

    MouseArea {
        id: buttonMouseArea
        anchors.fill: parent
        hoverEnabled: true

        onClicked: buttonClick()
        onEntered: parent.border.color = hoverColor
        onExited: parent.border.color = borderColor
    }

    color: buttonMouseArea.pressed ? Qt.darker(buttonColor, 1.5) : buttonColor
}
