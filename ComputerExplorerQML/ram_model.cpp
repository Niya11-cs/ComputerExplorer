#include "ram_model.h"
#include <iostream>

RamModel::RamModel(QObject *parent):QObject(parent) {
    programCounter = 0;
    connect(&ramTimer, &QTimer::timeout, this, &RamModel::executeInstruction);
}

void RamModel::startProgram(){
    std::cout << "C++ program started" << std::endl;
    ramTimer.start(1000);
}

void RamModel::executeInstruction(){
    std::cout << "Program counter: " << programCounter << std::endl;
    ++programCounter;
}
