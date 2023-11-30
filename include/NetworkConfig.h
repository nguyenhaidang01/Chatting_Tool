#ifndef NETWORKCONFIG
#define NETWORKCONFIG

#include <QObject>
#include <QDebug>

class NetworkConfig : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString ip READ ip WRITE setIp NOTIFY ipChanged)
    Q_PROPERTY(int port READ port WRITE setPort NOTIFY portChanged)
    Q_PROPERTY(QString userName READ userName WRITE setUserName NOTIFY userNameChanged)
public:
    explicit NetworkConfig(QObject *parent = nullptr);

    QString ip() const;
    void setIp(const QString &newIp);

    int port() const;
    void setPort(const int &newPort);

    QString userName() const;
    void setUserName(const QString &newUserName);

signals:
    void ipChanged();
    void portChanged();
    void userNameChanged();

private:
    QString m_ip;
    int m_port;
    QString m_userName;
};

#endif // NETWORKCONFIG
