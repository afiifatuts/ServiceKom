import QtQuick 2.0
import QtQuick.Controls 2.2

Page {
    signal home()
    signal notifikasi()
    signal pengaturan()
    signal logout()

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 480
        height: 640
        color: "#6aa84f"

        Label {
            id: label
            x: 30
            y: 242
            text: qsTr("Selamat Datang Admin!!")
            font.pointSize: 29
        }

        Rectangle {
            id: rectangle1
            x: 0
            y: 570
            width: 480
            height: 70
            color: "#ffffff"
        }

        Image {
            id: image
            x: 66
            y: 580
            width: 50
            height: 50
            source: "icon/alamat.png"
        }

//        Image {
//            id: image1
//            x: 357
//            y: 580
//            width: 50
//            height: 50
//            source: "icon/setting.png"
//        }

        Image {
            id: image2
            x: 231
            y: 580
            width: 50
            height: 50
            source: "icon/bell.png"
        }

        MouseArea {
            id: mouseAreaHome
            x: 41
            y: 570
            width: 100
            height: 70
            onClicked: {
                home()
            }
        }

        MouseArea {
            id: mouseAreaNotifikasi
            x: 206
            y: 570
            width: 100
            height: 70
            onClicked: {
                notifikasi()
            }
        }

        Image {
            id: image1
            x: 373
            y: 580
            width: 50
            height: 50
            source: "icon/logout.png"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    logout()
                }
            }
        }

//        MouseArea {
//            id: mouseAreaPengaturan
//            x: 332
//            y: 570
//            width: 100
//            height: 70
//            onClicked: {
//                pengaturan()
//            }
//        }
    }

}
