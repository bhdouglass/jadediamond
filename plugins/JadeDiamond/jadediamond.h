#ifndef JADEDIAMOND_H
#define JADEDIAMOND_H

#include <QObject>
#include <QSqlDatabase>
#include <QQmlListProperty>

#include "urlrecord.h"

class JadeDiamond: public QObject {
    Q_OBJECT

    Q_PROPERTY(QQmlListProperty<URLRecord> blacklist READ blacklist NOTIFY blacklistChanged)
    Q_PROPERTY(int blacklistCount READ blacklistCount NOTIFY blacklistChanged)
    Q_PROPERTY(QQmlListProperty<URLRecord> whitelist READ whitelist NOTIFY whitelistChanged)
    Q_PROPERTY(int whitelistCount READ whitelistCount NOTIFY whitelistChanged)
    Q_PROPERTY(QQmlListProperty<URLRecord> history READ history NOTIFY historyChanged)
    Q_PROPERTY(int historyCount READ historyCount NOTIFY historyChanged)

public:
    JadeDiamond();
    ~JadeDiamond() = default;

    Q_INVOKABLE bool isBlacklisted(QString domain);
    Q_INVOKABLE bool isWhitelisted(QString domain);
    Q_INVOKABLE void addBlacklist(QString domain);
    Q_INVOKABLE void removeBlacklist(QString domain);
    Q_INVOKABLE void addWhitelist(QString domain);
    Q_INVOKABLE void removeWhitelist(QString domain);
    Q_INVOKABLE void addHistory(QString url, QString title);

    QQmlListProperty<URLRecord> blacklist();
    int blacklistCount();
    QQmlListProperty<URLRecord> whitelist();
    int whitelistCount();
    QQmlListProperty<URLRecord> history();
    int historyCount();

Q_SIGNALS:
    void blacklistChanged();
    void whitelistChanged();
    void historyChanged();

private:
    QSqlDatabase m_database;

    QList<URLRecord *> blacklistRecords;
    QList<URLRecord *> whitelistRecords;
    QList<URLRecord *> historyRecords;
};

#endif
