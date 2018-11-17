import QtQuick 2.0

Item {
    Image{
        id:backgound
        source:"images/3rdpage.jpg"
        anchors.fill: parent
    }

    Image{
        id:button
        source:"images/buttonget.png"
        x:parent.width*0.5823
        y:parent.height*0.5984
        width:parent.width*0.3574
        height:parent.height*0.1057

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

    Rectangle
    {
        width:parent.width*0.28
        height: 40;
        border.color: "grey";
        border.width: 1;
        radius: 15
        x:parent.width*0.5823
        y:parent.height*0.5011
        clip: true
        opacity: 0.85
        TextInput {
            id: textLogin;
            anchors.fill: parent;
            anchors.margins: 8;
            wrapMode: TextInput.WrapAnywhere;

            text: focus ? "" : "  Сумма";
            font.family: "Helvetica CE"
            font.pointSize: 25
            opacity: 0.85
        }

    }
}
