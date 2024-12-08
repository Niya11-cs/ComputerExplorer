#include "ram_model.h"
#include <iostream>

RamModel::RamModel(QObject *parent):QObject(parent) {}

void RamModel::startProgram(){
    std::cout << "C++ program started" << std::endl;
}
