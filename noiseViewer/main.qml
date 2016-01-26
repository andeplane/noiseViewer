import QtQuick 2.5
import QtQuick.Window 2.2
import SimVis 1.0
import MySimulator 1.0

Window {
    visible: true
    width: 1024
    height: 768
    MySimulator {
        id: simulator

    }

    Visualizer {
        anchors.fill: parent
        simulator: simulator
        camera: camera
        backgroundColor: "black"

        TrackballNavigator {
            id: navigator
            anchors.fill: parent
            camera: camera
        }

        NoiseViewer {
            Light {
                id: light
                ambientColor: "white"
                specularColor: "white"
                diffuseColor: "white"
                ambientIntensity: 1.0
                diffuseIntensity: 1.0
                specularIntensity: 1.0
                shininess: 10.0
                attenuation: 0.0
                position: camera.position
            }
        }
    }

    Camera {
        id: camera

    }


}

