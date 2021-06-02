import QtQuick 2.10
import QtQuick.Controls 2.15

import "qrc:/tests"

Page {
    id: testsForClasses
    width: mainApplicationWindow.widthOfAllTabs
    height: mainApplicationWindow.heightOfAllTabs

    header: ToolBar {
        id: messagesToolBar
        Material.background: "white"

        StandartTextLableForApp {
           text: "Русский язык, уроки"
           color: "black"
           font.bold: true
           anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    StackView {
        id: testsPageStackView
        initialItem: testsPageSelectClassScrollView
        anchors.fill: parent
    }

    ScrollView {
        id: testsPageSelectClassScrollView
        anchors.fill: testsPageStackView
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
        ScrollBar.vertical.policy: ScrollBar.AlwaysOff

        ListView {
            id: listTestView
            model: 11
            delegate: ClassRoomForTestItem {

            }
        }
    }

    Keys.onBackPressed: {
        if(testsPageStackView.depth > 1)
        {
            testsPageStackView.pop();
        }
    }
}
