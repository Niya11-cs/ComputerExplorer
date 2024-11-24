#include "cppmanager.h"

CppManager::CppManager() {
    curentPlayerIdx = 0;
}

int CppManager::handleClick(){
    int playerIdx = curentPlayerIdx;
    curentPlayerIdx = !curentPlayerIdx;
    return playerIdx;
}
