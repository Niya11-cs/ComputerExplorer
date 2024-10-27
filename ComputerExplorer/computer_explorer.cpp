#include<QtWidgets/QApplication>
#include<iostream>
#include "ce_mainwindow.h"


int main(int argc, char* argv[]) {
	QApplication app(argc, argv);

	CEMainWindow* ceMainWindow = new CEMainWindow();
	ceMainWindow->show();

	return app.exec();
}