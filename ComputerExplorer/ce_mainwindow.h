#pragma once
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QLineEdit>

#include "ce_game_view.h"

class CEGameApp;

class CEMainWindow : public QMainWindow {
	Q_OBJECT
public:
	CEMainWindow(
		CEGameApp* app,
		QWidget* parent = nullptr
	);

public slots:
	void printOnScreen();
	void printOnScreenClickMe();
	void printOnScreenClickHere();
	void submitByte();

private:
	CEGameApp* app;
	CEGameView* gameView;
	QLineEdit* bitInput;
};