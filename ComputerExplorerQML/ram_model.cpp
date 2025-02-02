#include "ram_model.h"
#include <iostream>


RamModel::RamModel(QObject *parent):QAbstractListModel(parent) {

    ramCells.resize(RAM_ROWS_COUNT * RAM_COLS_COUNT);
    for (int rowIdx = 0; rowIdx < RAM_ROWS_COUNT; ++rowIdx) {
        for (int colIdx = 0; colIdx < RAM_COLS_COUNT; ++colIdx) {
            QString cellValue = "-";
            if (colIdx == 0) {
                cellValue = QString("%1").arg(rowIdx, 4, 2, QChar('0'));
            }
            ramCells[(rowIdx * RAM_COLS_COUNT) + colIdx] = RamCell{false, false, cellValue};
        }
    }

    m_outputValue = "";
    programCounter = 0;
    previousRow = -1;
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
        previousRow = currentRow;
        const QString cellValue = ramCells[currentRow*2+1].value;
        qDebug() << "Cell value: " << cellValue;

        if (stopInstructionRegex.match(cellValue).hasMatch()) {
            executeStopInstruction();
        }
        else if (outInstructionRegex.match(cellValue).hasMatch()) {
            executeOutInstruction(cellValue);
        }
        else if(jumpInstructionRegex.match(cellValue).hasMatch()){
            executeJumpInstruction(cellValue);
        }
    }

    if (currentRow < RAM_ROWS_COUNT) {
        if (currentRow > 0) {
            for (int col = 0; col < RAM_COLS_COUNT; ++col) {
                int index = previousRow * RAM_COLS_COUNT + col;

                setData(this->index(index), false, ActiveRole);
                setData(this->index(index), true, PassiveRole);
            }
        }

        for (int col = 0; col < RAM_COLS_COUNT; ++col) {
            int index = currentRow * RAM_COLS_COUNT + col;

            setData(this->index(index), true, ActiveRole);
        }
    } else {
       ramTimer.stop();
    }


    ++programCounter;
}

void RamModel::executeStopInstruction(){
    ramTimer.stop();
}

void RamModel::executeJumpInstruction(QString cellValue){
    QStringList strArr = cellValue.split(' ');
    bool ok;
    currentRow = strArr[1].toInt(&ok, 2);
}

void RamModel::executeOutInstruction(QString cellValue){
    QStringList strArr = cellValue.split(' ');
    bool ok;
    int rowIdx = strArr[1].toInt(&ok, 2);
    QString cellBinaryValue = ramCells[rowIdx*RAM_COLS_COUNT+1].value;
    cellBinaryValue.remove(' ');
    int cellIntValue = cellBinaryValue.toInt(&ok, 2);
    setOutputValue(QString::number(cellIntValue));
    ++currentRow;
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

QString RamModel::outputValue() const {
    return m_outputValue;
}

void RamModel::setOutputValue(const QString& outputValue) {
    if (m_outputValue != outputValue) {
        m_outputValue = outputValue;
        emit outputValueChanged();
    }
}
