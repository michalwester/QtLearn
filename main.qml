import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    visibility: "Maximized"
    title: qsTr("QtLearn")

    Button {
        text: "Simple Button"
        anchors.centerIn: parent

        onButtonClick: console.log("Simple Button clicked")
    }
}
