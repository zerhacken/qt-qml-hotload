import QtQuick 2.3
import QtQuick.Window 2.2
Item {
    anchors.fill: parent

    Rectangle {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.verticalCenter
        color: "steelblue"
        radius: 64
        anchors.margins: 4
    }
    Rectangle {
        y: parent.height / 2
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.verticalCenter
        anchors.bottom: parent.bottom
        color: "#800000FF"
        radius: 64
        anchors.margins: 4
    }
    Component.onCompleted: {
        console.log("Completed Running")
    }
}