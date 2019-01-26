import QtQuick 2.0
import QtQuick.Controls 2.5
import FluentUI 0.1

Rectangle {
 width: 200
 height: 200
 color: "white"

Text {
 text: "Hello World"
 anchors.centerIn: parent
 }
 FluentButton { width: 100; height: 50; }
}