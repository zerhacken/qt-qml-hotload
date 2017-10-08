import QtQuick 2.3
import QtQuick.Window 2.2
Item {
    anchors.fill: parent

    property int rounding:    10
    property int margin:       8
    property int borderWidth:  4
    property int pointSize:   32
    property string family:   "Monospace"

    Rectangle {
        anchors.left:   parent.left
        anchors.right:  parent.right
        anchors.top:    parent.top
        anchors.bottom: parent.verticalCenter

        color: "gray"
        radius: rounding
        anchors.margins: margin
        border.width:    borderWidth
        border.color:    "black"

        TextInput {
            id: t0
            anchors.centerIn: parent
            text:             ""
            font.family:      family
            font.pointSize:   pointSize
            maximumLength:    16
            focus:            true
        }
    }

    Rectangle {
        anchors.left:   parent.left
        anchors.right:  parent.right
        anchors.top:    parent.verticalCenter
        anchors.bottom: parent.bottom

        color: "gray"
        radius: rounding
        anchors.margins: margin
        border.width:    borderWidth
        border.color:    "black"

        Text {
            id: t1
            anchors.centerIn: parent
            text:             t0.text
            font.family:      family
            font.pointSize:   pointSize
        }
    }

    Component.onCompleted: {
        console.log("Completed Running")
    }
}
