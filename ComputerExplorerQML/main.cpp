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
    const QUrl url(QStringLiteral("qrc:/ComputerExplorerQML/Main.qml"));
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
