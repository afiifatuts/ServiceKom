import QtQuick 2.0
import QtQuick.Controls 2.2
import "backend.js" as Backend

Page {
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
            height: 70
            color: "#6aa84f"
        }

        Text {
            id: text1
            x: 27
            y: 106
            font.pixelSize: 12
        }


    }
}

