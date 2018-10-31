#
#
#
include(../common.pri)

QT -= gui
QT += core
TEMPLATE = app
QT  += testlib 

TARGET = qdecimal_test
DESTDIR = $$OUT_PWD/../bin
DEPENDPATH += .
INCLUDEPATH += $$PWD/../decnumber $$PWD/../src
LIBS += -L$${OUT_PWD}/../lib -lqdecimal -ldecnumber

# Input
HEADERS += QDecNumberTests.hh
SOURCES += QDecNumberTests.cc Main.cc
