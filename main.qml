import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import "qrc:/QtCadaques13"

ApplicationWindow {
    visible: true
    visibility: "Maximized"
    title: qsTr("QtLearn")

    menuBar: MenuBar {

        Menu {
            title: "QmlBook"

            Menu {
                title: "QtCadaques04"

                MenuItem {
                    text: "ThisLabel"
                    onTriggered: {
                        contentLoader.source = "qrc:/QtCadaques04/ThisLabel.qml"
                    }
                }
            }

            Menu {
                title: "QtCadaques13"

                MenuItem {
                    text: "Dial"
                    onTriggered: {
                        //contentLoader.source = "qrc:/QtCadaques13/Dial.qml"
                        contentLoader.source = "Button.qml"
                    }
                }
            }
        }
    }

    Loader {
        id: contentLoader
        anchors.fill: parent
    }
}
