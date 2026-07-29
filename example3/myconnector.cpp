#include "myconnector.h"

MyConnector::MyConnector(QObject *parent) : QObject(parent) {}

void MyConnector::updateText(const QString &text1, const QString &text2) {
    QString combined = text1 + " " + text2;
    emit resultReady(combined);
}
