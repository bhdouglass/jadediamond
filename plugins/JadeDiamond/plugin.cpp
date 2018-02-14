#include <QtQml>
#include <QtQml/QQmlContext>

#include "plugin.h"
#include "jadediamond.h"
#include "urlrecord.h"

void JadeDiamondPlugin::registerTypes(const char *uri) {
    //@uri JadeDiamond
    qmlRegisterSingletonType<JadeDiamond>(uri, 1, 0, "JadeDiamond", [](QQmlEngine*, QJSEngine*) -> QObject* { return new JadeDiamond; });
    qmlRegisterType<URLRecord>(uri, 1, 0, "URLRecord");
}
