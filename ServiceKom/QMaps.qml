import QtQuick 2.0
import QtQuick.Controls 2.2
 import QtQuick.Window 2.0
 import QtLocation 5.6
 import QtPositioning 5.6

Page {
     PositionSource {
         active: true
         onPositionChanged: {
             console.log(position.coordinate)
         }
     }

     Plugin {
         id: mapPlugin
         name: "osm"
         // specify plugin parameters if necessary
         // PluginParameter {
         //     name:
         //     value:
         // }
     }

     Map {
         anchors.fill: parent
         plugin: mapPlugin
         center: QtPositioning.coordinate(-8.093216, 111.724799)
         zoomLevel: 15
     }
     MapCircle{
         color: "green"
         radius: 1000

     }
 }
