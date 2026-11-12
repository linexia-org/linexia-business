/* === Linexia Business — Calamares installation slideshow ===
 * Images are resolved relative to this branding directory
 * (/etc/calamares/branding/linexia), so no absolute paths here.
 */
import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    function nextSlide() { presentation.goToNextSlide(); }

    Timer {
        id: advanceTimer
        interval: 7000
        running: true
        repeat: true
        onTriggered: nextSlide()
    }

    // dark background so letterboxing blends with the slide artwork
    Rectangle {
        anchors.fill: parent
        color: "#0B0B10"
        z: -1
    }

    Slide {
        Image {
            source: "1-reproductive-system.png"
            // Slide only gives 90%x70% of the area; use the whole slideshow box
            x: -parent.x
            y: -parent.y
            width: parent.masterWidth
            height: parent.masterHeight
            fillMode: Image.PreserveAspectFit
            smooth: true
        }
    }

    Slide {
        Image {
            source: "2-start-reproduction.png"
            // Slide only gives 90%x70% of the area; use the whole slideshow box
            x: -parent.x
            y: -parent.y
            width: parent.masterWidth
            height: parent.masterHeight
            fillMode: Image.PreserveAspectFit
            smooth: true
        }
    }

    Slide {
        Image {
            source: "3-its-your-system.png"
            // Slide only gives 90%x70% of the area; use the whole slideshow box
            x: -parent.x
            y: -parent.y
            width: parent.masterWidth
            height: parent.masterHeight
            fillMode: Image.PreserveAspectFit
            smooth: true
        }
    }

    Slide {
        Image {
            source: "4-eggs-presentation.png"
            // Slide only gives 90%x70% of the area; use the whole slideshow box
            x: -parent.x
            y: -parent.y
            width: parent.masterWidth
            height: parent.masterHeight
            fillMode: Image.PreserveAspectFit
            smooth: true
        }
    }

    Slide {
        Image {
            source: "5-wait-hatching.png"
            // Slide only gives 90%x70% of the area; use the whole slideshow box
            x: -parent.x
            y: -parent.y
            width: parent.masterWidth
            height: parent.masterHeight
            fillMode: Image.PreserveAspectFit
            smooth: true
        }
    }

    Slide {
        Image {
            source: "6-follow-penguins.png"
            // Slide only gives 90%x70% of the area; use the whole slideshow box
            x: -parent.x
            y: -parent.y
            width: parent.masterWidth
            height: parent.masterHeight
            fillMode: Image.PreserveAspectFit
            smooth: true
        }
    }

    Slide {
        Image {
            source: "7-created-by.png"
            // Slide only gives 90%x70% of the area; use the whole slideshow box
            x: -parent.x
            y: -parent.y
            width: parent.masterWidth
            height: parent.masterHeight
            fillMode: Image.PreserveAspectFit
            smooth: true
        }
    }

    function onActivate() { presentation.currentSlide = 0; }
}
