﻿#pragma once
#include <QtWidgets/QFrame>
#include "rect.h"
#include "circle.h"

class CEGameState;



// CEGameView is a custom widget derived from QFrame, representing the main view for a game.
class CEGameView : public QFrame {
	Q_OBJECT
public:
	CEGameView(CEGameState* gameState,
	QWidget* parent = nullptr);
	
	//change the color wich is drawn on the screen
	void changeRectColor(Qt::GlobalColor color);


protected:

	//Update CEGameView content
	void paintEvent(QPaintEvent* event) override;
private:
	CEGameState* gameState;
	Rect testRect;
	Circle testCircle;
	
};


