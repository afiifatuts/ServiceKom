import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.LocalStorage 2.0
import "backend.js" as Backend

Window {
    id: rootWindow
    visible: true
    width: 480
    height: 640
    title: qsTr("ServiceKom")

    property color backGroundColor : "#394454"
    property color mainAppColor: "#6fda9c"
    property color mainTextCOlor: "#f0f0f0"
    property color popupBackGroundColor: "#b44"
    property color popupTextCOlor: "#ffffff"
    property var dataBase

    Component.onCompleted: {
        dataBase = userDataBase()
        console.log(dataBase.version)
    }


    // Create and initialize the database
    function userDataBase()
    {
        var db = LocalStorage.openDatabaseSync("servicekom", "1.1", "Database Service", 1000000);
        db.transaction(function(tx) {
            tx.executeSql('CREATE TABLE IF NOT EXISTS Pemesanan(tanggal VALUE , bulan VALUE , tahun VALUE , jam TEXT, menit TEXT, alamat TEXT,jenis VALUE, jumlah TEXT,kerusakan VALUE,detail TEXT, jangkawaktu VALUE)');
        });


        return db;
    }


    Popup {
        id: popup
        property alias popMessage: message.text

        background: Rectangle {
            implicitWidth: rootWindow.width
            implicitHeight: 60
            color: popupBackGroundColor
        }
        y: (rootWindow.height - 60)
        modal: true
        focus: true
        closePolicy: Popup.CloseOnPressOutside
        Text {
            id: message
            anchors.centerIn: parent
            font.pointSize: 12
            color: popupTextCOlor
        }
        onOpened: popupClose.start()
    }


    Timer {
        id: popupClose
        interval: 2000
        onTriggered: popup.close()
    }



    function registerUser(username, password,conpassword, notlp) {
        var xmlhttp = new XMLHttpRequest();
        var url = "http://localhost/ApkService/prosesdaftar.php?username="+username+"&password="+password+"&conpassword="+conpassword+"&notlp="+notlp;
        console.log(url);
        xmlhttp.onreadystatechange=function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                var cek = xmlhttp.responseText.toString()
                var message=""
                console.log(cek)
                if (cek ==" gagal1") {
                    console.log("passwordtidaksama")
                    message = "Password tidak sama!"
                    popup.popMessage = message
                    popup.open()
                    return
                }
                else if(cek == " gagal2") {
                    console.log("usernamesudahada")
                    message = "Username sudah ada!"
                    popup.popMessage = message
                    popup.open()
                    return
                }
                else if(cek == " gagal3") {
                    console.log("dataharuslengkap")
                    message = "Data harus lengkap!"
                    popup.popMessage = message
                    popup.open()
                    return
                }
                else if(cek == " sukses") {
                    console.log("sukses")
                    message = "Daftar Sukses! Silahkan Login"
                    popup.popMessage = message
                    popup.open()
                    swipe.setCurrentIndex(1)
                }
                else if(cek==" gagal"){
                    console.log("gagal")
                    message = "Gagal!"
                    popup.popMessage = message
                    popup.open()

                }
                else {
                    console.log("Terjadi kesalahan pada koneksi internet")
                    message = "Terjadi kesalahan pada koneksi internet!"
                    popup.popMessage = message
                    popup.open()
                }
            }
        }
        xmlhttp.open("GET", url, true);
        xmlhttp.send();
    }







    // Show UserInfo page
    function showUserInfo(uname)
    {
        swipe.setCurrentIndex(5)
        halAkun.helloTxt.text="Hello " + uname +"<br>Nomor Telepon : " + notlp
    }


    SwipeView{
        id: swipe
        anchors.fill: parent
        interactive: false
        HalUtama{
            id :awal
            onMulai:{
                swipe.setCurrentIndex(1)
            }
        }
        Login{ //1
            onDaftar: {
                swipe.setCurrentIndex(2)
            }
            onAdminlogin: {
                swipe.setCurrentIndex(3)
            }
        }
        Daftar{ //2
            id:halDaftar
            onLogin: {
                swipe.setCurrentIndex(1)
            }
        }
        Login2{ //3
            id: loginAdmin
            onKembali: {
                swipe.setCurrentIndex(1)
            }
        }

        Beranda{ //4
            id:halBeranda
            onHome: {
                swipe.setCurrentIndex(4)
            }
            onPemesanan:  {
                swipe.setCurrentIndex(6)
            }
            onNotifikasi: {
                swipe.setCurrentIndex(10)
            }
            onAkun: {
                swipe.setCurrentIndex(5)

            }
            onLogout: {
                swipe.setCurrentIndex(0)
            }

        }
        La{ //5
            id: halAkun
            onBack: {
                swipe.setCurrentIndex(4)
            }
            onKeluar: {
                swipe.setCurrentIndex(0)
            }


        }
        Pemesanan{ //6
            onPesan: {
                swipe.setCurrentIndex(7)

            }
            onBackberanda: {
                swipe.setCurrentIndex(4)
            }

        }
        Pesan{ //7
            onDetail: {
                swipe.setCurrentIndex(8)
            }

            onBackpemesanan: {
                swipe.setCurrentIndex(6)
            }

        }
        Detail{ //8
            onBackpesan: {
                swipe.setCurrentIndex(7)
            }

        }
        Help{ //9
            onBackberanda: {
                swipe.setCurrentIndex(4)
            }

        }
        Notifikasi{ //10
            onBack: {
                swipe.setCurrentIndex(4)
            }

        }

        HalAdmin{ //11
            onHome: {
                swipe.setCurrentIndex(11)
            }

            onNotifikasi: {
                swipe.setCurrentIndex(12)
            }
            onPengaturan: {
                swipe.setCurrentIndex(13)
            }
            onLogout: {
                swipe.setCurrentIndex(0)
            }
        }
        NotifikasiAdmin{ //12
            onKembali: {
                swipe.setCurrentIndex(11)
            }
        }

        PengaturanAdmin{//13
            onKembali: {
                swipe.setCurrentIndex(11)
            }
            onKeluar: {
                swipe.setCurrentIndex(3)
            }
        }

    }
}
