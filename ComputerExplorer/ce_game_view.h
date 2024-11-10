#pragma once
#include <QtWidgets/QFrame>
#include "rect.h"
#include "circle.h"



// CEGameView is a custom widget derived from QFrame, representing the main view for a game.
class CEGameView : public QFrame {
	Q_OBJECT
public:
	CEGameView(QWidget* parent = nullptr);
	
	//change the color wich is drawn on the screen
	void changeRectColor(Qt::GlobalColor color);

	void setByteStr(QString byteStr);
protected:

	//Update CEGameView content
	void paintEvent(QPaintEvent* event) override;
private:
	Rect testRect;
	Circle testCircle;
	QString byteStr;
};


