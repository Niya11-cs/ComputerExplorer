#pragma once

#include <QtCore/QString>

class CEGameState {
public:
	void setByteStr(QString byteStr);
	QString getByteStr();
private:
	QString byteStr;
};