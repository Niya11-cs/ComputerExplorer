#include "ce_game_application.h"

CEGameApplication::CEGameApplication() {
	ceMainWindow = new CEMainWindow();
}

void CEGameApplication::start() {
	ceMainWindow->show();
}