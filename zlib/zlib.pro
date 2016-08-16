TEMPLATE = lib

CONFIG  += staticlib

SRC = $$PWD/zlib-1.2.8

win32-msvc*:DEFINES += _CRT_SECURE_NO_DEPRECATE _CRT_NONSTDC_NO_DEPRECATE

SOURCES += \
    $$SRC/adler32.c \
    $$SRC/compress.c \
    $$SRC/crc32.c \
    $$SRC/deflate.c \
    $$SRC/gzclose.c \
    $$SRC/gzlib.c \
    $$SRC/gzread.c \
    $$SRC/gzwrite.c \
    $$SRC/infback.c \
    $$SRC/inflate.c \
    $$SRC/inftrees.c \
    $$SRC/inffast.c \
    $$SRC/trees.c \
    $$SRC/uncompr.c \
    $$SRC/zutil.c

HEADERS += \
    $$SRC/crc32.h \
    $$SRC/deflate.h \
    $$SRC/gzguts.h \
    $$SRC/inffast.h \
    $$SRC/inffixed.h \
    $$SRC/inflate.h \
    $$SRC/inftrees.h \
    $$SRC/trees.h \
    $$SRC/zconf.h \
    $$SRC/zlib.h \
    $$SRC/zutil.h
