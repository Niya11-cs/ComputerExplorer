#include "ce_game_app.h"

CEGameApp::CEGameApp() {
	init();
}

void CEGameApp::init() {
	mainWindow = new CEMainWindow(this);
}

void CEGameApp::setGameSateByte(const QString& byteStr) {
	gameSate.byteStr = byteStr;
}

CEGameState* CEGameApp::getGameSatePtr() {
	return &gameSate;
}

void CEGameApp::run() {
	mainWindow->show();
}
