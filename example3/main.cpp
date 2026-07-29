#include <QGuiApplication>
#include <QQmlApplicationEngine>


//✅ QML에 C++ 객체를 등록하기 위해 필요
// Required to register C++ objects in QML
#include <QQmlContext>

//✅ MyConnector 클래스 선언 포함
// Include MyConnector class declaration
#include "MyConnector.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);

    // === 코드 추가 / Add code ===
    MyConnector connector;
    engine.rootContext()->setContextProperty("myConnector", &connector);

    // === 여기까지 / Up to here ===

    engine.loadFromModule("example3", "Main");

    return app.exec();
}
