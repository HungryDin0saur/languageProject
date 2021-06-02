import QtQuick
import QtQuick.Controls

import "qrc:/native_russian"

Page {
    id: nativeRussianForClasses
    width: mainApplicationWindow.widthOfAllTabs
    height: mainApplicationWindow.heightOfAllTabs

    StackView {
        id: nativeRussianPageStackView
        initialItem: nativeRussianPageSelectClassScrollView
        anchors.fill: parent
    }

    ScrollView {
        id: nativeRussianPageSelectClassScrollView
        anchors.fill: nativeRussianPageStackView
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
        ScrollBar.vertical.policy: ScrollBar.AlwaysOff

        ListView {
            id: listTestView
            model: 5
            delegate: ClassRoomForNativeRussianItem {

            }
        }
    }

    Keys.onBackPressed: {
        if(nativeRussianPageStackView.depth > 1)
        {
            nativeRussianPageStackView.pop();
        }
    }
}
