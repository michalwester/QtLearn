import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("QtLearn")

    Button {
        text: "Simple Button"
        anchors.centerIn: parent

        onButtonClick: console.log("Simple Button clicked")
    }
}
