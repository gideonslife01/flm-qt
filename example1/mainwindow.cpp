#include "mainwindow.h"
#include "./ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    // ui초기화[기본코드](Qt Designer에서 만든 UI 불러오기)
    // UI initialization [basic code] (loading UI

    ui->setupUi(this);

    //
    // 생성자 안에서 한 번만 설정,탭키 누르면 다음 텍스트로 이동
    // Set once in constructor, press tab key to move to next text
    //
    // 여기서부터 코딩시작 / Start coding from here -->
    //

    ui->plainTextEdit->setTabChangesFocus(true);
    ui->plainTextEdit2->setTabChangesFocus(true);


    // 버튼 클릭 시 입력값을 라벨에 출력
    // When a button is clicked, the input value is output to the label.3

        connect(ui->pushButton, &QPushButton::clicked, this, [=](){

            // 두 개의 QPlainTextEdit에서 텍스트 가져오기
            // Get text from two QPlainTextEdits

            QString text1 = ui->plainTextEdit->toPlainText();
            QString text2 = ui->plainTextEdit2->toPlainText();

            // 문자열 연결
            // string concatenation
            QString combined = text1 + text2;

            // label에 출력
            // Print on label
            ui->label->setText(combined);
        });

    //<-- 여기까지 코딩 / Coding up to here
}

MainWindow::~MainWindow()
{
    delete ui;
}
