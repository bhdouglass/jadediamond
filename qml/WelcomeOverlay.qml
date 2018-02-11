import QtQuick 2.4
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3

Flickable {
    property string homePage
    signal start(string url)

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

            text: i18n.tr('Welcome to KidBrowser')
            textSize: Label.XLarge
            horizontalAlignment: Label.AlignHCenter
        }

        // TODO image or logo

        Label {
            Layout.fillWidth: true

            text: i18n.tr('Enjoy the web while safely browsing with your parents')
            horizontalAlignment: Label.AlignHCenter
        }

        Label {
            Layout.fillWidth: true

            text: i18n.tr('When you encounter a new site you will need\nto ask your parent\'s permission to access it')
            horizontalAlignment: Label.AlignHCenter
        }

        Label {
            Layout.fillWidth: true

            text: i18n.tr('Set your home page\n(Ask your parents for help!)')
            horizontalAlignment: Label.AlignHCenter
        }

        TextField {
            id: homePageEdit
            Layout.alignment: Qt.AlignHCenter

            text: homePage
            onAccepted: start(text)
        }

        Button {
            Layout.alignment: Qt.AlignHCenter

            text: i18n.tr('Start Browsing')
            color: UbuntuColors.orange
            onClicked: start(homePageEdit.text)
        }
    }
}
