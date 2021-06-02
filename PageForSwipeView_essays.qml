import QtQuick 2.10
import QtQuick.Controls 2.20

Page {
    width: mainApplicationWindow.widthOfAllTabs
    height: mainApplicationWindow.heightOfAllTabs

    header: Label {
        text: qsTr("Page 2")
        font.family: "Verdana"
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        text: qsTr("Здесь будут храниться сочинения всех пользователей \n
                   с комментариями")
        anchors.centerIn: parent
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
