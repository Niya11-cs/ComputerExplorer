#include "ce_main_window.h"
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QPushButton>
#include "ce_game_application.h"
#include "ce_ram_widget.h"

#include <iostream>

CEMainWindow::CEMainWindow(
	CEGameState* gameState,
	CEGameApplication* gameApplication,
	QWidget* parent
) :
	QMainWindow { parent }, 
	gameApplication{ gameApplication }
{
	setWindowTitle("Computer Explorer");

	QWidget* centerWidget = new QWidget(this);
	QGridLayout* centerWidgetLayout = new QGridLayout(centerWidget);

	ramWidget = new CERamWidget(centerWidget);
	QPushButton* blueButton = new QPushButton("Recolour blue", centerWidget);
	QPushButton* greenButton = new QPushButton("Recolour green", centerWidget);
	gameView = new CEGameView(gameState, centerWidget);
	byteLineEdit = new QLineEdit(centerWidget);
	QPushButton* submitByteButton = new QPushButton("Submit Byte", centerWidget);
	centerWidgetLayout->addWidget(byteLineEdit, 0, 0);
	centerWidgetLayout->addWidget(submitByteButton, 1, 0);
	centerWidgetLayout->addWidget(gameView, 2, 0);
	centerWidgetLayout->addWidget(blueButton, 3, 0);
	centerWidgetLayout->addWidget(greenButton, 4, 0);

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
	gameApplication->setByteStr(str);
	gameView->update();
}

void CEMainWindow::recolourBlue() {
	std::cout << "Recolur the rectangle blue" << std::endl;
	gameView->changeRectColor(Qt::blue);
}

void CEMainWindow::recolourGreen() {
	std::cout << "Recolur the rectangle green" << std::endl;
	gameView->changeRectColor(Qt::green);
}
