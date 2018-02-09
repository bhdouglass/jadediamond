import QtQuick 2.4
import Ubuntu.Components 1.3

MainView {
    id: root
    objectName: 'mainView'
    applicationName: 'kidbrowser.bhdouglass'
    automaticOrientation: true

    width: units.gu(45)
    height: units.gu(75)

    PageStack {
        id: pageStack

        Component.onCompleted: push(Qt.resolvedUrl('BrowserPage.qml'))
    }
}
