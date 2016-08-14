TEMPLATE = aux
CONFIG -= debug_and_release

VER = openssl-1.0.2h
SRC = $$PWD/$$VER
DST = $$OUT_PWD/$$VER

first.depends = lib

lib.target = $$shell_path(lib/ssleay32.lib)
lib.commands = \
    cd $$VER & \
    set "PATH=$$NASM_PATH;%PATH%" & \
    nmake -f $$shell_path($$DST/ms/nt.mak) install
lib.depends = nt

nt.target = $$shell_path($$VER/ms/nt.mak)
nt.commands = cd $$VER & ms\do_nasm.bat
nt.depends = config

config.target = $$shell_path($$VER/Makefile.bak)
config.commands = cd $$VER & perl Configure VC-WIN32 --prefix=$$OUT_PWD
config.depends = copy

copy.target = $$shell_path($$VER/INSTALL)
copy.commands = \
    mkdir $$shell_path($$DST) & \
    xcopy /E /Y $$shell_path($$SRC) $$shell_path($$DST)

QMAKE_EXTRA_TARGETS += first lib nt config copy
