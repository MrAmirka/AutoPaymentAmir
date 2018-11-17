import QtQuick 2.0

Item {
        Image{
            id:background
            source:"images/noFriends.jpg"
            anchors.fill: parent

        }
        Image{
            id:button
            source:"images/emptyButton.png"
            property double scaler: 1
            width:parent.width*0.4422
            height:parent.width*0.4422
            x:parent.width/2-width/2
            y:parent.height/2-height/2
            scale: scaler

            MouseArea{
                anchors.fill:parent
                onClicked: {
                    /*if scaler > 5
                    (gamingMenu.currentIndex++)*/
                    button.scaler+=0.5}

            }

            Behavior on scale{
                PropertyAnimation{
                    duration:100
                }

            }
        }
    }
