import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    // UI 파일 로딩 / UI file loading
    Loader {
        anchors.fill: parent
        source: "qml/Screen01.qml"
    }
}
