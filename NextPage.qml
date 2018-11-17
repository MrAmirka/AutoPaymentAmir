import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

Item {
    id:nextPage
    Image{
        id:mainImg
        source:"images/1stpage.jpg"
        width:parent.width
        height:parent.height
    }
    Image{
        id:button
        source:"images/button.png"
        x:parent.width/2-width/2
        y:(parent.height/2-height/2)+55
        width:0.27*650
        height:0.27*650

        MouseArea{
            id:mouseArea
            anchors.fill:parent
            onPressed: {parent.scale = 0.9;
                        animation.pause()}
            onReleased: {parent.scale = 1;
                         }

            onClicked: {mainStack.push("FinalPage.qml")}
        }
        Behavior on scale{
            PropertyAnimation{
                duration:100
            }
        }

        SequentialAnimation on scale{
               id:animation
               running: true
               NumberAnimation { from:1; to: 1.1; duration: 500 }
               NumberAnimation { from:1.1; to: 1; duration: 1000 }
               NumberAnimation { from:1; to: 1.1; duration: 500 }
               NumberAnimation { from:1.1; to: 1; duration: 1000 }
               NumberAnimation { from:1; to: 1; duration: 750 }
               loops:Animation.Infinite
           }
    }
}

