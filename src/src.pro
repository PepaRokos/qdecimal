#
#
#
include(../common.pri)

QT -= gui
QT += core
TEMPLATE = lib

# Pick if the library will be static or dynamic:
CONFIG += static
# or dynamic (don't forget to define QDECIMAL_SHARED
#CONFIG += shared
#DEFINES += QDECIMAL_SHARED=2
# 1=import, client app, 2=export, source shared library (here)


TARGET = qdecimal
DEPENDPATH += .
# To include decnumber headers
INCLUDEPATH += $$PWD/../decnumber
DESTDIR = $$OUT_PWD/../lib
LIBS += -L$$OUT_PWD/../lib -ldecnumber 

# Input
HEADERS += QDecContext.hh \
           QDecDouble.hh  \
           QDecPacked.hh  \
           QDecNumber.hh  \
           QDecSingle.hh  \
           QDecQuad.hh 

SOURCES += QDecContext.cc \
           QDecDouble.cc  \
           QDecPacked.cc  \
           QDecNumber.cc  \
           QDecSingle.cc  \
           QDecQuad.cc 
