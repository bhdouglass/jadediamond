import QtQuick 2.4
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3

import KidBrowser 1.0

Page {
    signal urlSelected(string url)

    header: PageHeader {
        id: header

        title: i18n.tr('History')
    }

    Label {
        anchors.centerIn: parent
        visible: KidBrowser.historyCount === 0
        text: i18n.tr('We are not makers of history. We are made by history.\n- Martin Luther King, Jr.')
    }

    Flickable {
        anchors {
            left: parent.left
            top: header.bottom
            right: parent.right
            bottom: parent.bottom
        }

        clip: true
        contentHeight: contentColumn.height + units.gu(4)

        ColumnLayout {
            id: contentColumn
            anchors {
                left: parent.left
                top: parent.top
                right: parent.right
            }
            spacing: 0

            Repeater {
                model: KidBrowser.history

                delegate: ListItem {
                    Label {
                        anchors {
                            fill: parent
                            leftMargin: units.gu(1)
                            rightMargin: units.gu(1)
                        }

                        // TRANSLATORS: Date/time reference here: http://doc.qt.io/qt-5/qml-qtqml-qt.html#formatDateTime-method
                        text: Qt.formatDateTime(model.datetime, i18n.tr("MM/dd/yy hh:mm")) + ' ' + model.url // TODO see if there is a locale thing to do this automatically
                        verticalAlignment: Label.AlignVCenter
                    }

                    onClicked: urlSelected(model.url)
                }
            }
        }
    }
}
