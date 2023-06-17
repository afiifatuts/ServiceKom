import QtQuick 2.0
import QtQuick.Controls 2.2


Page {
    signal backpesan()

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 480
        height: 640
        color: "#ffffff"

        Button {
            id: button
            x: 179
            y: 592
            text: qsTr("Selesai")

        }


        Label {
            id: label1
            x: 35
            y: 125
            width: 118
            height: 18
            text: qsTr("Service Barang")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 10
            renderType: Text.NativeRendering
        }

        Label {
            id: label2
            x: 300
            y: 127
            text: qsTr("Jumlah Barang")
            font.pointSize: 10
            font.family: "Arial"
            renderType: Text.NativeRendering
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }

        Image {
            id: image1
            x: 0
            y: 195
            width: 480
            height: 19
            source: "icon/batas.png"
        }

        Label {
            id: label3
            x: 35
            y: 226
            width: 118
            height: 18
            text: qsTr("Waktu :")
            font.pointSize: 10
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            renderType: Text.NativeRendering
        }

        Rectangle {
            id: rectangle2
            x: 35
            y: 258
            width: 398
            height: 50
            color: "#ffffff"
        }

        Image {
            id: image2
            x: 0
            y: 340
            width: 480
            height: 19
            source: "icon/batas.png"
        }

        Label {
            id: label4
            x: 35
            y: 371
            width: 118
            height: 18
            text: qsTr("Kerusakan Barang :")
            font.pointSize: 10
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            renderType: Text.NativeRendering
        }

        Image {
            id: image3
            x: 0
            y: 453
            width: 480
            height: 19
            source: "icon/batas.png"
        }

        Label {
            id: label5
            x: 35
            y: 485
            width: 118
            height: 18
            text: qsTr("Alamat :")
            font.pointSize: 10
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            renderType: Text.NativeRendering
        }

        Image {
            id: image4
            x: 0
            y: 529
            width: 480
            height: 19
            source: "icon/batas.png"
        }

        Label {
            id: label6
            x: 35
            y: 566
            width: 118
            height: 18
            text: qsTr("Total :")
            font.pointSize: 10
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            renderType: Text.NativeRendering
        }
    }

    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        width: 480
        height: 100
        color: "#6aa84f"
        radius: 2

        Image {
            id: image
            x: 0
            y: 19
            width: 65
            height: 63
            source: "icon/back.png"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    backpesan()
                }
            }
        }

        Label {
            id: label
            x: 159
            y: 40
            width: 180
            height: 22
            text: qsTr("Detail Pemesanan")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
            font.pointSize: 14
            wrapMode: Text.WrapAnywhere
        }
    }




}

