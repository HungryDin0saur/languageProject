import QtQuick
import QtQuick.Controls

Page {
    id: messagesPage
    width: mainApplicationWindow.widthOfAllTabs
    height: mainApplicationWindow.heightOfAllTabs

    header: ToolBar {
        id: messagesToolBar
        Material.background: "white"

        TabButton {
            id: infoButton
            width: height
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            StandartTextLableForApp {
                text: "?"
                color: "black"
                anchors.centerIn: parent
            }

            onClicked: {
                messagesPageInfoDrawer.open()
            }
        }

        StandartTextLableForApp {
           text: "Сообщения"
           color: "black"
           font.bold: true
           anchors.horizontalCenter: parent.horizontalCenter
        }

        TabButton {
            id: profileButton
            width: height
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            StandartTextLableForApp {
                text: "+"
                color: "black"
                anchors.centerIn: parent
            }

            onClicked: {
                messagesPageProfileDrawer.open()
            }
        }
    }

    Drawer {
        id: messagesPageInfoDrawer
        width: messagesPage.width
        height: mainApplicationWindow.height
        interactive: false

        BackButton {
            id: backBtnRghtDraw
            width: mainApplicationWindow.customIconWidth * 1.5
            height: width
            anchors.top: parent.top
            anchors.left: parent.left

            onClicked: {
                messagesPageInfoDrawer.close()
            }
        }

        Text {
            width: parent.width
            height: parent.height - backBtnLftDraw.height
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right

            StandartTextLableForApp {
                font.pixelSize: Qt.application.font.pixelSize
                font.bold: true
                text: "Thanks: \n\n\n"
            }

            StandartTextLableForApp {
                font.pixelSize: Qt.application.font.pixelSize
                anchors.left: parent.left
                text: "
 Icons authors: \n
       https://www.flaticon.com/ru/authors/smashicons \n
 Fonts authors:
       RobotoMono-Light - Google \n
       Nunito-Light - Google"

            }
        }
    }

    Drawer {
        id: messagesPageProfileDrawer
        width: messagesPage.width
        height: mainApplicationWindow.height
        interactive: false
        edge: Qt.RightEdge

        BackButton {
            id: backBtnLftDraw
            width: mainApplicationWindow.customIconWidth * 1.5
            height: width
            anchors.top: parent.top
            anchors.left: parent.left

            onClicked: {
                messagesPageProfileDrawer.close()
            }
        }
    }
}
