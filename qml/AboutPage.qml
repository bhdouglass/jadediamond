import QtQuick 2.4
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3

Page {
    signal urlSelected(string url)

    header: PageHeader {
        id: header

        title: i18n.tr('About')
    }

    Flickable {
        anchors {
            top: header.bottom
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        contentHeight: contentColumn.height + units.gu(4)

        ColumnLayout {
            id: contentColumn
            anchors {
                left: parent.left;
                top: parent.top;
                right: parent.right;
                margins: units.gu(2)
            }
            spacing: units.gu(2)

            Label {
                Layout.fillWidth: true

                horizontalAlignment: Label.AlignHCenter
                textSize: Label.XLarge
                text: i18n.tr('Jade Diamond')
            }

            Item {
                Layout.preferredHeight: logo.height
                Layout.fillWidth: true

                Image {
                    id: logo
                    anchors.centerIn: parent

                    source: '../assets/logo.svg'
                }
            }

            Label {
                text: i18n.tr('Author: Brian Douglass')

                MouseArea {
                    anchors.fill: parent
                    onClicked: urlSelected('http://bhdouglass.com/')
                }
            }

            Label {
                text: i18n.tr('Icon by: Joan CiberSheep')
            }

            Label {
                text: i18n.tr('Special thanks to Amber for her icon idea!')
            }

            Label {
                text: i18n.tr('Special thanks to Luna for naming the app!')
            }

            Label {
                text: i18n.tr('Thanks to the UBParents Group\nfor suggestions and testing!')

                MouseArea {
                    anchors.fill: parent
                    onClicked: urlSelected('https://t.me/UBports_Parents')
                }
            }
        }
    }
}
