#pragma once

#include "ce_mainwindow.h"
#include "ce_game_state.h"

class CEGameApp : public QObject {
public:

	CEGameApp();

	void run();

	CEGameState* getGameSatePtr();

	void setGameSateByte(const QString& byteStr);

private:

	void init();

private:
	CEMainWindow* mainWindow;
	CEGameState gameSate;
};
