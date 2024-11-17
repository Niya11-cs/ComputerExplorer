#include "ce_ram_widget.h"

CERamWidget::CERamWidget(QWidget* parent) : QWidget{ parent }
{
	for (int ramCellIdx = 0; ramCellIdx < RAM_CELLS_COUNT; ramCellIdx++) {
		numberColumn.push_back(new QLineEdit(this));
		byteColumn.push_back(new QLineEdit(this));
	}
	int deBug = 0;
	++deBug;
}