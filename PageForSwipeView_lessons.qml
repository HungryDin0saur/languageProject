import QtQuick 2.10
import QtQuick.Controls 2.20

Page {
    width: mainApplicationWindow.widthOfAllTabs
    height: mainApplicationWindow.heightOfAllTabs

    header: Label {
        text: qsTr("Page 1")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        text: qsTr("Здесь будут уроки для иностранцев")
        anchors.centerIn: parent
    }
}
