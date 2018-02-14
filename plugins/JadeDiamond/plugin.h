#ifndef JADEDIAMONDPLUGIN_H
#define JADEDIAMONDPLUGIN_H

#include <QQmlExtensionPlugin>

class JadeDiamondPlugin : public QQmlExtensionPlugin {
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QQmlExtensionInterface")

public:
    void registerTypes(const char *uri);
};

#endif
