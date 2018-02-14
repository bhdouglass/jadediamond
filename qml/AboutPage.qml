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

            //TODO logo

            Label {
                Layout.fillWidth: true

                horizontalAlignment: Label.AlignHCenter
                textSize: Label.XLarge
                text: i18n.tr('Jade Diamond')
            }

            Label {
                text: i18n.tr('Author: Brian Douglass')

                MouseArea {
                    anchors.fill: parent
                    onClicked: urlSelected('http://bhdouglass.com/')
                }
            }

            Label {
                text: i18n.tr('Special thanks to the UBParents Group\nfor suggestions and testing!')

                MouseArea {
                    anchors.fill: parent
                    onClicked: urlSelected('https://t.me/UBports_Parents')
                }
            }
        }
    }
}
