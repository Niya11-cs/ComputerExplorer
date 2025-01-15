#ifndef RAM_MODEL_H
#define RAM_MODEL_H

#include <QTimer>
#include <QObject>
#include <QAbstractListModel>

static const int RAM_ROWS_COUNT = 16;
static const int RAM_COLS_COUNT = 2;


struct RamCell {
    bool active;
    bool passive;
    QString value;
};

Q_DECLARE_METATYPE(RamCell)

class RamModel : public QAbstractListModel
{
    Q_OBJECT
    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
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

    QString name() const { return m_name; }
    void setName(const QString &name) {
        if (m_name != name) {
            m_name = name;
            emit nameChanged();
        }
    }

signals:
    void nameChanged();

public slots:
    void startProgram();
    void executeInstruction();
private:
    QVector<RamCell> ramCells;
    QTimer ramTimer;
    int programCounter;
    int currentRow;
    QString m_name = "1000";
};

#endif // RAM_MODEL_H
