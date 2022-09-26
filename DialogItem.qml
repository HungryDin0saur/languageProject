import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs

import "qrc:/fonts"

Dialog {
    id: exitDialog //ПОДОГНАТЬ ВЫСОТУ И ШИРИНУ НА АНДРОИДЕ
    width: 100  // Задаём ширину диалога, работает на десктопе, но на Android не сработает
    height: 50

    FontLoader {
        id: customFont
        source: "qrc:/fonts/Nunito-Light(forApp).ttf"
    }

    font.pixelSize: Qt.application.font.pixelSize * 1.8
    font.family: customFont.font.family
    font.bold: true
    modal: true
    standardButtons: StandardButton.Ok
}
