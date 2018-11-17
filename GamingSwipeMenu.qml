import QtQuick 2.0
import QtQuick.Controls 2.2

Item {
    SwipeView{
        id:gamingMenu
        anchors.fill: parent
        SecondPage{
            id:secondPage
        }
        /*NoFriends{
            id:noFriends
        }*/
    }

    PageIndicator {
        id: indicator


        count: gamingMenu.count
        currentIndex: mainMenu.currentIndex

        anchors.bottom: gamingMenu.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

}
