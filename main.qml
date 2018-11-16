import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

Window {
    visible: true
    width: 405
    height: 720
    title: qsTr("Hello World")

    SwipeView{
        id:mainStack
        anchors.fill:parent
        HomePage{
            id:homePage
        }
        NextPage{
            id:nextPage
        }
    }



}
