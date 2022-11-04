
Class object; // 声明对象
objext.method();
声明的object在stack上，自动析构释放资源
调用字段和和方法使用.

Class *object = new Class();// new出来对象
objext->method();
new出来的object在heap上，需要手动delete释放资源
调用字段和和方法使用->


--------------------------------------------------------------------------------------------------


QString 存储字符串釆用的是 Unicode 码，每一个字符是一个 16 位的 QChar，
而不是 8 位的 char，QString 处理中文字符没有问题，一个汉字算作是一个字符。


--------------------------------------------------------------------------------------------------

qt console
控制台项目

Projects -> Run -> Run in terminal

qt_console.pro:
QT -= gui

CONFIG += c++11 console
CONFIG -= app_bundle


--------------------------------------------------------------------------------------------------



qt widgets
图像化项目


槽slot
事件event

--------------------------------------------------------------------------------------------------

qt database
数据库项目

qt_database.pro:
QT += sql




MySQL动态库和静态库路径MYSQL_HOME/lib/
拷贝MySQL动态库(dll,dylib)到QT_HOME/bin

Qt数据库驱动路径
QT_HOME/plugins/sqldrivers/
qsqlite.dll
libqsqlite.dylib

Qt<5.13.0自带MySQL数据库驱动

使用qt源码编译qsqlmysql动态库

Src\qtbase\src\plugins\sqldrivers\mysql


mysql.pro:
TARGET = qsqlmysql

HEADERS += $$PWD/qsql_mysql_p.h
SOURCES += $$PWD/qsql_mysql.cpp $$PWD/main.cpp

DESTDIR = $$PWD/lib  #添加目标路径
#QMAKE_USE += mysql  #注意要注释掉

OTHER_FILES += mysql.json

PLUGIN_CLASS_NAME = QMYSQLDriverPlugin
include(../qsqldriverbase.pri)

# MySQL配置
MYSQL_HOME =
LIBS += -L $${MYSQL_HOME}/lib -llibmysql
INCLUDEPATH += $${MYSQL_HOME}/include



