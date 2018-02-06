#ifndef KIDBROWSER_H
#define KIDBROWSER_H

#include <QObject>
#include <QSqlDatabase>

class KidBrowser: public QObject {
    Q_OBJECT

public:
    KidBrowser();
    ~KidBrowser() = default;

    Q_INVOKABLE bool isBlacklisted(QString domain);
    Q_INVOKABLE bool isWhitelisted(QString domain);
    Q_INVOKABLE void addBlacklist(QString domain);
    Q_INVOKABLE void addWhitelist(QString domain);
    Q_INVOKABLE void addHistory(QString url, QString title);

private:
    QSqlDatabase m_database;
};

#endif
