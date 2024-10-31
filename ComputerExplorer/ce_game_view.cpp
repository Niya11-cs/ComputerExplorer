#include "ce_game_view.h"
#include <QtGui/QPainter>

CEGameView::CEGameView(CEGameState* gameState, QWidget* parent)
	: QFrame{parent},
	gameState{ gameState }
{
	setMinimumSize(512, 512);
	setMaximumSize(512, 512);
}

void CEGameView::paintEvent(QPaintEvent* event) {
	QPainter painter(this);
	painter.fillRect(testRect.xCoordinate, testRect.yCoordinate, testRect.width, testRect.height, testRect.color);

	for (int bitIdx{ 0 }; bitIdx < gameState->byteStr.length(); ++bitIdx) {
		if (gameState->byteStr.at(bitIdx) == '1') {
			QPen pen(Qt::red);
			pen.setWidth(3);
			painter.setPen(pen);
			painter.drawLine(128 + bitIdx * 32, 128, 128 + bitIdx * 32, 384);
		}
		else if (gameState->byteStr.at(bitIdx) == '0') {
			QPen pen(Qt::blue);
			pen.setWidth(3);
			painter.setPen(pen);
			painter.drawLine(128 + bitIdx * 32, 128, 128 + bitIdx * 32, 384);
		}
	}
}

void CEGameView::changeRectColor(Qt::GlobalColor color) {
	testRect.color = color;
	update();
}