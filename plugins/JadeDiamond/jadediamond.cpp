#include <QDebug>
#include <QDateTime>
#include <QSqlQuery>
#include <QSqlError>
#include <QStandardPaths>

#include "jadediamond.h"

JadeDiamond::JadeDiamond() {
    m_database = QSqlDatabase::addDatabase("QSQLITE");
    QString path = QStandardPaths::writableLocation(QStandardPaths::DataLocation) + "/jadediamond.sqlite";
    qDebug() << "Database at" << path;
    m_database.setDatabaseName(path);

    if (!m_database.open()) {
        qDebug() << "Failed to open database";
    }

    // TODO check for failures
    m_database.exec("CREATE TABLE IF NOT EXISTS blacklist(id INTEGER PRIMARY KEY, domain TEXT, datetime DATETIME)");
    m_database.exec("CREATE TABLE IF NOT EXISTS whitelist(id INTEGER PRIMARY KEY, domain TEXT, datetime DATETIME)");
    m_database.exec("CREATE TABLE IF NOT EXISTS history(id INTEGER PRIMARY KEY, url TEXT, title TEXT, datetime DATETIME)");
}

bool JadeDiamond::isBlacklisted(QString domain) {
    QString sql = QString("SELECT COUNT(id) AS count FROM blacklist where domain='%1'").arg(domain);
    QSqlQuery q(sql);

    return (
        q.next() &&
        q.value("count").toInt() > 0
    );
}

bool JadeDiamond::isWhitelisted(QString domain) {
    QString sql = QString("SELECT COUNT(id) AS count FROM whitelist where domain='%1'").arg(domain);
    QSqlQuery q(sql);

    return (
        q.next() &&
        q.value("count").toInt() > 0
    );
}

void JadeDiamond::addBlacklist(QString domain) {
    qDebug() << "Adding to blacklist" << domain;

    QDateTime now = QDateTime::currentDateTime();
    QString sql = QString("INSERT INTO blacklist VALUES(NULL, '%1', '%2')")
        .arg(domain)
        .arg(now.toString("yyyy-MM-dd hh:mm:ss"));

    QSqlQuery q;
    if (!q.exec(sql)) {
        qDebug() << "Failed to insert into blacklist" << q.lastError();
    }

    Q_EMIT blacklistChanged();
}

void JadeDiamond::removeBlacklist(QString domain) {
    qDebug() << "Removing from blacklist" << domain;

    QString sql = QString("DELETE FROM blacklist WHERE domain='%1'").arg(domain);
    QSqlQuery q;
    if (!q.exec(sql)) {
        qDebug() << "Failed to remove from blacklist" << q.lastError();
    }

    Q_EMIT blacklistChanged();
}

void JadeDiamond::addWhitelist(QString domain) {
    qDebug() << "Adding to whitelist" << domain;

    QDateTime now = QDateTime::currentDateTime();
    QString sql = QString("INSERT INTO whitelist VALUES(NULL, '%1', '%2')")
        .arg(domain)
        .arg(now.toString("yyyy-MM-dd hh:mm:ss"));

    QSqlQuery q;
    if (!q.exec(sql)) {
        qDebug() << "Failed to insert into whitelist" << q.lastError();
    }

    Q_EMIT whitelistChanged();
}

void JadeDiamond::removeWhitelist(QString domain) {
    qDebug() << "Removing from whitelist" << domain;

    QString sql = QString("DELETE FROM whitelist WHERE domain='%1'").arg(domain);
    QSqlQuery q;
    if (!q.exec(sql)) {
        qDebug() << "Failed to remove from whitelist" << q.lastError();
    }

    Q_EMIT whitelistChanged();
}

void JadeDiamond::addHistory(QString url, QString title) {
    QDateTime now = QDateTime::currentDateTime();
    QString sql = QString("INSERT INTO history VALUES(NULL, '%1', '%2', '%3')")
        .arg(url)
        .arg(title)
        .arg(now.toString("yyyy-MM-dd hh:mm:ss"));

    QSqlQuery q;
    if (!q.exec(sql)) {
        qDebug() << "Failed to insert into history" << q.lastError();
    }
    //TODO limit size

    Q_EMIT historyChanged();
}


QQmlListProperty<URLRecord> JadeDiamond::blacklist() {
    blacklistRecords.clear();

    QSqlQuery query("SELECT * FROM blacklist ORDER BY datetime");
    while (query.next()) {
        URLRecord *record = new URLRecord(
            query.value("domain").toString(),
            QDateTime::fromString(query.value("datetime").toString(), "yyyy-MM-dd hh:mm:ss"),
            this
        );

        blacklistRecords.append(record);
    }

    return QQmlListProperty<URLRecord>(this, blacklistRecords);
}

int JadeDiamond::blacklistCount() {
    QString sql = QString("SELECT COUNT(id) AS count FROM blacklist");
    QSqlQuery q(sql);

    if (q.next()) {
        return q.value("count").toInt();
    }

    return 0;
}

QQmlListProperty<URLRecord> JadeDiamond::whitelist() {
    whitelistRecords.clear();

    QSqlQuery query("SELECT * FROM whitelist ORDER BY domain");
    while (query.next()) {
        URLRecord *record = new URLRecord(
            query.value("domain").toString(),
            QDateTime::fromString(query.value("datetime").toString(), "yyyy-MM-dd hh:mm:ss"),
            this
        );

        whitelistRecords.append(record);
    }

    return QQmlListProperty<URLRecord>(this, whitelistRecords);
}

int JadeDiamond::whitelistCount() {
    QString sql = QString("SELECT COUNT(id) AS count FROM whitelist");
    QSqlQuery q(sql);

    if (q.next()) {
        return q.value("count").toInt();
    }

    return 0;
}

QQmlListProperty<URLRecord> JadeDiamond::history() {
    historyRecords.clear();

    QSqlQuery query("SELECT * FROM history ORDER BY datetime DESC");
    while (query.next()) {
        URLRecord *record = new URLRecord(
            query.value("url").toString(),
            query.value("title").toString(),
            QDateTime::fromString(query.value("datetime").toString(), "yyyy-MM-dd hh:mm:ss"),
            this
        );

        historyRecords.append(record);
    }

    return QQmlListProperty<URLRecord>(this, historyRecords);
}

int JadeDiamond::historyCount() {
    QString sql = QString("SELECT COUNT(id) AS count FROM history");
    QSqlQuery q(sql);

    if (q.next()) {
        return q.value("count").toInt();
    }

    return 0;
}
