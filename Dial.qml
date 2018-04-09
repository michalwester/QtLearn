import QtQuick 2.6
import "qrc:/"

Item {
    id: dial

    width: 2000
    height: 1000
    state: "analog"

    Loader {
        id: dialLoader

        anchors.centerIn: parent
    }

    Button {
        id: analogButton

        text: "Analog"
        width: parent.width / 2

        anchors.bottom: parent.bottom
        anchors.left: parent.left

        onButtonClick: parent.state = "analog"
    }

    Button {
        id: digitalButton

        text: "Digital"
        width: parent.width / 2

        anchors.bottom: parent.bottom
        anchors.right: parent.right

        onButtonClick: parent.state = "digital"
    }

    states: [
        State {
            name: "analog"
            PropertyChanges { target: analogButton; color: "green"; }
            PropertyChanges { target: dialLoader; source: "Analog.qml"; }
        },
        State {
            name: "digital"
            PropertyChanges { target: digitalButton; color: "green"; }
            PropertyChanges { target: dialLoader; source: "Digital.qml"; }
        }
    ]
}
