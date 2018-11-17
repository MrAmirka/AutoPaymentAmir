import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

Window {
    visible: true
    width: 405
    height: 720
    title: qsTr("Hello World")

    StackView{
        anchors.fill: parent
        id:mainStack
        SwipeView{
            id:mainMenu
            anchors.fill:parent
            HomePage{
                id:homePage
            }
            NextPage{
                id:nextPage
            }
        }

        /*SwipeView{
            id:gamingMenu
            anchors.fill:parent
        }*/

        PageIndicator {
            id: indicator


            count: mainMenu.count
            currentIndex: mainMenu.currentIndex

            anchors.bottom: mainMenu.bottom
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
