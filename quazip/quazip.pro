LEVEL = ..
TEMPLATE = lib
CONFIG += staticlib
CONFIG += warn_off

SRC = $$PWD/quazip-0.3

linux-g++-64 {
     CONFIG += create_prl
}
macx {
    QMAKE_MACOSX_DEPLOYMENT_TARGET = "10.8"
}
win32 {
    DEFINES     += _CRT_SECURE_NO_WARNINGS
    LIBS        += "-Lthirdparty/zlib" "-lzlib"
    DEPENDPATH  += "$$PWD/$$LEVEL/zlib/zlib-1.2.8"
    INCLUDEPATH += "$$PWD/$$LEVEL/zlib/zlib-1.2.8"
}

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

