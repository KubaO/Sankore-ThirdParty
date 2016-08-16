
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

XPDF_DIR     = "$$PWD/xpdf/xpdf-3.04"
INCLUDEPATH += \
    "$$XPDF_DIR" \
    "$$XPDF_DIR/.." \
    "$$XPDF_DIR/goo" \
    "$$XPDF_DIR/splash"

linux-g++ {
    LIBS        += -lpaper -lt1
}
linux-g++-32 {
    LIBS        += -lpaper -lt1
}
linux-g++-64 {
    LIBS        += -lpaper -lt1
}

PHONON_DIR      = "$$PWD/phonon/phonon-4.9.0"
INCLUDEPATH    += "$$PHONON_DIR/includes" "$$PHONON_DIR/phonon" "$$PHONON_DIR/.."

win32 {
    LIBS        += "-Lthirdparty/openssl/lib" "-llibeay32"
    INCLUDEPATH += "$$OUT_PWD/thirdparty/openssl/include"

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

    DEFINES      += MACOS # needed by xpdf
}

