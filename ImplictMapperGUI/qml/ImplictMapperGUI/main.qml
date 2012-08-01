// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5

import QtQuick 1.1

Rectangle {
    width: 1020
    height: 500
    color: "#3e496d"
    MouseArea {
        x: 0; y: 0
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
        //onClicked: { Qt.quit()
        //}
    }

    Rectangle {
        id: captureData
        x: 607; y: 120
        width: 120; height: 60
        color: "#d39999"
        border.color: "black"
        border.width: 2
        radius: 10

        Text {
            id: captureDataText
            x: 10; y: 23
            text: "Capture Data"
            font.family: "Helvetica"
            font.pointSize: 14
            font.bold: true
            color: "#000000"
            anchors.horizontalCenter: captureData.horizontalCenter
        }

        MouseArea {
            x: 0; y: 0
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.fill: captureData
            onClicked: {
            }
        }
    }

    Rectangle {
        id: trainClassifier
        x: 740; y: 120
        width: 120; height: 60
        color: "#d39999"
        border.color: "black"
        border.width: 2
        radius: 10

        Text {
            id: trainClassifierText
            x: 10; y: 23
            text: "Learn Mapping"
            font.family: "Helvetica"
            font.pointSize: 14
            font.bold: true
            color: "#000000"
            anchors.horizontalCenter: trainClassifier.horizontalCenter
        }

        MouseArea {
            x: 0; y: 0
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.fill: trainClassifier
            onClicked: {
            }
        }
    }

    Rectangle {
        id: resetClassifier
        x: 870; y: 120
        width: 120; height: 60
        color: "#d39999"
        radius: 10
        border.color: "#000000"
        Text {
            id: resetClassifierText
            x: 10
            y: 23
            color: "#000000"
            text: "Reset "
            anchors.horizontalCenter: resetClassifier.horizontalCenter
            font.family: "Helvetica"
            font.bold: true
            font.pointSize: 14
        }

        MouseArea {
            x: 0; y: 0
            anchors.fill: parent
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
        }
        border.width: 2
    }

    Rectangle {
        id: loadData
        color: "#0bb9e8"
        width: 118; height: 40
        x: 10; y: 10
        border.color: "black"
        border.width: 2
        radius: 10

        Text {
            id: loadDataText
            x: 13; y: 13
            text: "Load Data"
            font.family: "Helvetica"
            font.pointSize: 14
            font.bold: true
            color: "black"
            anchors.horizontalCenter: loadData.horizontalCenter
        }

        MouseArea {
            x: 2; y: 0
            anchors.rightMargin: -2
            anchors.bottomMargin: 0
            anchors.leftMargin: 2
            anchors.topMargin: 0
            anchors.fill: parent
            onClicked: {
            }
        }
    }

    Rectangle {
        id: saveData
        color: "#fbd035"
        width: 123; height: 40
        x: loadData.x + loadData.width+5 ; y: 10
        border.color: "black"
        border.width: 2
        radius: 10

        Text {
            id: saveDataText
            x: 13; y: 13
            text: "Save Data"
            font.family: "Helvetica"
            font.pointSize: 14
            font.bold: true
            color: "black"
            anchors.horizontalCenter: saveData.horizontalCenter
        }

        MouseArea {
            x: 2; y: 0
            anchors.rightMargin: -2
            anchors.bottomMargin: 0
            anchors.leftMargin: 2
            anchors.topMargin: 0
            anchors.fill: parent
            onClicked: {
            }
        }
    }

    Rectangle {
        id: saveNetwork
        color: "#fbd035"
        width: 120; height: 40
        x: loadNetwork.x+loadNetwork.width+5; y: saveData.height+20
        border.color: "black"
        border.width: 2
        radius: 10

        Text {
            id: saveNetworkText
            x: 13; y: 13
            text: "Save Mapping"
            font.family: "Helvetica"
            font.pointSize: 14
            font.bold: true
            color: "black"
            anchors.horizontalCenter: saveNetwork.horizontalCenter
        }

        MouseArea {
            x: 0; y: 0
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.fill: parent
            onClicked: {
            }
        }
    }

    Rectangle {
        id: loadNetwork
        x: loadData.x; y: loadData.height+20
        width: 118; height: 40
        color: "#0bb9e8"
        radius: 10
        border.color: "#000000"
        border.width: 2

        Text {
            id: loadNetworkText
            x: 13; y: 13
            text: "Load Mapping"
            font.family: "Helvetica"
            font.pointSize: 14
            font.bold: true
            color: "black"
            anchors.horizontalCenter: loadNetwork.horizontalCenter
        }

        MouseArea {
            x: 2; y: 0
            anchors.rightMargin: -2
            anchors.bottomMargin: 0
            anchors.leftMargin: 2
            anchors.topMargin: 0
            anchors.fill: loadNetwork
            onClicked: {
            }
        }
    }

    Rectangle {
        id: inputPlot
        color: "#ddfdd2"
        width: 300; height: 250
        x: 30; y: 220
        border.color: "black"
        border.width: 5
        radius: 10
    }

    Rectangle {
        id: gestureLayerPlot
        color: "#ddfdd2"
        width: 300; height: 250
        x: 360; y: 220
        border.color: "black"
        border.width: 5
        radius: 10
    }

    Rectangle {
        id: outputPlot
        color: "#ddfdd2"
        width: 300; height: 250
        x: 690; y: 220
        border.color: "black"
        border.width: 5
        radius: 10
    }

    Button {
        id: quitButton
        width: 38; height: 29
        x: 972; y: 10
        onClicked: { Qt.quit()
        }
        //text: "X"
//        border.color: "black"
//        border.width: 1
//        radius: 10

        Text {
            id: quitButtonText
            x: 28; y: 8
            text: "X"
            anchors.horizontalCenterOffset: 0
            font.family: "Helvetica"
            font.pointSize: 19
            font.bold: true
            color: "black"
            anchors.horizontalCenter: quitButton.horizontalCenter
        }
    }

//    ComboBox {
//        id: chooseClassifier
//        x: 315; y: 315

//    }

//    CheckBox {
//         id: middleSignalEnable
//         x: 365; y: 195
//         text: "Enable Middle Signals"
//     }

    states: [
        State {
            name: "State1"
        }
    ]
}
