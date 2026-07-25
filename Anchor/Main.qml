import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Anchor") // window title

    Rectangle {
        id:rt
        color: "lightgreen"

        // 부모(Window)에 꽉 채우기
        // QML에서 parent는 현재 요소를 감싸고 있는 바로 위 요소

        // Fill the parent (Window)
        // In QML, parent is the element immediately above the current element.

        anchors.fill: parent

        // 가운데 정렬 / center aligned
        Text {
            id:anchorTxt1
            text: "Anchor1!"
            anchors.centerIn: parent
            font.pixelSize: 24
            color: "black"
        }
        // 좌상단 / Top-Left
        Text {
            id:anchorTxt2
            text: "Anchor2!"
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 24
            color: "black"
        }
        // 우상단 / Top-Right
        Text {
            id:anchorTxt3
            text: "Anchor3!"
            anchors.right:parent.right
            anchors.top:parent.top
            font.pixelSize: 24
            color: "black"
        }
        // 좌하단 / Bottom-Left
        Text {
            id:anchorTxt4
            text:"Anchors4!"
            anchors.left:parent.left
            anchors.bottom:parent.bottom
            font.pixelSize: 24
            color: "black"
        }
        // 우하단 / Bottom-Right
        Text {
            id:anchorTxt5
            text:"Anchor5!"
            anchors.right:rt.right // id
            anchors.bottom:parent.bottom
            font.pixelSize: 24
            color: "black"
        }

        Text {
            id:anchorTxt6 // id
            text:"Anchor6!"
            anchors.top : anchorTxt1.bottom

            // horizontalCenter : 수평중심선 / horizontal center line
            // verticalCenter : 수직 중심선 / vertical center line

            // Anchor1 기준 중앙 정렬 / Center alignment based on Anchor1
            anchors.horizontalCenter: anchorTxt1.horizontalCenter
            font.pixelSize:24
            color:"black"
        }

        // Anchor6의 기준은 Rectangle이 아니라 Anchor1 텍스트(anchorTxt1)
        // The reference for Anchor6 is not Rectangle, but Anchor1 text (anchorTxt1)
        Text {
            id:anchorTxt7
            text:"Anchor7!"
            anchors.top : anchorTxt6.bottom
            anchors.left : anchorTxt6.right
            font.pixelSize:24
            color:"black"
        }
    }

}



/*

Window {}와 ApplicationWindow {}의 차이점
✅ 1. Window (QtQuick.Window 모듈)

가장 기본적인 윈도우. 순수한 빈 창을 만들어줍니다.

특징

UI 컨트롤(버튼 등) 자체는 없음 → 직접 넣어야 함

메뉴바, 툴바, 상태바 같은 기능 없음

오직 윈도우 자체(크기, 가시성, 타이틀 등)만 제공

가볍고 단순함

예:
import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 400
    height: 300
    visible: true
}


✅ 2. ApplicationWindow (Qt Quick Controls 모듈)

Window를 확장한 앱용 기본 틀(Window + 앱 레이아웃 구조)

특징

메뉴바(MenuBar)

툴바(ToolBar)

드로어(Drawer)

상태바(StatusBar)

제목줄 아래 Content 영역 자동 제공

중대형 앱 UI 제작에 맞춤

예:
import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    width: 400
    height: 300
    visible: true

    menuBar: MenuBar {
        Menu {
            title: "File"
            MenuItem { text: "Open" }
        }
    }

    header: ToolBar {
        Label { text: "Toolbar Title" }
    }

    footer: StatusBar {
        Label { text: "Ready" }
    }
}

어떤 상황에 무엇을 써야 하나?
✔ 가벼운 앱, 단순한 창만 필요 → Window

게임 화면

커스텀 UI를 직접 그릴 때(Canvas같은)

매우 최소한의 UI

✔ 메뉴바, 툴바 등 앱 구조가 필요 → ApplicationWindow

데스크톱 앱

모바일 앱 전체 구조

화면 레이아웃이 명확한 앱

*/
