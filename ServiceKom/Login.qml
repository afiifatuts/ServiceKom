import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.0

import "backend.js" as Backend

Page{
    id :loginPage

    signal daftar()
    signal masuk()
    signal adminlogin()
    property color backGroundColor : "#394454"
    property color mainAppColor: "#6fda9c"
    property color mainTextCOlor: "#f0f0f0"
    property color popupBackGroundColor: "#b44"
    property color popupTextCOlor: "#ffffff"
    property var dataBase


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

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 481
        height: 61
        color: "#6aa84f"

        Label {
            id: label
            x: 14
            y: 19
            width: 103
            height: 24
            color: "#ffffff"
            text: qsTr("ServiceKom")
            font.pointSize: 14
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }

    Label {
        id: label1
        x: 28
        y: 118
        width: 429
        height: 22
        text: qsTr("Silahkan masuk terlebih dahulu untuk melakukan pemesanan")
        font.pointSize: 12
        fontSizeMode: Text.VerticalFit
        renderType: Text.NativeRendering
    }

    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        width: 480
        height: 640
        color: "#6aa84f"
        z: -1

        Rectangle {
            id: rectangle2
            x: 22
            y: 108
            width: 439
            height: 359
            color: "#ffffff"
            radius: 3
        }
    }

    GridLayout {
        x: 148
        y: 204
        rows: 4
        columns: 1
    }


    TextField {
        id: username
        x: 135
        y: 210
        width: 215
        height: 46
        Layout.preferredHeight: 46
        Layout.preferredWidth: 175
        font.pointSize: 12
        placeholderText: "Username"

    }

    TextField {
        id: password
        x: 135
        y: 268
        width: 215
        height: 46
        Layout.preferredHeight: 46
        Layout.preferredWidth: 175
        font.pointSize: 12
        placeholderText: "Password"
        echoMode: TextField.PasswordEchoOnEdit

    }

    Button {
        id: masukBtn
        x: 192
        y: 325
        text: qsTr("Masuk")
        onClicked: {
            loginUser(username.text, password.text)
        }
    }

    Button {
        id: daftarBtn
        x: 190
        y: 379
        text: qsTr("Daftar")
        onClicked: {
            daftar()
        }
    }

    Image {
        id: image
        x: 99
        y: 276
        width: 30
        height: 30
        source: "icon/padlock1.png"
    }

    Image {
        id: image1
        x: 99
        y: 218
        width: 30
        height: 30
        source: "icon/user-33.png"
    }

    Rectangle {
        id: rectangle3
        x: 0
        y: 599
        width: 215
        height: 41
        color: "#ffffff"

        Label {
            id: label2
            x: 31
            y: 14
            text: qsTr("Admin?")
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                adminlogin()
            }
        }
    }

    function loginUser(username, password) {
        var xmlhttp = new XMLHttpRequest();
        var url = "http://localhost/ApkService/proseslogin.php?username="+username+"&password="+password;
        console.log(url);
        xmlhttp.onreadystatechange=function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                var cek = xmlhttp.responseText.toString()
                var message=""
                console.log(cek)
                if (xmlhttp.responseText ==" gagal1") {
                    console.log("User tidak ada")
                    message = "Username belum terdaftar!"
                    popup.popMessage = message
                    popup.open()
                }
                else if(xmlhttp.responseText==" gagal2"){
                    console.log("Password salah")
                    message = "Password salah!"
                    popup.popMessage = message
                    popup.open()
                }
                else if(cek==" berhasil"){
                    console.log("Sukses")
                    swipe.setCurrentIndex(4)
                    message = "Login sukses!"
                    popup.popMessage = message
                    popup.open()
                }
                else{
                    console.log("terjadi kesalahan internet")
                }
            }
        }
        xmlhttp.open("GET", url, true);
        xmlhttp.send();
    }


}
