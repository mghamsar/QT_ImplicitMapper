// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Column{
    id: activeStatesColumn
    width: 200
    height: 400
    spacing: 50

    Button{
        id: activeButton
        width: activeStatesColumn.width


    }

    Column{
        id: listCol
        x:0
        y:50
        width: activeStatesColumn.width
        height: 100
        smooth: true
        //anchors.verticalCenterOffset: 0
        //anchors.horizontalCenterOffset: 135
        //anchors.centerIn: parent
        spacing: 4


        Button{
             id: svmButton
             height: 40
             width: listCol.width
             color: "lightgrey"
             radius: 5
             border.color: "black"

             gradient: Gradient {
                 GradientStop {
                     position: 0
                     color: "darkgrey"
                 }

                 GradientStop {
                     position: 0.480
                     color: "lightgrey"
                 }

                 GradientStop {
                     position: 1
                     color: "darkgrey"
                 }
             }
        }

        Button{
             color: "grey"
             radius: 5
             id: annButton
             height: 40
             width: listCol.width
             border.color: "black"

             gradient: Gradient {
                 GradientStop {
                     position: 0
                     color: "darkgrey"
                 }

                 GradientStop {
                     position: 0.480
                     color: "lightgrey"
                 }

                 GradientStop {
                     position: 1
                     color: "darkgrey"
                 }
             }
        }

        Button{
             id: curvefitButton
             height: 40
             width: listCol.width
             color: "darkgrey"
             radius: 5
             border.color: "black"
             onClicked: Qt.quit()

             gradient: Gradient {
                 GradientStop {
                     position: 0
                     color: "darkgrey"
                 }

                 GradientStop {
                     position: 0.480
                     color: "lightgrey"
                 }

                 GradientStop {
                     position: 1
                     color: "darkgrey"
                 }
             }
        }
        states: [
            State {
                name: "State1"
            },
            State {
                name: "State2"
            },
            State {
                name: "State3"
            },
            State {
                name: "State4"
            }
        ]
    }

}
