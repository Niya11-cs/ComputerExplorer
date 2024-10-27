#pragma once
#include <QtWidgets/QFrame>
#include "rect.h"

class CEGameView : public QFrame {
	Q_OBJECT
public:
	CEGameView(QWidget* parent = nullptr);
	void changeRectColor(Qt::GlobalColor color);
protected:
	void paintEvent(QPaintEvent* event) override;
private:
	Rect testRect;
};
