#include "ce_main_window.h"
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QPushButton>

#include <iostream>

CEMainWindow::CEMainWindow(
	QWidget* parent
) : QMainWindow { parent } {
	setWindowTitle("Computer Explorer");

	QWidget* centerWidget = new QWidget(this);
	QGridLayout* centerWidgetLayout = new QGridLayout(centerWidget);
	QPushButton* blueButton = new QPushButton("Recolour blue", centerWidget);
	QPushButton* greenButton = new QPushButton("Recolour green", centerWidget);
	gameView = new CEGameView(centerWidget);
	byteLineEdit = new QLineEdit(centerWidget);
	QPushButton* submitByteButton = new QPushButton("Submit Byte", centerWidget);
	centerWidgetLayout->addWidget(byteLineEdit);
	centerWidgetLayout->addWidget(submitByteButton);
	centerWidgetLayout->addWidget(gameView);
	centerWidgetLayout->addWidget(blueButton);
	centerWidgetLayout->addWidget(greenButton);

	setCentralWidget(centerWidget);

	connect(submitByteButton, &QPushButton::clicked, this, &CEMainWindow::submitByte);
	connect(blueButton, &QPushButton::clicked, this, &CEMainWindow::recolourBlue);
	connect(greenButton, &QPushButton::clicked, this, &CEMainWindow::recolourGreen);
	//resize(800, 600);
}

void CEMainWindow::printOnScreen() {
	std::cout << "Hello QT!" << std::endl;
}

void CEMainWindow::submitByte() {
	QString str = byteLineEdit->text();
	std::string stdStr = str.toUtf8().constData();
	std::cout << stdStr << std::endl;
	gameView->setByteStr(str);
}

void CEMainWindow::recolourBlue() {
	std::cout << "Recolur the rectangle blue" << std::endl;
	gameView->changeRectColor(Qt::blue);
}

void CEMainWindow::recolourGreen() {
	std::cout << "Recolur the rectangle green" << std::endl;
	gameView->changeRectColor(Qt::green);
}
