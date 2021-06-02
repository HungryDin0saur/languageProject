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
        text: (index + 1) + " Класс"
    }

    onClicked: {
        switch(index)
        {
            case 0:
              testsPageStackView.push("qrc:/tests/1_First_class_for_tests.qml")
              break;
            case 1:
              testsPageStackView.push("qrc:/tests/2_Second_class_for_tests.qml")
              break;
            case 2:
              testsPageStackView.push("qrc:/tests/3_Third_class_for_tests.qml")
              break;
            case 3:
              testsPageStackView.push("qrc:/tests/4_Fourth_class_for_tests.qml")
              break;
            case 4:
              testsPageStackView.push("qrc:/tests/5_Fifth_class_for_tests.qml")
              break;
            case 5:
              testsPageStackView.push("qrc:/tests/6_Sixth_class_for_tests.qml")
              break;
            case 6:
              testsPageStackView.push("qrc:/tests/7_Seventh_class_for_tests.qml")
              break;
            case 7:
              testsPageStackView.push("qrc:/tests/8_Eighth_class_for_tests.qml")
              break;
            case 8:
              testsPageStackView.push("qrc:/tests/9_Ninth_class_for_tests.qml")
              break;
            case 9:
              testsPageStackView.push("qrc:/tests/10_Tenth_class_for_tests.qml")
              break;
            case 10:
              testsPageStackView.push("qrc:/tests/11_Eleventh_class_for_tests.qml")
              break;
        }
    }
}
