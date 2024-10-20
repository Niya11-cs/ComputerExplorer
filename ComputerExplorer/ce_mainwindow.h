#pragma once
#include <QtWidgets/QMainWindow>

class CEMainwindow : public QMainWindow {
	Q_OBJECT
public:
	CEMainwindow(
		QWidget* parent = nullptr
	);

public slots:
	void printOnScreen();
};