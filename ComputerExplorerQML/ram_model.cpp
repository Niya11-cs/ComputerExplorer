#include "ram_model.h"
#include <iostream>
#include <QRegularExpression>

RamModel::RamModel(QObject *parent):QAbstractListModel(parent) {

    ramCells.resize(RAM_ROWS_COUNT * RAM_COLS_COUNT);
    for (int rowIdx = 0; rowIdx < RAM_ROWS_COUNT; ++rowIdx) {
        for (int colIdx = 0; colIdx < RAM_COLS_COUNT; ++colIdx) {
            ramCells[(rowIdx * RAM_COLS_COUNT) + colIdx] = RamCell{ false};
        }
    }

    programCounter = 0;
    currentRow = 0;
    connect(&ramTimer, &QTimer::timeout, this, &RamModel::executeInstruction);
}

void RamModel::startProgram(){
    std::cout << "C++ program started" << std::endl;
    ramTimer.start(1000);
}

void RamModel::executeInstruction(){
    qDebug() << "Program counter: " << programCounter;
    if(currentRow >= 0 && currentRow < RAM_ROWS_COUNT){
        setName(ramCells[currentRow*2+1].value);
        qDebug() << "Cell value: " << ramCells[currentRow*2+1].value;

        QRegularExpression regex("^OUT [01]{4}");
        if (regex.match(ramCells[currentRow*2+1].value).hasMatch()) {
            setName("OUT INSTRUCTION");
        }
    }

    if (currentRow < RAM_ROWS_COUNT) {
        if (currentRow > 0) {
            const int previosRow = currentRow - 1;
            for (int col = 0; col < RAM_COLS_COUNT; ++col) {
                int index = previosRow * RAM_COLS_COUNT + col;

                setData(this->index(index), false, ActiveRole);
                setData(this->index(index), true, PassiveRole);
            }
        }

        for (int col = 0; col < RAM_COLS_COUNT; ++col) {
            int index = currentRow * RAM_COLS_COUNT + col;

            setData(this->index(index), true, ActiveRole);
        }
        ++currentRow;
    } else {
       ramTimer.stop();
    }


    ++programCounter;
}

int RamModel::rowCount(const QModelIndex &parent) const {
    Q_UNUSED(parent);
    return ramCells.size();
}

QVariant RamModel::data(const QModelIndex &index, int role) const {
    if (!index.isValid() || index.row() >= ramCells.size())
        return QVariant();

    const RamCell &cell = ramCells[index.row()];

    switch (role) {
    case ActiveRole:
        return cell.active;
    case PassiveRole:
        return cell.passive;
    case ValueRole:
        return cell.value;
    default:
        return QVariant();
    }

    return QVariant();
}

bool RamModel::setData(const QModelIndex &index, const QVariant &value, int role) {
    if (!index.isValid() || index.row() >= ramCells.size())
        return false;

    if (role == ActiveRole && value.canConvert<bool>()) {
        ramCells[index.row()].active = value.toBool();
        emit dataChanged(index, index, { ActiveRole });
        return true;
    }
    else if(role == PassiveRole && value.canConvert<bool>()){
        ramCells[index.row()].passive = value.toBool();
        emit dataChanged(index, index, { PassiveRole });
        return true;
    }
    else if(role == ValueRole && value.canConvert<QString>()){
        ramCells[index.row()].value = value.toString();
        emit dataChanged(index, index, { ValueRole });
        return true;
    }

    return false;
}

QHash<int, QByteArray> RamModel::roleNames() const {
    QHash<int, QByteArray> roles;
    roles[ActiveRole] = "active";
    roles[PassiveRole] = "passive";
    roles[ValueRole] = "value";
    return roles;
}
