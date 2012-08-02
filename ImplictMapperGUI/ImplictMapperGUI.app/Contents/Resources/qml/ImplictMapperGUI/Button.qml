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
            color: "#02584a"
        }

        GradientStop {
            position: 0.480
            color: "#add3e6"
        }

        GradientStop {
            position: 1
            color: "#02584a"
        }
    }

    property alias buttonText: buttonText.text
    signal clicked

            Text {
                id: buttonText
                color: "#ffffff"
                styleColor: "#ffffff"
                wrapMode: Text.WordWrap
                smooth: true
                anchors.centerIn: button; anchors.verticalCenterOffset: -1
                font.pixelSize: 14
            }

            MouseArea {
                id: mouseAreaButton
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.fill: button
                onClicked: {
                    button.clicked()
                }
            }

     states: State {
         name: "pressed"; when: mouseArea.pressed == true
         PropertyChanges { target: shade; opacity: .4 }

         PropertyChanges {
             target: button
             color: "#7c4c9c"
         }

         PropertyChanges {
             target: mouseAreaButton
             x: 0
             y: 0
             anchors.topMargin: 0
             anchors.rightMargin: 0
             anchors.bottomMargin: 0
             anchors.leftMargin: 0
         }
     }
 }
