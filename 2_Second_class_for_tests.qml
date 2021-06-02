import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import "qrc:/"

Page {
    id: firstClassPage
    width: mainApplicationWindow.widthOfAllTabs
    height: mainApplicationWindow.heightOfAllTabs

    RowLayout {
        id: titleLayout
        anchors.top: parent.top
        width: parent.width
        height: parent.height / 13

        BackButton {
            anchors.top: parent.top
            anchors.left: parent.left
            onClicked: {
                testsPageStackView.pop()
            }
        }

       StandartTextLableForApp {
           anchors.centerIn: parent.verticalCenter
           text: "2 Класс"
           font.bold: true
       }
    }

    ScrollView {
        id: lessonPageSelectionScrollView
        width: mainApplicationWindow.widthOfAllTabs
        height: firstClassPage.height - (titleLayout.height * 3)
        anchors.top: titleLayout.bottom
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
        ScrollBar.vertical.policy: ScrollBar.AlwaysOff

        ListView {
            id: listLessonsView
            anchors.fill: parent
            model: 10
            delegate: LessonItemForlistLessonsView {

            }
        }
    }
}
