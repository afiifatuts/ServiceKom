import QtQuick 2.0
import QtQuick.Controls 2.2
import "backend.js" as Backend

Page {
    signal backpemesanan()
    signal detail()
    property int jumlahHarga: 0

    ScrollView{
        anchors.fill: parent
        clip: true
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
        ScrollBar.vertical.policy: ScrollBar.AlwaysOn
        contentWidth: rectangle2.width
        contentHeight: rectangle2.height

        Rectangle {
            id: rectangle2
            width: 480
            height: 600
            color: "#ffffff"


            Popup {
                id: popup
                property alias popMessage: message.text

                background: Rectangle {
                    implicitWidth: 480
                    implicitHeight: 640
                    color: "#b44"
                }
                modal: true
                focus: true
                closePolicy: Popup.CloseOnPressOutside
                Text {
                    id: message
                    anchors.centerIn: parent
                    font.pointSize: 15
                    color: "#ffffff"
                }
                onOpened: popupClose.start()
            }


            Timer {
                id: popupClose
                interval: 5000
                onTriggered: popup.close()
            }

            Rectangle {
                id: rectangle
                x: 0
                y: 0
                width: 480
                height: 76
                color: "#93c47d"
                radius: 1

                Image {
                    id: image
                    x: 8
                    y: 15
                    width: 53
                    height: 47
                    source: "icon/back.png"
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            backpemesanan()
                        }
                    }
                }

                Label {
                    id: label
                    x: 173
                    y: 23
                    width: 134
                    height: 31
                    text: qsTr("Pemesanan")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    font.pointSize: 17
                }
            }

            Image {
                id: image1
                x: 0
                y: 82
                width: 480
                height: 11
                source: "icon/batas.png"
            }


            Label {
                id: label4
                x: 20
                y: 263
                width: 216
                height: 21
                text: qsTr("Detail kerusakan")
                font.pointSize: 10
                renderType: Text.NativeRendering
                fontSizeMode: Text.HorizontalFit
            }

            TextField {
                id: detail
                x: 201
                y: 242
                width: 271
                height: 86
                font.pointSize: 12
                placeholderText: "Detail Kerusakan"
                font.family: "Times New Roman"
            }


            Label {
                id: label5
                x: 20
                y: 352
                width: 216
                height: 21
                text: qsTr("Jangka waktu service")
                font.pointSize: 10
                renderType: Text.NativeRendering
                fontSizeMode: Text.HorizontalFit
            }



            Button {
                id: button1
                x: 187
                y: 477
                text: qsTr("Lanjutkan Pesanan")
                onClicked: {
                    pemesananDetails(jenis.currentText, jumlah.text, kerusakan.currentText, detail.text, jangkawaktu.currentText)
                    pemesananDetailsDb(jenis.currentText, jumlah.text, kerusakan.currentText, detail.text, jangkawaktu.currentText)
                }
            }





            ComboBox {
                id: jangkawaktu
                x: 319
                y: 343
                editable: true
                model: ListModel {
                    id: waktu
                    ListElement { text: "1 Hari" }
                    ListElement { text: "2 Hari" }
                    ListElement { text: "3 Hari" }
                    ListElement { text: "> 3 hari" }

                }
                onAccepted: {
                    if (find(editText) === -1)
                        model.append({text: editText})
                }
            }


            Label {
                id: label2
                x: 20
                y: 108
                width: 98
                height: 21
                text: qsTr("Jenis Barang :")
                fontSizeMode: Text.HorizontalFit
                renderType: Text.NativeRendering
                font.pointSize: 10
            }

            ComboBox {
                id: jenis
                x: 290
                y: 99
                editable: true
                model: ListModel {
                    id: jns
                    ListElement { text: "Laptop" }
                    ListElement { text: "Komputer" }
                }
                onAccepted: {
                    if (find(editText) === -1)
                        model.append({text: editText})
                }
                onCurrentIndexChanged: {
                    totalHarga()
                }
            }

            Label {
                id: label6
                x: 20
                y: 205
                width: 170
                height: 21
                text: qsTr("Kerusakan Barang :")
                fontSizeMode: Text.HorizontalFit
                renderType: Text.NativeRendering
                font.pointSize: 10
            }

            ComboBox {
                id: kerusakan
                x: 290
                y: 196
                editable: true
                model: ListModel {
                    id: rsk
                    ListElement { text: "Hardware" }
                    ListElement { text: "Software" }
                }
                onAccepted: {
                    if (find(editText) === -1)
                        model.append({text: editText})
                }
                onCurrentIndexChanged: {
                    totalHarga()
                }
            }

            Label {
                id: label7
                x: 20
                y: 159
                width: 170
                height: 21
                text: qsTr("Jumlah Barang :")
                fontSizeMode: Text.HorizontalFit
                renderType: Text.NativeRendering
                font.pointSize: 10
            }

            TextField {
                id: jumlah
                x: 272
                y: 150
                placeholderText: "Jumlah Barang"
                onTextChanged: {
                    totalHarga()
                }
            }

            Text {
                id: text1
                x: 20
                y: 413
                width: 98
                height: 23
                text: qsTr("Total Harga")
                font.pixelSize: 12
            }

            Text {
                id: text2
                x: 237
                y: 405
                width: 98
                height: 23
                text: "Rp." + jumlahHarga
            }

        }
        Component.onCompleted: {
            totalHarga()
        }

    }

    function pemesananDetails(jenis, jumlah, kerusakan, detail, jangkawaktu) {
        var xmlhttp = new XMLHttpRequest();
        var url = "http://localhost/ApkService/prosespemesanan.php?jenis="+jenis+"&jumlah="+jumlah+"&kerusakan="+kerusakan+"&detail="+detail+"&jangkawaktu="+jangkawaktu;
        console.log(url);
        xmlhttp.onreadystatechange=function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                var cek = xmlhttp.responseText
                var message=""
                console.log(cek)
                if (cek =="    gagal1") {
                    console.log("Data tidak boleh kosong")
                }
                else if(cek == "   gagal2") {
                    console.log("gagal")
                }
                else if(cek=="   sukses"){
                    console.log("pesan sukses")
                    message = "Anda Berhasil memesan "+jenis+"<br>dengan jumlah "+jumlah+"<br>dengan kerusakan "+kerusakan+"<br>dalam jangka waktu "+jangkawaktu
                    popup.popMessage = message
                    popup.open()
                }

                else {
                    console.log("Terjadi kesalahan pada koneksi internet")
                    message = "Gagal Memesan"
                    popup.popMessage = message
                    popup.open()
                }
            }
        }
        xmlhttp.open("GET", url, true);
        xmlhttp.send();
    }


    // pemesanan
    function pemesananDetailsDb( jenis, jumlah, kerusakan, detail, jangkawaktu){
        var ret = Backend.validatePemesananCredentials(jenis, jumlah, kerusakan, detail, jangkawaktu)
        var message = ""
        switch(ret){
        case 0: message ="Pesan!"
            break;
        case 1 : message ="Data Kurang!"
            break;
        }
        if(0 !==ret){
            popup.popMessage=message
            popup.open()
            return
        }
        dataBase.transaction(function(tx){
            tx.executeSql('INSERT INTO Pemesanan VALUES(?,?,?,?,?)',[ jenis, jumlah, kerusakan, detail, jangkawaktu]);
            console.log("pesansukses")
            swipe.setCurrentIndex(7)
        })
    }


    function totalHarga(){
        if (jenis=="laptop"&&kerusakan=="hardware"){
            jumlahHarga= 500000*jumlah.text
        }
        else if(jenis=="laptop"&&kerusakan=="software"){
            jumlahHarga= 150000*jumlah.text
        }
        else if (jenis=="komputer"&&kerusakan=="software"){
            jumlahHarga= 300000*jumlah.text
        }
        else if(jenis=="komputer"&& kerusakan=="hardware"){
            jumlahHarga=100000*jumlah.text
        }
    }
}


