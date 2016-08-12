TEMPLATE = lib

CONFIG  += staticlib

SRC = $$PWD/quazip-0.3

linux-g++-64 {
     CONFIG += create_prl
}
macx {
    QMAKE_MACOSX_DEPLOYMENT_TARGET = "10.8"
}

#DEPENDPATH  += .
#INCLUDEPATH += . \
#               "$$PWD/../zlib/1.2.3" \
#               "$$PWD/../zlib/1.2.3/include"

#HEADERS += "$$PWD/../zlib/1.2.3/include/zlib.h" \
HEADERS += $$SRC/crypt.h \
           $$SRC/ioapi.h \
           $$SRC/quazip.h \
           $$SRC/quazipfile.h \
           $$SRC/quazipfileinfo.h \
           $$SRC/quazipnewinfo.h \
           $$SRC/unzip.h \
           $$SRC/zip.h

SOURCES += $$SRC/ioapi.c \
           $$SRC/quazip.cpp \
           $$SRC/quazipfile.cpp \
           $$SRC/quazipnewinfo.cpp\
           $$SRC/unzip.c \
           $$SRC/zip.c

