#ifndef RAM_MODEL_H
#define RAM_MODEL_H

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

struct RamCell {
    bool active;
    bool passive;
    QString value;
};

Q_DECLARE_METATYPE(RamCell)

class RamModel : public QAbstractListModel
{
    Q_OBJECT
    Q_PROPERTY(QString outputValue READ outputValue WRITE setOutputValue NOTIFY outputValueChanged)
    Q_PROPERTY(QString regAValue READ regAValue WRITE setRegAValue NOTIFY regAValueChanged)
    Q_PROPERTY(QString regBValue READ regBValue WRITE setRegBValue NOTIFY regBValueChanged)
    Q_PROPERTY(QString regCValue READ regCValue WRITE setRegCValue NOTIFY regCValueChanged)

public:
    RamModel(QObject *parent = nullptr);

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

    void setOutputValue(const QString& outputValue);
    void setRegAValue(const QString& regAValue);
    void setRegBValue(const QString& regBValue);
    void setRegCValue(const QString& regCValue);

    int convertStringByteToInt(QString byteString);
    QString convertIntToStringByte(int intForByte);

signals:
    void outputValueChanged();
    void regAValueChanged();
    void regBValueChanged();
    void regCValueChanged();

public slots:
    void startProgram();
    void executeInstruction();
    void executeStopInstruction();
    void executeLoadInstruction(QString cellValue);
    void executeJumpInstruction(QString cellValue);
    void executeOutInstruction(QString cellValue);
    void executeOutRegInstruction(QString cellValue);
    void executeAddInstruction(QString cellValue);

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
};

#endif // RAM_MODEL_H
