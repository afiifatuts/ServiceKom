import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.0

Page{
    signal backberanda()
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
            radius: 1

            Label {
                id: label
                x: 211
                y: 38
                width: 54
                height: 25
                text: qsTr("Help")
                font.pointSize: 16
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
        }

        Image {
            id: image1
            x: 160
            y: 34
            width: 36
            height: 33
            source: "icon/help.png"
        }

        Text {
            id: text1
            x: 13
            y: 130
            width: 454
            height: 36
            text: qsTr("Service Kom adalah aplikasi yang membantu anda untuk menyervice barang-barang
elektronik seperti Komputer, Laptop, Tv, HP.")
            font.pixelSize: 12
        }

        Text {
            id: text2
            x: 0
            y: 165
            width: 402
            height: 140
            text: qsTr("Anda bisa menggunakan aplikasi ini dengan terlebih dahulu
1. Menginstal Aplikasi
2. Login jika sudah memiliki akun, jika belum daftar dulu
3. Melakukan pemesanan dengan memasukkan tanggal, alamat serta ketentuan yang lain
4. Klik pesan, kemudian silahkan tunggu tukang service datang ke alamat Anda")
            font.pixelSize: 12
        }
    }

    Image {
        id: image
        x: 0
        y: 27
        width: 70
        height: 51
        source: "icon/back.png"
        MouseArea{
            anchors.fill: parent
            onClicked: {
                backberanda()
            }
        }
    }

}
