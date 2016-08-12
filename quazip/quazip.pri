SRC = $$PWD/quazip-0.3
#DEPENDPATH   += $$PWD/../zlib-1.2.3/include \
#INCLUDEPATH  += $$PWD/../zlib/1.2.3/include \
DEPENDPATH    += $$SRC
INCLUDEPATH   += $$SRC

HEADERS += $$SRC/crypt.h \
           $$SRC/ioapi.h \
           $$SRC/quazip.h \
           $$SRC/quazipfile.h \
           $$SRC/quazipfileinfo.h \
           $$SRC/quazipnewinfo.h \
           $$SRC/unzip.h \
           $$SRC/zip.h
#           $$PWD/../zlib/1.2.3/include/zlib.h

macx {
   LIBS *= -lz
}
win32 {
   LIBS *= "-L$$PWD/../zlib/1.2.3/lib" "-lzlib"
}
linux-g++ {
   LIBS *= -lz
}
linux-g++-32 {
   LIBS *= -lz
}
linux-g++-64 {
   LIBS *= -lz
}
