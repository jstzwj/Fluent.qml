import QtQuick 2.0
import FluentUI 0.1

Rectangle {
    id: button
    width: 100
    height: 50
    color: FluentGlobal.lightSystemBaseLowColor
    border.color: "transparent"
    border.width: 3
    transform: Scale {
        id: buttonScale
        origin.x: width/2
        origin.y: height/2
        xScale: 1
        yScale: 1
        }

    Text {
        anchors.centerIn: parent
        text: "你好世界"
        color: FluentGlobal.lightSystemBaseHighColor
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onPressed:{
            buttonScale.xScale = 0.98
            buttonScale.yScale = 0.98
            button.color = FluentGlobal.lightSystemBaseMediumLowColor
            console.log("press")
        }
        onReleased:{
            buttonScale.xScale = 1
            buttonScale.yScale = 1
            button.color = FluentGlobal.lightSystemBaseLowColor
            console.log("release")
        }
        onEntered:{
            button.border.color = FluentGlobal.lightSystemBaseMediumLowColor
        }
        onExited:{
            button.border.color = "transparent"
        }
    }
}