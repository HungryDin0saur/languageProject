import QtQuick
import QtQuick.Controls

import "qrc:/"

ItemDelegate {
    id: classRoomTitle
    width: mainApplicationWindow.widthOfAllTabs
    height: mainApplicationWindow.heightOfAllTabs / 10

    Rectangle {
        id: progressIndicatorOfAClassroom
        width: mainApplicationWindow.customIconHeight
        height: mainApplicationWindow.customIconHeight
        radius: mainApplicationWindow.customIconHeight
        anchors.left: classRoomTitle.left
        anchors.verticalCenter: classRoomTitle.verticalCenter
        anchors.margins: height / 3
        color: pinkColor
    }

    StandartTextLableForApp {
        anchors.left: progressIndicatorOfAClassroom.right
        anchors.verticalCenter: classRoomTitle.verticalCenter
        anchors.leftMargin: progressIndicatorOfAClassroom.height / 3
        text: (index + 5) + " Класс"
    }

    onClicked: {
        switch(index)
        {
            case 0:
              nativeRussianPageStackView.push("qrc:/native_russian/5_Fifth_class_for_native_rus.qml")
              break;
            case 1:
              nativeRussianPageStackView.push("qrc:/native_russian/6_Sixth_class_for_native_rus.qml")
              break;
            case 2:
              nativeRussianPageStackView.push("qrc:/native_russian/7_Seventh_class_for_native_rus.qml")
              break;
            case 3:
              nativeRussianPageStackView.push("qrc:/native_russian/8_Eighth_class_for_native_rus.qml")
              break;
            case 4:
              nativeRussianPageStackView.push("qrc:/native_russian/9_Ninth_class_for_native_rus.qml")
              break;
        }
    }
}
