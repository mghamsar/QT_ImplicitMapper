// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5

import QtQuick 1.1

Rectangle {
    width: 1020
    height: 500
    color: "#f1f1de"

    ClassifierMenu{
    x:30
    y:16
    width: 150
    height: 128
    anchors.verticalCenterOffset: -170
    anchors.horizontalCenterOffset: -405

    }

    Button {
        id: captureData
        x: 607; y: 120
        width: 120; height: 60
        color: "#d39999"
        border.color: "black"
        border.width: 1
        radius: 10
        buttonText: "Capture Data"
        onClicked: { Qt.quit()
        }
    }

    Button {
        id: trainClassifier
        x: 740; y: 120
        width: 120; height: 60
        color: "#d39999"
        border.color: "black"
        border.width: 1
        radius: 10
        buttonText: "Learn Mapping"
        onClicked: {
        }
    }

    Button {
        id: resetClassifier
        x: 870; y: 120
        width: 120; height: 60
        color: "#d39999"
        radius: 10
        border.color: "#000000"
        border.width: 1
        buttonText: "Reset"
        onClicked: {
        }
    }

    Button {
        id: loadData
        color: "#0bb9e8"
        width: 118; height: 40
        x: 212; y: 10
        border.color: "black"
        border.width: 1
        radius: 10
        buttonText: "Load Data"
        onClicked: {
        }
    }

    Button {
        id: saveData
        color: "#fbd035"
        width: 123; height: 40
        x: loadData.x + loadData.width+5 ; y: 10
        border.color: "black"
        border.width: 1
        radius: 10
        buttonText: "Save Data"
        onClicked: {
        }
    }

    Button {
        id: saveNetwork
        color: "#fbd035"
        width: 120; height: 40
        x: loadNetwork.x+loadNetwork.width+5; y: saveData.height+20
        border.color: "black"
        border.width: 1
        radius: 10
        buttonText: "Save Mapping"
        onClicked: {
        }
    }

    Button {
        id: loadNetwork
        x: loadData.x; y: loadData.height+20
        width: 118; height: 40
        color: "#0bb9e8"
        radius: 10
        border.color: "#000000"
        border.width: 1
        buttonText: "Load Mapping"
        onClicked: {
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
        border.width: 1
        onClicked: { Qt.quit()
        }

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

    states: [
        State {
            name: "State1"
        }
    ]
}
