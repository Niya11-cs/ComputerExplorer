#pragma once

#include <QtWidgets/QWidget>
#include <QtWidgets/QLineEdit>

const int RAM_CELLS_COUNT = 15;

class CERamWidget : public QWidget {
	Q_OBJECT
public:
	CERamWidget(QWidget* parent = nullptr);
private:
	std::vector<QLineEdit*> numberColumn;
	std::vector<QLineEdit*> byteColumn;
};