#ifndef RAM_MODEL_H
#define RAM_MODEL_H

#include <QTimer>
#include <QObject>

class RamModel : public QObject
{
    Q_OBJECT
public:
    RamModel(QObject *parent = nullptr);
public slots:
    void startProgram();
    void executeInstruction();
private:
    QTimer ramTimer;
    int programCounter;
};

#endif // RAM_MODEL_H
