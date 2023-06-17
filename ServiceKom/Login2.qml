import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.0

import "backend.js" as Backend

Page{
    id :loginAdminPage
    signal kembali()

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
        text: qsTr("LOGIN ADMIN")
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

        Image {
            id: image2
            x: 0
            y: 590
            width: 50
            height: 50
            source: "icon/back.png"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    kembali()
                }
            }
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
            loginAdmin(username.text, password.text)
        }
    }

    function loginAdmin(username,password) {
        var xmlhttp = new XMLHttpRequest();
        var url = "http://localhost/ApkService/loginadmin.php?username="+username+ "&password="+password;
        console.log(url);
        xmlhttp.onreadystatechange=function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                if (xmlhttp.responseText =="sukses") {
                    console.log("Selamat datang admin")
                    swipe.setCurrentIndex(11)

                }
                else if(xmlhttp.responseText=="gagal"){
                    console.log("Gagal")
                }
                else{
                    console.log("terjadi kesalahan internet")
                }
            }
        }
        xmlhttp.open("GET", url, true);
        xmlhttp.send();
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



}
