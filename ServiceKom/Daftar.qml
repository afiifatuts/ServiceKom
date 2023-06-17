import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.0
import "backend.js" as Backend

Page {
    id: registerPage
    property string username: ""
    property string password: ""
    signal login()

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 480
        height: 86
        color: "#6aa84f"

        Image {
            id: image
            x: 191
            y: 8
            width: 77
            height: 78
            source: "icon/addUser2.png"
        }

        Rectangle {
            id: rectangle1
            x: 0
            y: 0
            width: 480
            height: 642
            color: "#6aa84f"
            z: -1

            Button {
                id: suksesBtn
                x: 190
                y: 559
                text: qsTr("Daftar")
                onClicked: {
                    registerUser(username.text, password.text,conpassword.text, notlp.text)
                }
            }
        }



        Image {
            id: image1
            x: 8
            y: 18
            width: 50
            height: 50
            source: "icon/back.png"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    login()
                }
            }
        }
    }

    Frame {
        id: frame
        x: 12
        y: 109
        width: 456
        height: 405

        Label {
            id: label1
            x: 56
            y: 40
            text: qsTr("Username")
            Layout.preferredHeight: 27
            Layout.preferredWidth: 83
            font.pointSize: 12
        }

        TextField {
            id: username
            x: 189
            y: 38
            width: 200
            height: 32
            font.pointSize: 12
            Layout.preferredHeight: 32
            Layout.preferredWidth: 83
            placeholderText: "Username"
        }

        Label {
            id: label2
            x: 56
            y: 111
            text: qsTr("Password")
            Layout.preferredHeight: 22
            Layout.preferredWidth: 91
            font.pointSize: 12
        }

        TextField {
            id: password
            x: 189
            y: 109
            width: 200
            height: 25
            font.pointSize: 12
            Layout.preferredHeight: 25
            Layout.preferredWidth: 83
            placeholderText: "Password"
            echoMode: TextField.PasswordEchoOnEdit

        }

        Label {
            id: label3
            x: 56
            y: 189
            text: qsTr("Ulangi Password")
            Layout.preferredHeight: 19
            Layout.preferredWidth: 128
            font.pointSize: 12
        }

        TextField {
            id: conpassword
            x: 189
            y: 179
            text: qsTr("")
            font.pointSize: 12
            placeholderText: "Ulangi Password"
            echoMode: TextField.PasswordEchoOnEdit
        }

        Label {
            id: label4
            x: 56
            y: 283
            text: qsTr("No Tlp")
            Layout.preferredHeight: 20
            Layout.preferredWidth: 128
            font.pointSize: 12
        }

        TextField {
            id: notlp
            x: 189
            y: 273
            font.pointSize: 12
            placeholderText: "Nomor Telepon"
        }

        Rectangle {
            id: rectangle2
            x: -2
            y: -7
            width: 438
            height: 401
            color: "#ffffff"
            z: -1
        }

    }

}
