import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.0

Page{
    signal back()
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
            color: "#93c47d"
            radius: 1

            Image {
                id: image
                x: 8
                y: 24
                width: 55
                height: 53
                source: "icon/back.png"
                MouseArea{
                    anchors.fill:  parent
                    onClicked: {
                        back()
                    }
                }
            }
        }


    }

}
