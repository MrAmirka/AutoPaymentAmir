import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

Item {
    id:nextPage
    Rectangle{
        id:rect
        color: "#00b956"
        anchors.fill:parent
        Text{

            text:"В ходе игры мы попытаемся определить Ваш психотип\r и подобрать соответствующий автоплатёж"
            color: "#ffffff"
            font.pointSize: 12
            font.family:"GT Walshem Pro"
            x:parent.width/2-width/2
            y:parent.height-parent.height/4
        }
    }
}

