#ifndef URLRECORD_H
#define URLRECORD_H

#include <QObject>
#include <QString>
#include <QDateTime>

class URLRecord: public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString url READ url CONSTANT)
    Q_PROPERTY(QString title READ title CONSTANT)
    Q_PROPERTY(QDateTime datetime READ datetime CONSTANT)

public:
    URLRecord(QObject *parent=Q_NULLPTR);
    URLRecord(QString url, QString title, QDateTime datetime, QObject *parent=Q_NULLPTR);
    URLRecord(QString url, QDateTime datetime, QObject *parent=Q_NULLPTR);
    ~URLRecord() = default;

    QString url() const;
    QString title() const;
    QDateTime datetime() const;

private:
    QString m_url;
    QString m_title;
    QDateTime m_datetime;
};

#endif
