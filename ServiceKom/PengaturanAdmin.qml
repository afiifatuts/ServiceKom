import QtQuick 2.0
import QtQuick.Controls 2.2

Page {
    signal kembali()
    signal keluar()
    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 480
        height: 640
        color: "#6aa84f"

        Rectangle {
            id: rectangle1
            x: 0
            y: 552
            width: 480
            height: 88
            color: "#ffffff"

            Text {
                id: text1
                x: 180
                y: 26
                width: 120
                height: 36
                text: qsTr("KELUAR")
                elide: Text.ElideMiddle
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 21
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    keluar()
                }
            }
        }
    }

    Image {
        id: image
        x: 0
        y: 0
        width: 50
        height: 50
        source: "icon/back.png"
        MouseArea{
            anchors.fill: parent
            onClicked: {
                kembali()
            }
        }
    }

}
