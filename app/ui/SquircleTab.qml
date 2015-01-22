import QtQuick 2.0

import Ubuntu.Components 1.1

import Squircle 1.0


Tab {
    title: i18n.tr("Squircle")

    page: Page {
        Item {
            anchors.fill: parent

            Squircle {
                anchors.fill: parent
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
