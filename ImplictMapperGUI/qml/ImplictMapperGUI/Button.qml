// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {

    id: button
    width: 100
    height: 26
    radius: 11

    gradient: Gradient {
        GradientStop {
            position: 0
            color: "#077a7c"
        }

        GradientStop {
            position: 1
            color: "#9cbdc0"
        }
    }

    //clip: false

    border.color: "#130101"
    border.width: 1
    smooth: true

    property alias operation: buttonText.text
    property string color: ""
    signal clicked

            Text {
                id: buttonText
                x: 38
                y: 6
                //text: qsTr("Button")
                anchors.centerIn: button; anchors.verticalCenterOffset: -1
                //verticalAlignment: Text.AlignVCenter
                font.pixelSize: 14
                //anchors.horizontalCenter: button.horizontalCenter
            }

            MouseArea {
                id: mouseAreaButton
                anchors.fill: button
                onClicked: {
                    button.clicked()
                }
            }

     states: State {
         name: "pressed"; when: mouseArea.pressed == true
         PropertyChanges { target: shade; opacity: .4 }
     }
 }
