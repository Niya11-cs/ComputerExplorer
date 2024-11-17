#pragma once
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QLineEdit>

#include "ce_game_view.h"

class LineEditTable : public QWidget {
    Q_OBJECT

public:
	explicit LineEditTable(int rows, int columns, QWidget* parent = nullptr);
};

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

	void submitByte();
private:
	CEGameView* gameView;
	QLineEdit* byteLineEdit;
};