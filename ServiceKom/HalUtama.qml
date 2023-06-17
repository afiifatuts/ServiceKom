import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.0

Page{
    signal mulai()
    property alias startBtn: startBtn
    spacing: -2



    Button {
        id: startBtn
        x: 151
        y: 541
        width: 178
        height: 65
        text: qsTr("ServiceKom")
        z: 2
        font.pointSize: 15
        spacing: 4
        onClicked: {
            mulai()
        }
    }

    GridLayout {
    }

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 480
        height: 640
        color: "#ffffff"
        z: -1

        MouseArea{
            anchors.fill: parent
            onClicked: {
                mulai()
            }
        }

    }

    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        width: 480
        height: 640
        color: "#6aa84f"

        Image {
            id: image
            x: 90
            y: 170
            width: 300
            height: 300
            source: "icon/person-of-a-call-center-in-communication-with-headphones.png"
        }
    }
}
