#include "ce_main_window.h"
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QTableWidget>

#include <iostream>

LineEditTable::LineEditTable(int rows, int columns, QWidget* parent)
	: QWidget(parent) {
	// Create a grid layout
	QGridLayout* gridLayout = new QGridLayout(this);
	gridLayout->setSpacing(0);  // Set spacing between cells
	gridLayout->setContentsMargins(0, 0, 0, 0);  // Remove margins

	QFontMetrics fontMetrics(this->font());

	// Calculate the width needed for 4 digits and 8 digits
	int widthFor4Digits = fontMetrics.horizontalAdvance("0000");  // Width for 4 digits
	int widthFor8Digits = fontMetrics.horizontalAdvance("0000 0000");  // Width for 8 digits


	// Populate the layout with QLineEdit widgets
	for (int row = 0; row < rows; ++row) {
		for (int col = 0; col < columns; ++col) {
			QLineEdit* lineEdit = new QLineEdit(this);

			lineEdit->setStyleSheet(
				"QLineEdit {"
				"  border: 1px solid green;"  // Simple border
				"  background: white;"       // White background
				"  border-radius: 0px;"      // Remove rounded corners
				"  box-shadow: none;"        // Remove shadows
				"}"
			);

			lineEdit->setAlignment(Qt::AlignCenter);

			// Set a fixed width based on the column
			if (col == 0) {
				lineEdit->setFixedWidth(widthFor4Digits + 10);  // Add some padding
			}
			else if (col == 1) {
				lineEdit->setFixedWidth(widthFor8Digits + 10);  // Add some padding
			}

			// Set placeholder text for clarity (optional)
			lineEdit->setPlaceholderText(col == 0 ? "0000" : "1111 0000");

			// Customize the size policy to make the cells uniform
			//lineEdit->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Preferred);

			// Add the QLineEdit to the grid layout
			gridLayout->addWidget(lineEdit, row, col);
		}

		QSpacerItem* verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);
		gridLayout->addItem(verticalSpacer, rows, 0, 1, columns);
	}

	// Set the layout for the custom widget
	setLayout(gridLayout);
}

CEMainWindow::CEMainWindow(
	QWidget* parent
) : QMainWindow { parent } {
	setWindowTitle("Computer Explorer");

	QWidget* centerWidget = new QWidget(this);
	QGridLayout* centerWidgetLayout = new QGridLayout(centerWidget);
	QPushButton* blueButton = new QPushButton("Recolour blue", centerWidget);
	QPushButton* greenButton = new QPushButton("Recolour green", centerWidget);
	gameView = new CEGameView(centerWidget);
	byteLineEdit = new QLineEdit(centerWidget);
	QPushButton* submitByteButton = new QPushButton("Submit Byte", centerWidget);

	LineEditTable* ramTable = new LineEditTable(15, 2, centerWidget);

	centerWidgetLayout->addWidget(ramTable, 0, 0, 5, 1);
	centerWidgetLayout->addWidget(byteLineEdit, 1, 1);
	centerWidgetLayout->addWidget(submitByteButton, 2, 1);
	centerWidgetLayout->addWidget(gameView, 3, 1);
	centerWidgetLayout->addWidget(blueButton, 4, 1);
	centerWidgetLayout->addWidget(greenButton, 5, 1);

	setCentralWidget(centerWidget);

	connect(submitByteButton, &QPushButton::clicked, this, &CEMainWindow::submitByte);
	connect(blueButton, &QPushButton::clicked, this, &CEMainWindow::recolourBlue);
	connect(greenButton, &QPushButton::clicked, this, &CEMainWindow::recolourGreen);
	//resize(800, 600);
}

void CEMainWindow::printOnScreen() {
	std::cout << "Hello QT!" << std::endl;
}

void CEMainWindow::submitByte() {
	QString str = byteLineEdit->text();
	std::string stdStr = str.toUtf8().constData();
	std::cout << stdStr << std::endl;
	gameView->setByteStr(str);
}

void CEMainWindow::recolourBlue() {
	std::cout << "Recolur the rectangle blue" << std::endl;
	gameView->changeRectColor(Qt::blue);
}

void CEMainWindow::recolourGreen() {
	std::cout << "Recolur the rectangle green" << std::endl;
	gameView->changeRectColor(Qt::green);
}
