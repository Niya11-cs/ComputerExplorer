#include<QtWidgets/QApplication>
#include<iostream>
#include "ce_game_application.h"

int main(int argc, char* argv[]) {
	QApplication app(argc, argv);

	CEGameApplication game;
	game.start();

	return app.exec();
}