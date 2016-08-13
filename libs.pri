
linux-g++ {
    SUB_LIB = "linux"
}

linux-g++-32 {
    SUB_LIB = "linux"
}
linux-g++-64 {
    SUB_LIB = "linux"
}

macx {
    SUB_LIB = "macx"
}

win32 {
    SUB_LIB = "win32"
}

FREETYPE_DIR = "$PWD/freetype/freetype-2.4.6"
#LIBS        += "-L$$PWD/freetype/lib/$$SUB_LIB" "-lfreetype"
# no INCLUDEPATH, freetype is not used directly

LIBS        += "-Lthirdparty/quazip" "-lquazip"
LIBS        += "-Lthirdparty/xpdf" "-lxpdf"

#XPDF_DIR     = "$$PWD/xpdf/xpdf-3.03"
#INCLUDEPATH += "$$XPDF_DIR"
#INCLUDEPATH += "$$XPDF_DIR/goo"
#INCLUDEPATH += "$$XPDF_DIR/splash"


linux-g++ {
    LIBS        += -lpaper -lt1
}
linux-g++-32 {
    LIBS        += -lpaper -lt1
}
linux-g++-64 {
    LIBS        += -lpaper -lt1
}

win32 {
    LIBS        += "-L$$PWD/openssl/0.9.8i/lib/VC/static" "-llibeay32MD"
    INCLUDEPATH += "$$PWD/openssl/0.9.8i/include"

    LIBS        += "-Lthirdparty/zlib" "-lzlib"
    INCLUDEPATH += "$$PWD/zlib/zlib-1.2.8"

    LIBS        += "-lWmvcore"
    LIBS        += "-lWinmm"

	# need those link if we want to change default printer and print usind shell command
    LIBS        += "-L$$PWD/microsoft/lib" "-lWinspool"
    LIBS        += "-L$$PWD/microsoft/lib" "-lshell32"


}

macx {
    LIBS         += "-framework QuickTime"
    LIBS         += "-framework QuartzCore"
    LIBS         += "-framework AudioToolbox"
    LIBS         += "-framework CoreAudio"
    LIBS         += "-framework ApplicationServices"
    LIBS         += "-framework Carbon"

    LIBS         += "-lcrypto"
    LIBS         += "$$PWD/unsanity/ape/APELite.o"
    INCLUDEPATH  += "$$PWD/unsanity/ape"
}

