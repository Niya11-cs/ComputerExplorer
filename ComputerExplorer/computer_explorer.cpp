#include<QtWidgets/QApplication>
#include<iostream>
#include "ce_game_app.h"

int main(int argc, char* argv[]) {
	QApplication app(argc, argv);

	CEGameApp gameApp;
	gameApp.run();

	return app.exec();
}