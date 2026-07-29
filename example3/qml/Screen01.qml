/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls


Rectangle {
    // id: rectangle
    // width: Constants.width
    // height: Constants.height

    // color: Constants.backgroundColor

    // 상수 직접 선언 / / Direct declaration of constants
    property int widthConst: 1920
    property int heightConst: 1080
    property color backgroundColorConst: "#EAEAEA"

    width: widthConst
    height: heightConst
    color: backgroundColorConst

    Column {
        id: column
        width: 200
        anchors.centerIn: parent
        spacing: 10

        Rectangle {
            width: 180
            height: 30
            color: "white"
            border.color: "black"

            TextEdit {
                id: textEdit
                anchors.fill: parent
                width: 80
                height: 20
                text: qsTr("입력1/input1")
                font.pixelSize: 12
            }
        }

        Rectangle {
            width: 180
            height: 30
            color: "white"
            border.color: "black"

            TextEdit {
                id: textEdit2
                width: 80
                height: 20
                text: qsTr("입력2/input2")
                font.pixelSize: 12
            }
        }

        Text {
            id: text1
            text: qsTr("값출력/Print Value")
            font.pixelSize: 12
        }

        Button {
            id: button
            text: qsTr("Button")
            // === 코드추가:클릭 이벤트 ===
            // === Add code:Click Event ===
            onClicked: myConnector.updateText(textEdit.text, textEdit2.text)

        }
        // === 코드추가:연결 ===
        // === Add code:connection ===
        Connections {
            target: myConnector
            function onResultReady(result) {
                text1.text = result
            }
        }

    }
}
