import QtQuick 2.0
import QtQuick.Controls 2.2
import "backend.js" as Backend

Page {
    signal pesan()
    signal backberanda()
    property int jumlahHarga: 0

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

    ScrollView{
        anchors.fill: parent
        clip: true
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
        ScrollBar.vertical.policy: ScrollBar.AlwaysOn
        contentWidth: rectangle.width
        contentHeight: rectangle.height

        Rectangle {
            id: rectangle
            x: 0
            y: 0
            width: 480
            height: 990
            color: "#ffffff"
            z: -1


            Rectangle {
                id: rectangle1
                x: 0
                y: 0
                width: 480
                height: 100
                color: "#93c47d"
                radius: 1

                Image {
                    id: image
                    x: 8
                    y: 23
                    width: 63
                    height: 54
                    source: "icon/back.png"
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            backberanda()
                        }
                    }
                }

                Label {
                    id: label
                    x: 178
                    y: 26
                    width: 125
                    height: 48
                    text: qsTr("Pemesanan")
                    font.bold: true
                    font.pointSize: 16
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
            }

            Label {
                id: label1
                x: 8
                y: 115
                text: qsTr("Tentukan waktu")
                font.pointSize: 10
            }

            Image {
                id: image3
                x: 0
                y: 246
                width: 480
                height: 10
                source: "icon/batas.png"

                Image {
                    id: image1
                    x: 317
                    y: -53
                    width: 50
                    height: 50
                    source: "icon/warna/jam.png"
                }
            }

            Label {
                id: label2
                x: 20
                y: 274
                width: 114
                height: 20
                text: qsTr("Masukkan Alamat")
                font.pointSize: 10
            }

            TextField {
                id: alamat
                x: 84
                y: 314
                width: 313
                height: 93
                font.pointSize: 10
                placeholderText: "Alamat"
                wrapMode: Text.NoWrap



                Image {
                    id: image4
                    x: -45
                    y: 34
                    width: 33
                    height: 25
                    source: "icon/alamat.png"
                }


                ComboBox {
                    id: tanggal
                    x: 37
                    y: -206
                    width: 63
                    height: 40
                    editable: true
                    model: ListModel {
                        id: tgl
                        ListElement { text: "1" }
                        ListElement { text: "2" }
                        ListElement { text: "3" }
                        ListElement { text: "4" }
                        ListElement { text: "5" }
                        ListElement { text: "6" }
                        ListElement { text: "7" }
                        ListElement { text: "8" }
                        ListElement { text: "9" }
                        ListElement { text: "10" }
                        ListElement { text: "11" }
                        ListElement { text: "12" }
                        ListElement { text: "13" }
                        ListElement { text: "14" }
                        ListElement { text: "15" }
                        ListElement { text: "16" }
                        ListElement { text: "17" }
                        ListElement { text: "18" }
                        ListElement { text: "19" }
                        ListElement { text: "20" }
                        ListElement { text: "21" }
                        ListElement { text: "22" }
                        ListElement { text: "23" }
                        ListElement { text: "24" }
                        ListElement { text: "25" }
                        ListElement { text: "26" }
                        ListElement { text: "27" }
                        ListElement { text: "28" }
                        ListElement { text: "29" }
                        ListElement { text: "30" }
                        ListElement { text: "31" }

                    }
                    onAccepted: {
                        if (find(editText) === -1)
                            model.append({text: editText})
                    }
                }


                ComboBox {
                    id: bulan
                    x: 106
                    y: -206
                    width: 107
                    height: 40
                    editable: true
                    model: ListModel {
                        id: bln
                        ListElement { text: "1" }
                        ListElement { text: "2" }
                        ListElement { text: "3" }
                        ListElement { text: "4" }
                        ListElement { text: "5" }
                        ListElement { text: "6" }
                        ListElement { text: "7" }
                        ListElement { text: "8" }
                        ListElement { text: "9" }
                        ListElement { text: "10" }
                        ListElement { text: "11" }
                        ListElement { text: "12" }
                    }
                    onAccepted: {
                        if (find(editText) === -1)
                            model.append({text: editText})
                    }

                    Image {
                        id: image5
                        x: 222
                        y: 0
                        width: 50
                        height: 50
                        source: "icon/warna/kalender.png"
                    }
                }

                ComboBox {
                    id: tahun
                    x: 219
                    y: -206
                    width: 94
                    height: 40
                    editable: true
                    model: ListModel {
                        id: thn
                        ListElement { text: "2018" }
                        ListElement { text: "2019" }
                        ListElement { text: "2020" }
                        ListElement { text: "2021" }
                        ListElement { text: "2022" }
                        ListElement { text: "2023" }
                        ListElement { text: "2024" }
                        ListElement { text: "2025" }
                        ListElement { text: "2026" }

                    }
                    onAccepted: {
                        if (find(editText) === -1)
                            model.append({text: editText})
                    }
                }

                TextField {
                    id: jam
                    x: 37
                    y: -119
                    width: 117
                    height: 40
                    text: qsTr("")
                    placeholderText: "Jam"
                }

                TextField {
                    id: menit
                    x: 93
                    y: -119
                    width: 68
                    height: 40
                    text: qsTr("")
                    placeholderText: "Menit"
                }

                Label {
                    id: label3
                    x: -66
                    y: 142
                    width: 114
                    height: 20
                    text: qsTr("Jenis Barang")
                    font.pointSize: 10
                    ComboBox {
                        id: jenis
                        x: 290
                        y: -10
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
                }

                Label {
                    id: label4
                    x: -66
                    y: 210
                    width: 114
                    height: 20
                    text: qsTr("Jumlah Barang")
                    font.pointSize: 10
                    TextField {
                        id: jumlah
                        x: 290
                        y: -10
                        width: 126
                        height: 40
                        placeholderText: "Jumlah Barang"
                        onTextChanged: {
                            totalHarga()
                        }
                    }
                }

                Label {
                    id: label5
                    x: -66
                    y: 285
                    width: 114
                    height: 20
                    text: qsTr("Kerusakan Barang")
                    font.pointSize: 10
                    ComboBox {
                        id: kerusakan
                        x: 291
                        y: -8
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
                }

                Label {
                    id: label6
                    x: -66
                    y: 348
                    width: 114
                    height: 20
                    text: qsTr("Detail Kerusakan")
                    font.pointSize: 10
                    TextField {
                        id: detail
                        x: 183
                        y: -5
                        width: 271
                        height: 86
                        font.pointSize: 12
                        placeholderText: "Detail Kerusakan"
                        font.family: "Times New Roman"
                    }
                }

                Label {
                    id: label7
                    x: -66
                    y: 468
                    width: 114
                    height: 20
                    text: qsTr("Jangka Waktu")
                    font.pointSize: 10

                    ComboBox {
                        id: jangkawaktu
                        x: 289
                        y: -10
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
                }

                Label {
                    id: label8
                    x: -66
                    y: 536
                    width: 114
                    height: 20
                    text: qsTr("Total ")
                    font.pointSize: 10

                }
                Text {
                    id: text2
                    x: 246
                    y: 536
                    width: 98
                    height: 23
                    text: "Rp." + jumlahHarga
                }

                Button {
                    id: button
                    x: 107
                    y: 623
                    text: qsTr("Pesan !")
                    onClicked: {
                        pesanDetails(tanggal.currentText , bulan.currentText, tahun.currentText, menit.text, jam.text, alamat.text,jenis.currentText, jumlah.text, kerusakan.currentText, detail.text, jangkawaktu.currentText)
                        pesanDetailsDb(tanggal.currentText , bulan.currentText, tahun.currentText, menit.text, jam.text, alamat.text,jenis.currentText, jumlah.text, kerusakan.currentText, detail.text, jangkawaktu.currentText)
                    }

                }

            }

        }
        Component.onCompleted: {
            totalHarga()
        }


    }

    function totalHarga(){
        if (jenis.currentText==="Laptop"&&kerusakan.currentText==="Hardware"){
            jumlahHarga= 5000000*jumlah.text
        }
        else if(jenis.currentText==="Laptop"&&kerusakan.currentText==="Software"){
            jumlahHarga= 150000*jumlah.text
        }
        else if (jenis.currentText==="Komputer"&&kerusakan.currentText==="Hardware"){
            jumlahHarga= 300000*jumlah.text
        }
        else if(jenis.currentText==="Komputer"&& kerusakan.currentText==="Software"){
            jumlahHarga=100000*jumlah.text
        }
    }

    function pesanDetails(tanggal, bulan, tahun, menit, jam, alamat, jenis, jumlah, kerusakan, detail, jangkawaktu) {
        var xmlhttp = new XMLHttpRequest();
        var url = "http://localhost/ApkService/prosespesan2.php?tanggal="+tanggal+"&bulan="+bulan+"&tahun="+tahun+"&jam="+jam+"&menit="+menit+"&alamat="+alamat+"&jenis="+jenis+"&jumlah="+jumlah+"&kerusakan="+kerusakan+"&detail="+detail+"&jangkawaktu="+jangkawaktu;
        console.log(url);
        xmlhttp.onreadystatechange=function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                var cek = xmlhttp.responseText
                var message=""
                console.log(cek.length)
                if (cek ==" gagal1") {
                    console.log("Data tidak boleh kosong")
                }
                else if(cek == "   gagal2") {
                    console.log("gagal")
                }
                else if(cek=="  sukses"){
                    console.log("pesan sukses")
                    message = "Anda Berhasil memesan service "+jenis+" <br>dengan jumlah "+jumlah+"<br>dengan kerusakan "+kerusakan+"<br>dalam jangka waktu "+jangkawaktu+"<br><br>Total Harga : Rp."+jumlahHarga
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


    // Waktu & Tempat
    function pesanDetailsDb(tanggal, bulan, tahun, menit, jam, alamat, jenis, jumlah, kerusakan, detail, jangkawaktu){
        var ret = Backend.validatePesanCredentials(tanggal, bulan, tahun, menit, jam, alamat, jenis, jumlah, kerusakan, detail, jangkawaktu)
        var message = ""
        switch(ret){
        case 0: message ="Pemesanan Berhasil!"
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
            tx.executeSql('INSERT INTO Pemesanan VALUES(?,?,?,?,?,?,?,?,?,?,?)',[tanggal, bulan, tahun, menit, jam, alamat, jenis, jumlah, kerusakan, detail, jangkawaktu]);
            console.log("pesansukses")
        })
    }

}
