#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "computer.h"
#include <QQmlContext>
#include <QIcon>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    Computer computer;
    engine.rootContext()->setContextProperty("computer", &computer);
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
