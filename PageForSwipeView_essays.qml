import QtQuick
import QtQuick.Controls

Page {
    width: mainApplicationWindow.widthOfAllTabs
    height: mainApplicationWindow.heightOfAllTabs

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
