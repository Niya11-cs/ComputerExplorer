#include "ce_mainwindow.h"
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QPushButton>
#include <iostream>

#include "ce_game_app.h"

CEMainWindow::CEMainWindow(
	CEGameApp* app,
	QWidget* parent
) :
	QMainWindow { parent },
	app{ app }
{
	setWindowTitle("Computer Explorer");

	QWidget* centerWidget = new QWidget(this);
	QGridLayout* centerWidgetLayout = new QGridLayout(centerWidget);
	QPushButton* outButton = new QPushButton("Click me", centerWidget);
	QPushButton* secondButton = new QPushButton("Click here", centerWidget);

	bitInput = new QLineEdit(centerWidget);
	centerWidgetLayout->addWidget(bitInput);

	QPushButton* submitByteButton = new QPushButton("Submit byte button", centerWidget);
	centerWidgetLayout->addWidget(submitByteButton);

	gameView = new CEGameView(app->getGameSatePtr(), centerWidget);
	centerWidgetLayout->addWidget(gameView);
	centerWidgetLayout->addWidget(outButton);
	centerWidgetLayout->addWidget(secondButton);

	setCentralWidget(centerWidget);

	connect(outButton, &QPushButton::clicked, this, &CEMainWindow::printOnScreenClickMe);
	connect(secondButton, &QPushButton::clicked, this, &CEMainWindow::printOnScreenClickHere);
	connect(submitByteButton, &QPushButton::clicked, this, &CEMainWindow::submitByte);
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

void CEMainWindow::submitByte() {
	std::cout << bitInput->text().toUtf8().constData() << std::endl;
	app->setGameSateByte(bitInput->text());
	gameView->update();
}
