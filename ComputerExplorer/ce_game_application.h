#pragma once

#include "ce_main_window.h"

class CEGameApplication {
public:
	CEGameApplication();
	void start();
private:
	CEMainWindow* ceMainWindow;
};