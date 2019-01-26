import QtQuick 2.0
import QtQuick.Controls 2.0
import FluentUI 0.1

Button {
    id: control
    width: 100
    height: 50
    hoverEnabled: true
    background: Rectangle {
        id: buttonBackground
        implicitWidth: 100
        implicitHeight: 40
        opacity: enabled ? 1 : 0.3
        color: FluentGlobal.lightSystemBaseLowColor
        border.color: "transparent"
        border.width: 3

        states: [
            State {
                name: "hover"
                when: control.hovered && !control.down
                PropertyChanges {
                    target: buttonBackground
                    border.color: FluentGlobal.lightSystemBaseMediumLowColor
                }
            },
            State {
                name: "normal"
                when: !control.down
                PropertyChanges {
                    target: buttonBackground
                }
            },
            State {
                name: "down"
                when: control.down
                PropertyChanges {
                    target: buttonBackground
                    color: FluentGlobal.lightSystemBaseMediumLowColor
                }
            }
        ]
    }

    contentItem: Text {
        id: textItem
        text: control.text

        font: control.font
        opacity: enabled ? 1.0 : 0.3
        color: FluentGlobal.lightSystemBaseHighColor
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight

        states: [
            State {
                name: "normal"
                when: !control.down
            },
            State {
                name: "down"
                when: control.down
                PropertyChanges {
                    target: textItem
                    color: FluentGlobal.lightSystemBaseHighColor
                }
            }
        ]
    }
}