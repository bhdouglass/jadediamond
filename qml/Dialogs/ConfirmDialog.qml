import QtQuick 2.4
import Ubuntu.Components 1.3

BaseDialog {
    title: i18n.tr('Confirmation')

    Button {
        text: i18n.tr('OK')
        onClicked: model.accept()
    }

    Button {
        text: i18n.tr('Cancel')
        onClicked: model.reject()
    }
}
