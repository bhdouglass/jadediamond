#include <QtQml>
#include <QtQml/QQmlContext>

#include "plugin.h"
#include "kidbrowser.h"

void KidBrowserPlugin::registerTypes(const char *uri) {
    //@uri KidBrowser
    qmlRegisterSingletonType<KidBrowser>(uri, 1, 0, "KidBrowser", [](QQmlEngine*, QJSEngine*) -> QObject* { return new KidBrowser; });
}
