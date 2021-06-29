import QtQuick
import QtQuick.Controls
import QtQuick.Window
import QtQuick.LocalStorage




ApplicationWindow {
    id: mainApplicationWindow
    width: Screen.width
    height: Screen.height
    visible: true

    readonly property int heightOfAllTabs: Screen.height - tabFooterBar.height
    readonly property int widthOfAllTabs: mainApplicationWindow.width

    readonly property int customIconWidth: tabFooterBar.width  / 12
    readonly property int customIconHeight: tabFooterBar.height / 3

    readonly property color pinkColor: "#FF5691"
    readonly property color yellowColor: "#91FF56"
    readonly property color blueColor: "#5691FF"

    //Component.onCompleted: { //Испускается, когда созданы все объекты qml документа
    //    //Открытие или создание базы данных QSQLITE
    //   var sqlObj = LocalStorage.openDatabaseSync("ContentForStudyingDB", "1.0.0", "", "30000000");
    //}

    SwipeView {
        id: mainPageSwipeView
        height: heightOfAllTabs
        anchors.fill: parent
        //Component.onCompleted: contentItem.interactive = false //Отключить интерактивность
        currentIndex: tabFooterBar.currentIndex

        PageForSwipeView_lessons {
        }

        PageForSwipeView_essays {
        }

        PageForSwipeView_message{
        }

        PageForSwipeView_tests{
        }

        PageForSwipeView_nativeRussian{
        }
    }

    footer: TabFooterBar{
        id: tabFooterBar
        width: mainApplicationWindow.width
        height: mainApplicationWindow.height / 10
    }
}
