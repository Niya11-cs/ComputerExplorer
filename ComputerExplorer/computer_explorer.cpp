#include<QtWidgets/QApplication>
#include<iostream>
#include "ce_mainwindow.h"


int main(int argc, char* argv[]) {
	QApplication app(argc, argv);

	CEMainwindow* ceMainWindow = new CEMainwindow();
	ceMainWindow->show();

	return app.exec();
}