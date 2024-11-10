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
	/*painter.fillRect(testRect.xCoordinate, testRect.yCoordinate, testRect.width, testRect.height, testRect.color);
	//QPoint circleCenter(testCircle.xCoordinate, testCircle.yCoordinate);
	//painter.setBrush(QBrush(testCircle.color));
	//painter.drawEllipse(circleCenter, testCircle.radiusX, testCircle.radiusY);

	for (int strIdx = 0; strIdx < byteStr.size(); ++strIdx) {
		if (byteStr[strIdx] == '1') {
			QPen pen(Qt::red);
			pen.setWidth(3);
			painter.setPen(pen);
			painter.drawLine((strIdx * 20) + 20, 100, (strIdx * 20) + 20, 250);
		}
		else if (byteStr[strIdx] == '0') {
			QPen pen(Qt::blue);
			pen.setWidth(3);
			painter.setPen(pen);
			painter.drawLine((strIdx * 20) + 20, 100, (strIdx * 20) + 20, 250);
		}
	}*/

	int radius = 50;
	QPen pen(Qt::red);
	pen.setWidth(3);
	painter.setPen(pen);
	painter.setBrush(QBrush(Qt::red));
	QPoint circle0center(50, 50);
	painter.drawEllipse(circle0center, radius, radius);

	QPoint circle1center(462, 50);
	painter.drawEllipse(circle1center, radius, radius);

	QPoint circle2center(50, 462);
	painter.drawEllipse(circle2center, radius, radius);

	QPoint circle3center(462, 462);
	painter.drawEllipse(circle3center, radius, radius);

	painter.drawLine(circle0center, circle1center);

	painter.drawLine(circle0center, circle2center);

	painter.drawLine(circle1center, circle3center);

	painter.drawLine(circle2center, circle3center);
}

void CEGameView::changeRectColor(Qt::GlobalColor color) {
	testRect.color = color;
	update();
}
void CEGameView::setByteStr(QString byteStr) {
	this->byteStr = byteStr;
	update();
}
