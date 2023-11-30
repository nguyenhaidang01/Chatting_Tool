#include "NetworkConfig.h"

NetworkConfig::NetworkConfig(QObject *parent)
    : QObject{parent}, m_ip{"127.0.0.1"}, m_port{8080}, m_userName{"Dang Nguyen"}
{
}

QString NetworkConfig::ip() const
{
    return m_ip;
}

void NetworkConfig::setIp(const QString &newIp)
{
    if (m_ip == newIp)
        return;
    m_ip = newIp;
    qDebug() << "NetworkConfig::new IP: "<<newIp;
    emit ipChanged();
}

int NetworkConfig::port() const
{
    return m_port;
}

void NetworkConfig::setPort(const int &newPort)
{
    if (m_port == newPort)
        return;
    m_port = newPort;
    qDebug() << "NetworkConfig::new Port: "<<newPort;
    emit portChanged();
}

QString NetworkConfig::userName() const
{
    return m_userName;
}

void NetworkConfig::setUserName(const QString &newUserName)
{
    if (m_userName == newUserName)
        return;
    m_userName = newUserName;
    qDebug() << "NetworkConfig::new UserName: "<<newUserName;
    emit userNameChanged();
}
