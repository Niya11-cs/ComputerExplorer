#ifndef RAM_MODEL_H
#define RAM_MODEL_H

#include <QTimer>
#include <QObject>
#include <QAbstractListModel>
#include <QRegularExpression>

static const int RAM_ROWS_COUNT = 16;
static const int RAM_COLS_COUNT = 2;

static const QRegularExpression stopInstrRegex("^STOP!$");
static const QRegularExpression outInstrRegex("^OUT [01]{4}$");

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
    void setOutputValue(const QString& outputValue);

    void executeStopInstruction();
    void executeOutInstruction(const QString& outStr);

signals:
    void outputValueChanged();

public slots:
    void startProgram();
    void executeInstruction();
private:
    QVector<RamCell> ramCells;
    QTimer ramTimer;
    int programCounter;
    int currentRow;
    QString m_outputValue;
};

#endif // RAM_MODEL_H
