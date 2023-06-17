import QtQuick 2.0
import QtQuick.Controls 2.2

Page{
    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 480
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
        x: 23
        y: 129
        width: 438
        height: 22
        text: qsTr("Silahkan masuk terlebih dahulu untuk melakukan pemesanan")
        font.pointSize: 12
        fontSizeMode: Text.VerticalFit
        renderType: Text.NativeRendering
    }



}
