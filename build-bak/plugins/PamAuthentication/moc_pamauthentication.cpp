/****************************************************************************
** Meta object code from reading C++ file 'pamauthentication.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.4.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../plugins/PamAuthentication/pamauthentication.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'pamauthentication.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.4.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_PamAuthentication_t {
    QByteArrayData data[7];
    char stringdata[100];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_PamAuthentication_t, stringdata) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_PamAuthentication_t qt_meta_stringdata_PamAuthentication = {
    {
QT_MOC_LITERAL(0, 0, 17), // "PamAuthentication"
QT_MOC_LITERAL(1, 18, 18), // "serviceNameChanged"
QT_MOC_LITERAL(2, 37, 0), // ""
QT_MOC_LITERAL(3, 38, 21), // "requireAuthentication"
QT_MOC_LITERAL(4, 60, 21), // "validatePasswordToken"
QT_MOC_LITERAL(5, 82, 5), // "token"
QT_MOC_LITERAL(6, 88, 11) // "serviceName"

    },
    "PamAuthentication\0serviceNameChanged\0"
    "\0requireAuthentication\0validatePasswordToken\0"
    "token\0serviceName"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_PamAuthentication[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       1,   34, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   29,    2, 0x06 /* Public */,

 // methods: name, argc, parameters, tag, flags
       3,    0,   30,    2, 0x02 /* Public */,
       4,    1,   31,    2, 0x02 /* Public */,

 // signals: parameters
    QMetaType::Void,

 // methods: parameters
    QMetaType::Bool,
    QMetaType::Bool, QMetaType::QString,    5,

 // properties: name, type, flags
       6, QMetaType::QString, 0x00495103,

 // properties: notify_signal_id
       0,

       0        // eod
};

void PamAuthentication::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        PamAuthentication *_t = static_cast<PamAuthentication *>(_o);
        switch (_id) {
        case 0: _t->serviceNameChanged(); break;
        case 1: { bool _r = _t->requireAuthentication();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 2: { bool _r = _t->validatePasswordToken((*reinterpret_cast< const QString(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (PamAuthentication::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&PamAuthentication::serviceNameChanged)) {
                *result = 0;
            }
        }
    }
}

const QMetaObject PamAuthentication::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_PamAuthentication.data,
      qt_meta_data_PamAuthentication,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *PamAuthentication::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *PamAuthentication::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_PamAuthentication.stringdata))
        return static_cast<void*>(const_cast< PamAuthentication*>(this));
    return QObject::qt_metacast(_clname);
}

int PamAuthentication::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
#ifndef QT_NO_PROPERTIES
      else if (_c == QMetaObject::ReadProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = serviceName(); break;
        default: break;
        }
        _id -= 1;
    } else if (_c == QMetaObject::WriteProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: setServiceName(*reinterpret_cast< QString*>(_v)); break;
        default: break;
        }
        _id -= 1;
    } else if (_c == QMetaObject::ResetProperty) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 1;
    } else if (_c == QMetaObject::RegisterPropertyMetaType) {
        if (_id < 1)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 1;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void PamAuthentication::serviceNameChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, Q_NULLPTR);
}
QT_END_MOC_NAMESPACE
