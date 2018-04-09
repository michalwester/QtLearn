import QtQuick 2.6
import "create-component.js" as ImageCreator

Item {
    id: root
    anchors.fill: parent

    Component.onCompleted: ImageCreator.createImageObject();
}
