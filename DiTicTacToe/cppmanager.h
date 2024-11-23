#ifndef CPPMANAGER_H
#define CPPMANAGER_H

#include <QObject>

class CppManager : public QObject {
    Q_OBJECT

public:
    CppManager();

    Q_INVOKABLE int handleClick(int index);

private:
    int currentPlayerIdx;
};

#endif // CPPMANAGER_H
