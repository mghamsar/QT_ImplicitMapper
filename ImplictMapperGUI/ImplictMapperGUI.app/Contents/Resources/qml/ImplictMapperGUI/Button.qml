// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {

    id: button
    width: 100
    height: 26
    color: "#614ef1"
    radius: 11

    property alias buttonText: buttonText.text
    property color buttonColor: button.color
    //property alias buttonGradient: button.gradient
    property alias buttonFont: buttonText.font.pixelSize

    signal clicked

            Text {
                id: buttonText
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                wrapMode: Text.WrapAnywhere
                text: "Hi"
                color:"white"
                font.pixelSize: 12
                smooth: true
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
