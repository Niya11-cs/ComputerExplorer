#pragma once
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QLineEdit>

#include "ce_game_view.h"

class CEGameApplication;
class CEGameState;
class CERamWidget;

// CEMainWindow contens and manages the whole UI of the game
class CEMainWindow : public QMainWindow {
	Q_OBJECT
public:
	CEMainWindow(
		CEGameState* gameState,
		CEGameApplication* gameApplication,
		QWidget* parent = nullptr
	);

public slots:
	void printOnScreen();

	//update the rect in the game view
	void recolourBlue();
	
	//update the rect in the game view
	void recolourGreen();

	void submitByte();
private:
	CEGameView* gameView;
	CEGameApplication* gameApplication;
	QLineEdit* byteLineEdit;
	CERamWidget* ramWidget;
};