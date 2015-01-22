import QtQuick 2.0

import Ubuntu.Components 1.1

import Squircle 1.0

import "ui"


MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "squircle.sturmflut"

    // Removes the old toolbar and enables new features of the new header.
    useDeprecatedToolbar: false

    width: units.gu(40)
    height: units.gu(75)


    Tabs {
        SquircleTab {

        }
    }
}
