#-------------------------------------------------
#
# Project created by QtCreator 2013-07-12T09:16:08
#
#-------------------------------------------------

QT       += core gui network quick qml opengl webkitwidgets sql
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
contains(QT_VERSION, ^5\\..*\\..*) {
    QT  += v8-private gui-private core-private
}

TARGET = MyStudyDemo
TEMPLATE = app


SOURCES += main.cpp\
    qmlview.cpp

HEADERS  += \
    qmlview.h

OTHER_FILES += \
    MyMainUi.qml \
    ItextControl.qml
