#include <QDebug>
#include <QDateTime>
#include <QSqlQuery>
#include <QSqlError>

#include "kidbrowser.h"

KidBrowser::KidBrowser() {
    m_database = QSqlDatabase::addDatabase("QSQLITE");

    if (!m_database.open()) {
        qDebug() << "Failed to open database";
    }

    // TODO check for failures
    m_database.exec("CREATE TABLE IF NOT EXISTS blacklist(id INTEGER PRIMARY KEY, domain TEXT, datetime DATETIME)");
    m_database.exec("CREATE TABLE IF NOT EXISTS whitelist(id INTEGER PRIMARY KEY, domain TEXT, datetime DATETIME)");
    m_database.exec("CREATE TABLE IF NOT EXISTS history(id INTEGER PRIMARY KEY, url TEXT, title TEXT, datetime DATETIME)");

    // TODO make this the real homepage
    if (!isWhitelisted("ubuntu.com")) {
        addWhitelist("ubuntu.com");
    }
}

bool KidBrowser::isBlacklisted(QString domain) {
    QString sql = QString("SELECT COUNT(id) AS count FROM blacklist where domain='%1'").arg(domain);
    QSqlQuery q(sql);

    return (
        q.next() &&
        q.value("count").toInt() > 0
    );
}

bool KidBrowser::isWhitelisted(QString domain) {
    QString sql = QString("SELECT COUNT(id) AS count FROM whitelist where domain='%1'").arg(domain);
    QSqlQuery q(sql);

    return (
        q.next() &&
        q.value("count").toInt() > 0
    );
}

void KidBrowser::addBlacklist(QString domain) {
    QDateTime now = QDateTime::currentDateTime();
    QString sql = QString("INSERT INTO blacklist VALUES(NULL, '%1', '%2')")
        .arg(domain)
        .arg(now.toString("yyyy-MM-dd hh:mm:ss"));

    QSqlQuery q(sql);
    if (!q.exec()) {
        qDebug() << "Failed to insert into blacklist" << q.lastError();
    }
}

void KidBrowser::addWhitelist(QString domain) {
    QDateTime now = QDateTime::currentDateTime();
    QString sql = QString("INSERT INTO whitelist VALUES(NULL, '%1', '%2')")
        .arg(domain)
        .arg(now.toString("yyyy-MM-dd hh:mm:ss"));

    QSqlQuery q(sql);
    if (!q.exec()) {
        qDebug() << "Failed to insert into whitelist" << q.lastError();
    }
}

void KidBrowser::addHistory(QString url, QString title) {
    QDateTime now = QDateTime::currentDateTime();
    QString sql = QString("INSERT INTO history VALUES(NULL, '%1', '%2' '%3')")
        .arg(url)
        .arg(title)
        .arg(now.toString("yyyy-MM-dd hh:mm:ss"));

    QSqlQuery q(sql);
    if (!q.exec()) {
        qDebug() << "Failed to insert into history" << q.lastError();
    }
}
