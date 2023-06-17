import QtQuick 2.0
import QtQuick.Controls 2.2
import "backend.js" as Backend

Page {
    id: userInfoPage

    property string username: ""
    property string password: ""

    signal back()
    signal keluar()
    font.pointSize: 20

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 480
        height: 640
        color: "#ffffff"

        Rectangle {
            id: rectangle1
            x: 0
            y: 0
            width: 480
            height: 150
            color: "#6aa84f"

            Image {
                id: image
                x: 8
                y: 20
                width: 60
                height: 60
                source: "icon/back.png"
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        back()
                    }

                    Image {
                        id: image1
                        x: 184
                        y: -20
                        width: 100
                        height: 100
                        source: "icon/user-33.png"
                    }
                }
            }

            Text {
                id: text1
                x: 192
                y: 116
                width: 97
                height: 26
                text: "Akun Saya" +username
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 20
            }
        }

        Rectangle {
            id: rectangle2
            x: 0
            y: 584
            width: 480
            height: 56
            color: "#6aa84f"

            Label {
                id: label
                x: 177
                y: 19
                width: 126
                height: 18
                text: qsTr("KELUAR")
                font.pointSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            MouseArea{
                anchors.fill: parent
                onClicked:{
                    keluar()
                }
            }
        }


    }

    Rectangle {
        id: rectangle3
        x: 0
        y: 150
        width: 480
        height: 47
        color: "#ffffff"
        border.color: "#110505"

        Text {
            id: text2
            x: 17
            y: 17
            text: qsTr("Pesanan Saya")
            font.pixelSize: 15
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {

            }

        }
    }
}

