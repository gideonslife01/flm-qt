#ifndef MYCONNECTOR_H
#define MYCONNECTOR_H

// MyConnector.h

#include <QObject>
#include <QString>

class MyConnector : public QObject {
    Q_OBJECT

public:
    explicit MyConnector(QObject *parent = nullptr);

    Q_INVOKABLE void updateText(const QString &text1, const QString &text2);

signals:
    void resultReady(const QString &result);
};

#endif // MYCONNECTOR_H
