#include <QtQml>
#include <QtQml/QQmlContext>
#include "backend.h"
#include "squircle.h"


void BackendPlugin::registerTypes(const char *uri)
{
    Q_ASSERT(uri == QLatin1String("Squircle"));

    qmlRegisterType<Squircle>(uri, 1, 0, "Squircle");
}

void BackendPlugin::initializeEngine(QQmlEngine *engine, const char *uri)
{
    QQmlExtensionPlugin::initializeEngine(engine, uri);
}

