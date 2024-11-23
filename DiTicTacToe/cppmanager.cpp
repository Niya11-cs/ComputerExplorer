#include "cppmanager.h"

CppManager::CppManager() {
    currentPlayerIdx = 0;
}

int CppManager::handleClick(int index) {
    int playerIdx{ currentPlayerIdx };

    ++currentPlayerIdx;
    currentPlayerIdx %= 2;

    return playerIdx;
}
