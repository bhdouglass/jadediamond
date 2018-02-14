#include "urlrecord.h"

URLRecord::URLRecord(QObject *parent) :
    QObject(parent)
{
    m_url = "";
    m_title = "";
    m_datetime = QDateTime::currentDateTime();
}

URLRecord::URLRecord(QString url, QString title, QDateTime datetime, QObject *parent) :
    QObject(parent)
{
    m_url = url;
    m_title = title;
    m_datetime = datetime;
}

URLRecord::URLRecord(QString url, QDateTime datetime, QObject *parent) :
    QObject(parent)
{
    m_url = url;
    m_title = "";
    m_datetime = datetime;
}

QString URLRecord::url() const {
    return m_url;
}

QString URLRecord::title() const {
    return m_title;
}

QDateTime URLRecord::datetime() const {
    return m_datetime;
}
