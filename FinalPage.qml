import QtQuick 2.0

Item {
    Image{
        id:backgound
        source:"images/finalPage.jpg"
        anchors.fill: parent
    }

    Image{          //подключить!
        id:button
        source:"images/buttonconnect.png"
        x:parent.width*0.061
        y:parent.height*0.6826
        width:parent.width*0.8885
        height:parent.height*0.143

        MouseArea{
            id:mouseArea
            anchors.fill:parent
            onPressed: parent.scale = 0.9;
            onReleased: parent.scale = 1;


            //onClicked: {mainStack.push("SecondPage.qml")}
        }
        Behavior on scale{
            PropertyAnimation{
                duration:100
            }
        }
    }

    Image{              //Все варианты
        id:buttonAllVars
        source:"images/allvars.png"
        x:parent.width*0.061
        y:parent.height*0.8569
        width:parent.width*0.786
        height:parent.height*0.1311

        MouseArea{
            id:mouseArea2
            anchors.fill:parent
            onPressed: parent.scale = 0.9;
            onReleased: parent.scale = 1;


            //onClicked: {mainStack.push("SecondPage.qml")}
        }
        Behavior on scale{
            PropertyAnimation{
                duration:100
            }
        }
    }

}
