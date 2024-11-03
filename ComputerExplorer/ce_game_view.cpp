#include "ce_game_view.h"
#include <QtGui/QPainter>

CEGameView::CEGameView(QWidget* parent)
	:QFrame{parent}
{
	setMinimumSize(512, 512);
	setMaximumSize(512, 512);
}

void CEGameView::paintEvent(QPaintEvent* event) {
	QPainter painter(this);
	//painter.fillRect(0, 0, 75, 30, Qt::blue);
	painter.fillRect(testRect.xCoordinate, testRect.yCoordinate, testRect.width, testRect.height, testRect.color);
	QPoint circleCenter(testCircle.xCoordinate, testCircle.yCoordinate);
	painter.setBrush(QBrush(testCircle.color));
	painter.drawEllipse(circleCenter, testCircle.radiusX, testCircle.radiusY);
}

void CEGameView::changeRectColor(Qt::GlobalColor color) {
	testRect.color = color;
	update();
}