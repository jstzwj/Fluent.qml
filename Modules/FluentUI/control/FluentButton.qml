import QtQuick 2.0

Rectangle {
    width: 100; 
    height: 50;
    color: "#33000000";

    MouseArea {
        anchors.fill: parent
        onClicked: console.log("Button clicked!")
    }
}