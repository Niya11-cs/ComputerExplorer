#pragma once

#include "ce_main_window.h"
#include "ce_game_state.h"

class CEGameApplication {
public:
	CEGameApplication();
	void start();
	void setByteStr(QString byteStr);
private:
	CEMainWindow* ceMainWindow;
	CEGameState ceGameState;
};