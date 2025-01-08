#ifndef RAM_MODEL_H
#define RAM_MODEL_H

#include <QTimer>
#include <QObject>
#include <QAbstractListModel>

static const int RAM_ROWS_COUNT = 16;
static const int RAM_COLS_COUNT = 2;


struct RamCell {
    bool active;
};

Q_DECLARE_METATYPE(RamCell)

class RamModel : public QAbstractListModel
{
    Q_OBJECT
public:
    RamModel(QObject *parent = nullptr);

    enum Roles {
        ActiveRole = Qt::UserRole + 1,
    };

    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role) const override;
    bool setData(const QModelIndex &index, const QVariant &value, int role) override;
    QHash<int, QByteArray> roleNames() const override;

public slots:
    void startProgram();
    void executeInstruction();
private:
    QVector<RamCell> ramCells;
    QTimer ramTimer;
    int programCounter;
    int currentRow;
};

#endif // RAM_MODEL_H
