/* === This file is part of Calamares - <https://calamares.io> ===
 *
 *   SPDX-FileCopyrightText: 2015 Teo Mrnjavac <teo@kde.org>
 *   SPDX-FileCopyrightText: 2018 Adriaan de Groot <groot@kde.org>
 *   SPDX-License-Identifier: GPL-3.0-or-later
 *
 *   Calamares is Free Software: see the License-Identifier above.
 *
 */

import QtQuick 2.0;
import QtQuick.Controls 1.4;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    Slide {

        Image {
            id: background
            source: "cyber-logo.svg"
            width: 200; height: 200
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

        Label {
            anchors.horizontalCenter: background.horizontalCenter
            anchors.top: background.bottom
            text: qsTr("Placeholder text.")
            wrapMode: Text.WordWrap
            width: presentation.width
            horizontalAlignment: Text.Center
        }
    }
    
    function onActivate() {
        presentation.currentSlide = 0;
    }

    function onLeave() {}

}
