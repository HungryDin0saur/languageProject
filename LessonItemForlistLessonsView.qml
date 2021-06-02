import QtQuick
import QtQuick.Controls
import QtQuick.LocalStorage

import "qrc:/"

ItemDelegate  {
        id: lessonRoomTitle
        width: mainApplicationWindow.widthOfAllTabs
        height: mainApplicationWindow.heightOfAllTabs / 10

        property bool trigHeight: true

        Rectangle {
            id: progressIndicatorOfALessonRoom
            width: mainApplicationWindow.customIconHeight
            height: mainApplicationWindow.customIconHeight
            radius: mainApplicationWindow.customIconHeight
            anchors.left: lessonRoomTitle.left
            anchors.verticalCenter: textLabel.verticalCenter
            anchors.margins: height / 3
            color: pinkColor
        }

        StandartTextLableForApp {
            id: textLabel
            anchors.top: lessonRoomTitle.top
            anchors.left: parent.left
            anchors.leftMargin: lessonRoomTitle.width / 10
            text: "Тема - " + (index + 1)
        }

        onClicked: {
            if(trigHeight === true)
            {
                lessonRoomTitle.height *= 5; //ДОЛЖНО БЫТЬ ПЕРЕДЕЛАНО НА ИЗМЕНЕНИЕ В ЗАВИСИМОСТИ ОТ РАЗМЕРА КОНТЕНТА,
                trigHeight = false;          //КОТОРЫЙ ДОЛЖЕН БЫТЬ ПОУМОЛЧАНИЮ СКРЫТ И СТАНОВИТСЯ "ВИЗИБЛ" ПРИ КЛИКЕ НА ТЕМУ
            }
            else
            {
                lessonRoomTitle.height /= 5; //ДОЛЖНО БЫТЬ ПЕРЕДЕЛАНО НА ИЗМЕНЕНИЕ В ЗАВИСИМОСТИ ОТ РАЗМЕРА КОНТЕНТА,
                trigHeight = true;           //КОТОРЫЙ ДОЛЖЕН БЫТЬ ПОУМОЛЧАНИЮ СКРЫТ И СТАНОВИТСЯ "ВИЗИБЛ" ПРИ КЛИКЕ НА ТЕМУ
            }
        }
}
