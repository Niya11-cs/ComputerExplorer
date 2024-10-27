#include "ce_mainwindow.h"
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QPushButton>
#include <iostream>

CEMainWindow::CEMainWindow(
	QWidget* parent
) : QMainWindow { parent } {
	setWindowTitle("Computer Explorer");

	QWidget* centerWidget = new QWidget(this);
	QGridLayout* centerWidgetLayout = new QGridLayout(centerWidget);
	QPushButton* outButton = new QPushButton("Click me", centerWidget);
	QPushButton* secondButton = new QPushButton("Click here", centerWidget);
	gameView = new CEGameView(centerWidget);
	centerWidgetLayout->addWidget(gameView);
	centerWidgetLayout->addWidget(outButton);
	centerWidgetLayout->addWidget(secondButton);

	setCentralWidget(centerWidget);

	connect(outButton, &QPushButton::clicked, this, &CEMainWindow::printOnScreenClickMe);
	connect(secondButton, &QPushButton::clicked, this, &CEMainWindow::printOnScreenClickHere);
	//resize(800, 600);
}

void CEMainWindow::printOnScreen() {
	std::cout << "Hello QT!" << std::endl;
}

void CEMainWindow::printOnScreenClickMe() {
	std::cout << "Click Me" << std::endl;
	gameView->changeRectColor(Qt::blue);
}

void CEMainWindow::printOnScreenClickHere() {
	std::cout << "Click Here" << std::endl;
	gameView->changeRectColor(Qt::green);
}
