#ifndef KIDBROWSERPLUGIN_H
#define KIDBROWSERPLUGIN_H

#include <QQmlExtensionPlugin>

class KidBrowserPlugin : public QQmlExtensionPlugin {
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QQmlExtensionInterface")

public:
    void registerTypes(const char *uri);
};

#endif
