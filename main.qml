import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    visible: true
    width: 320
    height: 640
    title: qsTr("Scroll")
    Rectangle {
        id: myRec
        width: parent.width
        height: parent.height/3
        color: "green"
    }
    Rectangle {
        id: scrollarea
        y: myRec.height
        width: parent.width
        height: parent.height-myRec.height
        color: "white"
    }

    ScrollView {
        anchors.fill: scrollarea
        anchors.topMargin: 20

        ListView {
            width: parent.width
            model: 20
            delegate: ItemDelegate {
                text: "my_Item " + (index + 1)
                width: parent.width
            }
        }
    }
}

