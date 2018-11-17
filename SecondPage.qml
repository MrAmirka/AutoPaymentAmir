import QtQuick 2.0

Item {


    Image {
        id: background
        source: "images/2ndpage.jpg"
        anchors.fill:parent
    }

    Image {
        id: buttonFirst
        source: "images/buttonsdrugom.png"
        x:parent.width*0.0578
        y:parent.height*0.2596
        width: parent.width*0.8844
        height:parent.height*0.1507

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

    Image {
        id: buttonSecond
        source: "images/button2.png"
        x:parent.width*0.0578
        y:parent.height*0.441
        width: parent.width*0.8844
        height:parent.height*0.1507

        MouseArea{
            id:mouseArea2
            anchors.fill:parent
            onPressed: parent.scale = 0.9;
            onReleased: parent.scale = 1;


            onClicked: {gamingMenu.currentIndex = 1}
        }
        Behavior on scale{
            PropertyAnimation{
                duration:100
            }
        }
    }

}
