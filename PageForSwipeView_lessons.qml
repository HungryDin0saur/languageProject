import QtQuick
import QtQuick.Controls

Page {
    width: mainApplicationWindow.widthOfAllTabs
    height: mainApplicationWindow.heightOfAllTabs


    Label {
        text: qsTr("Здесь будут уроки для иностранцев")
        anchors.centerIn: parent
    }
}
