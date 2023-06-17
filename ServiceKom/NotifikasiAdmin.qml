import QtQuick 2.0
import QtQuick.Controls 2.2


Page {
    signal kembali()

    Rectangle {
        id: ww
        x: 0
        y: 79
        width: 480
        height: 561
        color: "#ffffff"


        ScrollView{
            anchors.fill: parent
            clip: true
            ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
            ScrollBar.vertical.policy: ScrollBar.AlwaysOn
            contentWidth: ww.width
            contentHeight: 10000
            // MODEL VIEW DAN DELEGATE

            ListModel {
                id: modelku
            }

            ListView {
                width: 480
                height: 1000
                id: listku
                model: modelku
                delegate: delBerita
            }

            Component {
                id: delBerita
                Item {
                    width: parent.width
                    height: isitext.height+4
                    Rectangle {
                        color: "#F2FFFF"
                        anchors.centerIn: parent
                        width: parent.width
                        height: isitext.height
                        radius: 10
                        opacity: 0.7
                        Text {
                            id: isitext
                            width: parent.width
                            font.pixelSize: 20
                            anchors.left: parent.left
                            wrapMode: Text.WordWrap
                            color: (isitext.text.substring(0,12)==="... DAFTAR S")?"#FFFFFF":"#000000"
                            text: "Pemesanan tanggal "+tanggal+"-"+bulan+"-"+tahun+
                                  " Pada Jam "+jam+":"+menit+
                                  "<br>Pada alamat "+alamat+" Jenis '"+jenis+"' jumlah "+jumlah+
                                  "<br>dalam jangka waktu "+jangkawaktu+" kerusakan "+kerusakan
                        }
                        //                        MouseArea {
                        //                            anchors.fill: parent
                        //                            onClicked: {
                        //                                if(isitext.text.substring(0,12)==="... DAFTAR S")
                        //                                    openDetail(kategori)
                        //                                else
                        //                                    openPage(kategori, teks)
                        //                            }
                        //                        }
                    }
                }
            }
        }


        Component.onCompleted: {
            readData()
        }
    }

    function openDetail(){

    }

    function openPage(){

    }


    function readData() {
        print('readData() ddf')
        if(!dataBase) { return; }
        dataBase.transaction( function(tx) {
            modelku.clear();        // menghapus seluruh model
            var result = tx.executeSql('select * from Pemesanan');
            for(var i = 0; i < result.rows.length; i++) {
                // memasukkan dalam model
                modelku.append({"tanggal": result.rows.item(i).tanggal, "bulan":result.rows.item(i).bulan, "tahun":result.rows.item(i).tahun,
                                   "jam":result.rows.item(i).jam, "menit":result.rows.item(i).menit, "alamat":result.rows.item(i).alamat,
                               "jenis":result.rows.item(i).jenis, "jumlah":result.rows.item(i).jumlah, "kerusakan":result.rows.item(i).kerusakan, "jangkawaktu":result.rows.item(i).jangkawaktu})
                print(result.rows.item(i).tanggal)
            }
        });
    }


    Image {
        id: image
        x: 5
        y: 14
        width: 50
        height: 50
        z: 2
        source: "icon/back.png"
        MouseArea{
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            z: 1
            anchors.fill: parent
            onClicked: {
                kembali()
            }
        }
    }

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 480
        height: 78
        color: "#6aa84f"
        z: 1

        Text {
            id: text1
            x: 163
            y: 20
            width: 154
            height: 38
            text: qsTr("Notifikasi Admin")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 20
        }
    }


}
//}



