#pragma once
#include <QtWidgets/QFrame>
#include "rect.h"
#include "ce_game_state.h"

class CEGameView : public QFrame {
	Q_OBJECT
public:
	CEGameView(CEGameState* gameState, QWidget* parent = nullptr);
	void changeRectColor(Qt::GlobalColor color);
protected:
	void paintEvent(QPaintEvent* event) override;
private:
	Rect testRect;
	CEGameState* gameState;
};
