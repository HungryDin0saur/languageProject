import QtQuick
import QtQuick.Controls
import "qrc:/fonts"

Label {

    FontLoader {
        id: customFont
        source: "qrc:/fonts/Nunito-Light(forApp).ttf"
    }

    font.pixelSize: Qt.application.font.pixelSize * 1.8
    font.family: customFont.font.family
}
