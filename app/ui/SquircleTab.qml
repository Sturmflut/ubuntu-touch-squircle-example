import QtQuick 2.0

import Ubuntu.Components 1.1

import Squircle 1.0


Tab {
    title: i18n.tr("Squircle")

    page: Page {
        Item {
            anchors.fill: parent

            Squircle {
                id: squircle
                anchors.fill: parent

                transform: [
                    Rotation { id: rotation; axis.x: 0; axis.z: 0; axis.y: 1; angle: 0; origin.x: squircle.width / 2; origin.y: squircle.height / 2; },
                    Translate { id: txOut; x: -squircle.width / 2; y: - squircle.height / 2 },
                    Scale { id: scale; },
                    Translate { id: txIn; x: squircle.width / 2; y: squircle.height / 2 }
                ]
            }

            SequentialAnimation {
                PauseAnimation { duration: 5000 }
                ParallelAnimation {
                    NumberAnimation { target: scale; property: "xScale"; to: 0.6; duration: 1000; easing.type: Easing.InOutBack }
                    NumberAnimation { target: scale; property: "yScale"; to: 0.6; duration: 1000; easing.type: Easing.InOutBack }
                }
                NumberAnimation { target: rotation; property: "angle"; to: 80; duration: 1000; easing.type: Easing.InOutCubic }
                NumberAnimation { target: rotation; property: "angle"; to: -80; duration: 1000; easing.type: Easing.InOutCubic }
                NumberAnimation { target: rotation; property: "angle"; to: 0; duration: 1000; easing.type: Easing.InOutCubic }
                NumberAnimation { target: squircle; property: "opacity"; to: 0.5; duration: 1000; easing.type: Easing.InOutCubic }
                PauseAnimation { duration: 1000 }
                NumberAnimation { target: squircle; property: "opacity"; to: 0.8; duration: 1000; easing.type: Easing.InOutCubic }
                PauseAnimation { duration: 1000 }
                NumberAnimation { target: squircle; property: "opacity"; to: 1; duration: 1000; easing.type: Easing.InOutCubic }
                ParallelAnimation {
                    NumberAnimation { target: scale; property: "xScale"; to: 1; duration: 1000; easing.type: Easing.InOutBack }
                    NumberAnimation { target: scale; property: "yScale"; to: 1; duration: 1000; easing.type: Easing.InOutBack }
                }

                running: true
                loops: Animation.Infinite
            }


            Rectangle {
                color: Qt.rgba(1, 1, 1, 0.7)
                radius: 10
                border.width: 1
                border.color: "white"
                anchors.fill: label
                anchors.margins: -10
            }

            Text {
                id: label
                color: "black"
                wrapMode: Text.WordWrap
                text: "The background here is a squircle rendered with raw OpenGL using the 'beforeRender()' signal in QQuickWindow. This text label and its border is rendered using QML"
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                anchors.margins: 20
            }
        }
    }
}
