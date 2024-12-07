#include "ram_model.h"
#include <iostream>

RamModel::RamModel(QObject *parent) :
    QAbstractListModel(parent),
    currentRow(0)
{
    ramCells.resize(RAM_ROWS_COUNT * RAM_COLS_COUNT);

    timer = new QTimer(this);
    connect(timer, &QTimer::timeout, this, &RamModel::startProgram);
}

int RamModel::rowCount(const QModelIndex &parent) const {
    Q_UNUSED(parent);
    return ramCells.size();
}

QVariant RamModel::data(const QModelIndex &index, int role) const {
    if (!index.isValid() || index.row() >= ramCells.size())
        return QVariant();

    const RamCell &cell = ramCells[index.row()];

    if (role == ActiveRole)
        return cell.active;

    return QVariant();
}

bool RamModel::setData(const QModelIndex &index, const QVariant &value, int role) {
    if (!index.isValid() || index.row() >= ramCells.size())
        return false;

    if (role == ActiveRole) {
        ramCells[index.row()].active = value.toBool();
        emit dataChanged(index, index, { ActiveRole });
        return true;
    }

    return false;
}

QHash<int, QByteArray> RamModel::roleNames() const {
    QHash<int, QByteArray> roles;
    roles[ActiveRole] = "active";
    return roles;
}


void RamModel::startProgram() {
    std::cout << "Start Program in C++" << std::endl;

    if (currentRow < RAM_ROWS_COUNT) {
        for (int col = 0; col < RAM_COLS_COUNT; ++col) {
            int index = currentRow * RAM_COLS_COUNT + col;
            setData(this->index(index), true, ActiveRole);
        }
        ++currentRow;
        timer->start(2000);  // Set delay to 2 seconds
    } else {
        timer->stop();
    }
}
