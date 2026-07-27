#include "mainwindow.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    // 프로그램 시작점 최소한의 코딩
    // Program starting point with minimal coding

    QApplication a(argc, argv);
    MainWindow w;
    w.show();
    return a.exec();
}
