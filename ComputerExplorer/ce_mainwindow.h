#pragma once
#include <QtWidgets/QMainWindow>
#include "ce_game_view.h"

class CEMainWindow : public QMainWindow {
	Q_OBJECT
public:
	CEMainWindow(
		QWidget* parent = nullptr
	);

public slots:
	void printOnScreen();
	void printOnScreenClickMe();
	void printOnScreenClickHere();

private:
	CEGameView* gameView;
};