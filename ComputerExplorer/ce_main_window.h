#pragma once
#include <QtWidgets/QMainWindow>
#include "ce_game_view.h"

// CEMainWindow contens and manages the whole UI of the game
class CEMainWindow : public QMainWindow {
	Q_OBJECT
public:
	CEMainWindow(
		QWidget* parent = nullptr
	);

public slots:
	void printOnScreen();

	//update the rect in the game view
	void recolourBlue();
	
	//update the rect in the game view
	void recolourGreen();

private:
	CEGameView* gameView;
};