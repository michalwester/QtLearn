import QtQuick 2.6

Item {
    anchors.fill: parent

    Text {
        id: thisLabel

        anchors.centerIn: parent

        width: 300
        height: 150;

        property int times: 24
        property alias anotherTimes: thisLabel.times

        text: "Greetings" + times

        font.family: "Ubuntu"
        font.pixelSize: 24

        // KeyNavigation is an attached property
        KeyNavigation.tab: otherLabel

        onHeightChanged: console.log('heigth:', height)

        // focus is need to receive key events
        focus: true

        color: focus ? "red" : "black"

        Rectangle {
            anchors.fill: parent

            color: "red"
            border.color: "red"
            border.width: 4
        }
    }

    Text {
        id: otherLabel

        width: 300
        height: 150

        anchors.top: thisLabel.bottom + 10

        text: "otherLabel"

        focus: true
        KeyNavigation.tab: thisLabel

        color: focus ? "red" : "black"
    }
}
