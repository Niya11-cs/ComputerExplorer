#ifndef COMPUTER_H
#define COMPUTER_H

#include <QTimer>
#include <QObject>
#include <QAbstractListModel>
#include <QRegularExpression>

static const int RAM_ROWS_COUNT = 16;
static const int RAM_COLS_COUNT = 2;

static const QRegularExpression outInstructionRegex("^OUT [01]{4}$");
static const QRegularExpression outRegInstructionRegex("^OUT [ABC]{1}$");
static const QRegularExpression jumpInstructionRegex("^JUMP [01]{4}$");
static const QRegularExpression stopInstructionRegex("^STOP!$");
static const QRegularExpression loadInstructionRegex("^LOAD [01]{4} [ABC]{1}$");
static const QRegularExpression addInstructionRegex("^ADD [ABC]{1} [ABC]{1} [ABC]{1}$");
static const QRegularExpression cmpInstructionRegex("^CMP [ABC]{1} [ABC]{1}$");
static const QRegularExpression jumpIfInstructionRegex("^JUMP IF (EQ|LT|GT){1} [01]{4}$");

struct RamCell {
    bool active;
    bool passive;
    QString value;
};

Q_DECLARE_METATYPE(RamCell)

class Computer : public QAbstractListModel
{
    Q_OBJECT
    Q_PROPERTY(QString outputValue READ outputValue WRITE setOutputValue NOTIFY outputValueChanged)
    Q_PROPERTY(QString regAValue READ regAValue WRITE setRegAValue NOTIFY regAValueChanged)
    Q_PROPERTY(QString regBValue READ regBValue WRITE setRegBValue NOTIFY regBValueChanged)
    Q_PROPERTY(QString regCValue READ regCValue WRITE setRegCValue NOTIFY regCValueChanged)
    Q_PROPERTY(bool flagEqualValue READ flagEqualValue WRITE setFlagEqualValue NOTIFY flagEqualValueChanged)
    Q_PROPERTY(bool flagLessThanValue READ flagLessThanValue WRITE setFlagLessThanValue NOTIFY flagLessThanValueChanged)
    Q_PROPERTY(bool flagGreaterThanValue READ flagGreaterThanValue WRITE setFlagGreaterThanValue NOTIFY flagGreaterThanValueChanged)

public:
    Computer(QObject *parent = nullptr);

    enum Roles {
        ActiveRole = Qt::UserRole + 1,
        PassiveRole,
        ValueRole,
    };

    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role) const override;
    bool setData(const QModelIndex &index, const QVariant &value, int role) override;
    QHash<int, QByteArray> roleNames() const override;

    QString outputValue() const;
    QString regAValue() const;
    QString regBValue() const;
    QString regCValue() const;
    bool flagEqualValue() const;
    bool flagLessThanValue() const;
    bool flagGreaterThanValue() const;

    void setOutputValue(const QString& outputValue);
    void setRegAValue(const QString& regAValue);
    void setRegBValue(const QString& regBValue);
    void setRegCValue(const QString& regCValue);
    void setFlagEqualValue(bool flagEqualValue);
    void setFlagLessThanValue(bool flagLessThanValue);
    void setFlagGreaterThanValue(bool flagGreaterThanValue);

    int convertStringByteToInt(QString byteString);
    QString convertIntToStringByte(int intForByte);

signals:
    void outputValueChanged();
    void regAValueChanged();
    void regBValueChanged();
    void regCValueChanged();
    void flagEqualValueChanged();
    void flagLessThanValueChanged();
    void flagGreaterThanValueChanged();

public slots:
    void startProgram();
    void resetProgram();
    void clearProgram();
    void executeInstruction();
    void executeStopInstruction();
    void executeLoadInstruction(QString cellValue);
    void executeJumpInstruction(QString cellValue);
    void executeOutInstruction(QString cellValue);
    void executeOutRegInstruction(QString cellValue);
    void executeAddInstruction(QString cellValue);
    void executeCmpInstruction(QString cellValue);
    void executeJumpIfInstruction(QString cellValue);

private:
    QVector<RamCell> ramCells;
    QTimer ramTimer;
    int programCounter;
    int previousRow;
    int currentRow;
    QString m_outputValue;
    QString m_regAValue;
    QString m_regBValue;
    QString m_regCValue;
    bool m_flagEqualValue;
    bool m_flagLessThanValue;
    bool m_flagGreaterThanValue;
};

#endif // COMPUTER_H
