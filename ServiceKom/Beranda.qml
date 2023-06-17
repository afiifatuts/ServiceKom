import QtQuick 2.0
import QtQuick.Controls 2.2
import "backend.js" as Backend

Page {
    signal akun()
    signal beranda()
    signal pemesanan()
    signal notifikasi()
    signal home()
    signal logout()
    bottomPadding: -1

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
            height: 100
            color: "#6aa84f"

            Image {
                id: image
                x: 8
                y: 22
                width: 68
                height: 57
                source: "icon/alignjustify.png"
                MouseArea{
                    anchors.fill: parent
                    //onClicked: {
                    //    menu()
                    // }

                    Image {
                        id: image6
                        x: -10
                        y: -20
                        width: 481
                        height: 149
                        source: "icon/tecnologias.png"

                        TextEdit {
                            id: textEdit
                            x: 141
                            y: 60
                            color: "#6aa84f"
                            text: qsTr("ServiceKom")
                            font.bold: true
                            font.pixelSize: 30
                        }
                    }
                }
            }
        }

        Rectangle {
            id: rectangle2
            x: 0
            y: 556
            width: 480
            height: 84
            color: "#6aa84f"

            Label {
                id: label
                x: 31
                y: 0
                width: 91
                height: 84
                text: qsTr("Home")
                verticalAlignment: Text.AlignBottom
                horizontalAlignment: Text.AlignHCenter
                MouseArea{
                    anchors.leftMargin: -10
                    anchors.topMargin: 0
                    anchors.rightMargin: -10
                    anchors.bottomMargin: 0
                    anchors.fill: parent
                    onClicked: {
                        home()
                    }
                }
            }

            Label {
                id: label1
                x: 171
                y: 0
                width: 99
                height: 84
                text: qsTr("Pemesanan")
                verticalAlignment: Text.AlignBottom
                horizontalAlignment: Text.AlignHCenter
                MouseArea{
                    anchors.rightMargin: -2
                    anchors.leftMargin: 2
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    anchors.fill: parent
                    onClicked: {
                        pemesanan()
                    }
                }
            }

            //            Label {
            //                id: label2
            //                x: 250
            //                y: 0
            //                width: 102
            //                height: 84
            //                text: qsTr("Notifikasi")
            //                verticalAlignment: Text.AlignBottom
            //                horizontalAlignment: Text.AlignHCenter
            //                MouseArea{
            //                    anchors.rightMargin: 0
            //                    anchors.leftMargin: 0
            //                    anchors.topMargin: 0
            //                    anchors.bottomMargin: 0
            //                    anchors.fill: parent
            //                    onClicked: {
            //                        notifikasi()
            //                    }
            //                }
            //            }

            Label {
                id: label3
                x: 329
                y: 0
                width: 102
                height: 84
                text: qsTr("Logout")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignBottom
                MouseArea{
                    anchors.rightMargin: 0
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    anchors.fill: parent
                    onClicked: {
                        logout()
                    }
                }
            }
        }

//                Image {
//                    id: image10
//                    x: 273
//                    y: 573
//                    width: 50
//                    height: 50
//                    source: "icon/bell.png"
//                }

        Image {
            id: image8
            x: 191
            y: 565
            width: 60
            height: 60
            source: "icon/emaillll.png"
        }

        Image {
            id: image2
            x: 41
            y: 565
            width: 60
            height: 60
            source: "icon/alamat.png"
        }

        Image {
            id: image3
            x: 349
            y: 568
            width: 60
            height: 60
            source: "icon/logout.png"
        }

        Label {
            id: label4
            x: 101
            y: 266
            text: qsTr("Selamat Datang Di ServiceKom")
            font.pointSize: 15
        }

        Label {
            id: label5
            x: 41
            y: 296
            text: qsTr("Kami Melayani Service Komputer dan Laptop")
            font.pointSize: 15
        }
    }


}
