#ifndef RAM_MODEL_H
#define RAM_MODEL_H

#include <QObject>

class RamModel : public QObject
{
    Q_OBJECT
public:
    RamModel(QObject *parent = nullptr);
public slots:
    void startProgram();
};

#endif // RAM_MODEL_H
