#ifndef RAMMODEL_H
#define RAMMODEL_H

#include <QAbstractListModel>
#include <QTimer>

static const int RAM_ROWS_COUNT = 16;
static const int RAM_COLS_COUNT = 2;

struct RamCell {
    bool active;
};

class RamModel : public QAbstractListModel {
    Q_OBJECT
public:
    explicit RamModel(QObject *parent = nullptr);

    enum Roles {
        ActiveRole = Qt::UserRole + 1
    };

    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role) const override;
    bool setData(const QModelIndex &index, const QVariant &value, int role) override;
    QHash<int, QByteArray> roleNames() const override;

public slots:
    void startProgram();

private:
    QVector<RamCell> ramCells;
    QTimer* timer;
    int currentRow;
};

#endif // RAMMODEL_H
