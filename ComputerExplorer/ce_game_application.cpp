#include "ce_game_application.h"

CEGameApplication::CEGameApplication() {
	ceMainWindow = new CEMainWindow(&ceGameState, this);
}

void CEGameApplication::start() {
	ceMainWindow->show();
}

void CEGameApplication::setByteStr(QString byteStr) {
	ceGameState.setByteStr(byteStr);
}