#include "ce_mainwindow.h"
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QPushButton>
#include <iostream>

CEMainwindow::CEMainwindow(
	QWidget* parent
) : QMainWindow { parent } {
	setWindowTitle("Computer Explorer");

	QWidget* centerWidget = new QWidget(this);
	QGridLayout* centerWidgetLayout = new QGridLayout(centerWidget);
	QPushButton* outButton = new QPushButton("Click me", centerWidget);
	QPushButton* secondButton = new QPushButton("Click here", centerWidget);
	centerWidgetLayout->addWidget(outButton);
	centerWidgetLayout->addWidget(secondButton);

	setCentralWidget(centerWidget);

	connect(outButton, &QPushButton::clicked, this, &CEMainwindow::printOnScreenClickMe);
	connect(secondButton, &QPushButton::clicked, this, &CEMainwindow::printOnScreenClickHere);
	//resize(800, 600);
}

void CEMainwindow::printOnScreen() {
	std::cout << "Hello QT!" << std::endl;
}

void CEMainwindow::printOnScreenClickMe() {
	std::cout << "Click Me" << std::endl;
}

void CEMainwindow::printOnScreenClickHere() {
	std::cout << "Click Here" << std::endl;
}
