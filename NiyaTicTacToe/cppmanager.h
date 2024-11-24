#ifndef CPPMANAGER_H
#define CPPMANAGER_H
#include <QObject>
class CppManager: public QObject
{
    Q_OBJECT
public:
    CppManager();
    Q_INVOKABLE int handleClick();
private:
    int curentPlayerIdx;
};

#endif // CPPMANAGER_H
