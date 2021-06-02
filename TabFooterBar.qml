import QtQuick 2.12
import QtQuick.Controls 2.12

TabBar {
    id: tb
    currentIndex: mainPageSwipeView.currentIndex

    TabButton {
        anchors.bottom: parent.bottom
        width: tb.width / 5
        height: tb.height
        icon.source: "qrc:/image_source/lessons.png"
        icon.width: mainApplicationWindow.customIconWidth
        icon.height: mainApplicationWindow.customIconHeight
    }
    TabButton {
        anchors.bottom: parent.bottom
        width: tb.width / 5
        height: tb.height
        icon.source: "qrc:/image_source/essays.png";
        icon.width: mainApplicationWindow.customIconWidth
        icon.height: mainApplicationWindow.customIconHeight
    }
    TabButton {
        anchors.bottom: parent.bottom
        width: tb.width / 5
        height: tb.height
        icon.source: "qrc:/image_source/messages.png";
        icon.width: mainApplicationWindow.customIconWidth
        icon.height: mainApplicationWindow.customIconHeight
    }
    TabButton {
        anchors.bottom: parent.bottom
        width: tb.width / 5
        height: tb.height
        icon.source: "qrc:/image_source/tests.png";
        icon.width: mainApplicationWindow.customIconWidth
        icon.height: mainApplicationWindow.customIconHeight
    }
    TabButton {
        anchors.bottom: parent.bottom
        width: tb.width / 5
        height: tb.height
        icon.source: "qrc:/image_source/native russian.png";
        icon.width: mainApplicationWindow.customIconWidth
        icon.height: mainApplicationWindow.customIconHeight
    }
}
