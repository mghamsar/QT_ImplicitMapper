// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

BorderImage {
    //source: "file"
    id: classifierBorder
    width: 200; height: 200
    border.left: 5; border.top: 5
    border.right: 5; border.bottom: 5


Column{
    id: activeStatesColumn
    x: classifierBorder.x
    y: classifierBorder.y

    width: classifierBorder.width - classifierBorder.border.left - classifierBorder.border.right
    height: classifierBorder.height - classifierBorder.border.bottom - classifierBorder.border.top
    spacing: 10

    Button{
        id: activeButton
        x: activeStatesColumn.x
        y: activeStatesColumn.y
        width: activeStatesColumn.width
        height: 50
        buttonText: "Drag classifer here"
        buttonColor: "blue"
        border.color:"black"
        border.width:1
    }

    Column{
        id: listCol
        x:activeStatesColumn.x
        y:activeStatesColumn.y + activeButton.height + 10
        width: activeStatesColumn.width
        height: activeStatesColumn.height - (activeButton.y + activeButton.height)
        smooth: true
        spacing: 2

        Button{
             id: svmButton
             height: 30
             width: listCol.width
             color: "lightgrey"
             radius: 5
             border.color: "black"
             buttonText: "Neural Network"
        }

        Button{
             color: "lightgrey"
             radius: 5
             id: annButton
             height: 30
             width: listCol.width
             border.color: "black"
             buttonText: "Support Vector Machine"
        }

        states: [
            State {
                name: "annActive"
            },
            State {
                name: "svmActive"
            },
            State {
                name: "curvefitActive"
            }
        ]
    }

}
states: [
    State {
        name: "State1"
    }
]
}
