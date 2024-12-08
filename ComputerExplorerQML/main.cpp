#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "ram_model.h"
#include <QQmlContext>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    RamModel ramModel;
    engine.rootContext()->setContextProperty("ramModel", &ramModel);
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("QMLTest", "Main");

    return app.exec();
}
