TEMPLATE = lib
CONFIG += staticlib
TARGET = phonon
QT += widgets

SRC = $$PWD/phonon-4.9.0

DEFINES += \
    PHONON_EXPORT= \
    PHONON_BACKEND_DIR_SUFFIX=QString()

win32:DEFINES += \
    GL_GLEXT_PROTOTYPES

## FIXME
DEFINES += glActiveTexture(arg)

DEPENDPATH  += $$PWD $$SRC/phonon
INCLUDEPATH += $$PWD $$SRC/phonon
HEADERS += $$SRC/phonon/abstractaudiooutput.h \
           $$SRC/phonon/abstractaudiooutput_p.h \
           $$SRC/phonon/abstractmediastream.h \
           $$SRC/phonon/abstractmediastream_p.h \
           $$SRC/phonon/abstractvideooutput.h \
           $$SRC/phonon/abstractvideooutput_p.h \
           $$SRC/phonon/addoninterface.h \
           $$SRC/phonon/audiodataoutput.h \
           $$SRC/phonon/audiodataoutput_p.h \
           $$SRC/phonon/audiodataoutputinterface.h \
           $$SRC/phonon/audiooutput.h \
           $$SRC/phonon/audiooutput_p.h \
           $$SRC/phonon/audiooutputadaptor_p.h \
           $$SRC/phonon/audiooutputinterface.h \
           $$SRC/phonon/backendcapabilities.h \
           $$SRC/phonon/backendcapabilities_p.h \
           $$SRC/phonon/backendinterface.h \
           $$SRC/phonon/effect.h \
           $$SRC/phonon/effect_p.h \
           $$SRC/phonon/effectinterface.h \
           $$SRC/phonon/effectparameter.h \
           $$SRC/phonon/effectparameter_p.h \
           $$SRC/phonon/effectwidget.h \
           $$SRC/phonon/effectwidget_p.h \
           $$SRC/phonon/factory_p.h \
           $$SRC/phonon/frontendinterface_p.h \
           $$SRC/phonon/globalconfig.h \
           $$SRC/phonon/globalconfig_p.h \
           $$SRC/phonon/globaldescriptioncontainer.h \
           $$SRC/phonon/globalstatic_p.h \
           $$SRC/phonon/iodevicestream_p.h \
           $$SRC/phonon/mediacontroller.h \
           $$SRC/phonon/medianode.h \
           $$SRC/phonon/medianode_p.h \
           $$SRC/phonon/medianodedestructionhandler_p.h \
           $$SRC/phonon/mediaobject.h \
           $$SRC/phonon/mediaobject_p.h \
           $$SRC/phonon/mediaobjectinterface.h \
           $$SRC/phonon/mediasource.h \
           $$SRC/phonon/mediasource_p.h \
           $$SRC/phonon/mrl.h \
           $$SRC/phonon/objectdescription.h \
           $$SRC/phonon/objectdescription_p.h \
           $$SRC/phonon/objectdescriptionmodel.h \
           $$SRC/phonon/objectdescriptionmodel_p.h \
           $$SRC/phonon/path.h \
           $$SRC/phonon/path_p.h \
           $$SRC/phonon/phonon_export.h \
           $$SRC/phonon/phonondefs.h \
           $$SRC/phonon/phonondefs_p.h \
           $$SRC/phonon/phononnamespace_p.h \
           $$SRC/phonon/phononpimpl_p.h \
           $$SRC/phonon/platform_p.h \
           $$SRC/phonon/platformplugin.h \
           $$SRC/phonon/qsettingsgroup_p.h \
           $$SRC/phonon/seekslider.h \
           $$SRC/phonon/seekslider_p.h \
           $$SRC/phonon/statesvalidator_p.h \
           $$SRC/phonon/streaminterface.h \
           $$SRC/phonon/streaminterface_p.h \
           $$SRC/phonon/swiftslider_p.h \
           $$SRC/phonon/videoplayer.h \
           $$SRC/phonon/videowidget.h \
           $$SRC/phonon/videowidget_p.h \
           $$SRC/phonon/videowidgetinterface.h \
           $$SRC/phonon/volumefadereffect.h \
           $$SRC/phonon/volumefadereffect_p.h \
           $$SRC/phonon/volumefaderinterface.h \
           $$SRC/phonon/volumeslider.h \
           $$SRC/phonon/volumeslider_p.h \
           $$SRC/phonon/graphicsview/abstractvideographicspainter.h \
           $$SRC/phonon/graphicsview/glpainter.h \
           $$SRC/phonon/graphicsview/glslpainter.h \
           $$SRC/phonon/graphicsview/qpainterpainter.h \
           $$SRC/phonon/graphicsview/videoframe.h \
           $$SRC/phonon/graphicsview/videographicsobject.h \
           $$SRC/phonon/graphicsview/videographicsobjectinterface.h \
           $$SRC/phonon/volumefadereffect.h \
           $$SRC/phonon/graphicsview/videographicsobject.h

PULSE_HDR= $$SRC/phonon/pulsestream_p.h
           $$SRC/phonon/pulsesupport.h \

SOURCES += $$SRC/phonon/abstractaudiooutput.cpp \
           $$SRC/phonon/abstractaudiooutput_p.cpp \
           $$SRC/phonon/abstractmediastream.cpp \
           $$SRC/phonon/abstractvideooutput.cpp \
           $$SRC/phonon/abstractvideooutput_p.cpp \
           $$SRC/phonon/audiodataoutput.cpp \
           $$SRC/phonon/audiooutput.cpp \
           $$SRC/phonon/audiooutputadaptor.cpp \
           $$SRC/phonon/audiooutputinterface.cpp \
           $$SRC/phonon/backendcapabilities.cpp \
           $$SRC/phonon/effect.cpp \
           $$SRC/phonon/effectparameter.cpp \
           $$SRC/phonon/effectwidget.cpp \
           $$SRC/phonon/factory.cpp \
           $$SRC/phonon/globalconfig.cpp \
           $$SRC/phonon/iodevicestream.cpp \
           $$SRC/phonon/mediacontroller.cpp \
           $$SRC/phonon/medianode.cpp \
           $$SRC/phonon/mediaobject.cpp \
           $$SRC/phonon/mediasource.cpp \
           $$SRC/phonon/mrl.cpp \
           $$SRC/phonon/objectdescription.cpp \
           $$SRC/phonon/objectdescriptionmodel.cpp \
           $$SRC/phonon/path.cpp \
           $$SRC/phonon/phononnamespace.cpp \
           $$SRC/phonon/platform.cpp \
           $$SRC/phonon/seekslider.cpp \
           $$SRC/phonon/statesvalidator.cpp \
           $$SRC/phonon/streaminterface.cpp \
           $$SRC/phonon/swiftslider.cpp \
           $$SRC/phonon/videoplayer.cpp \
           $$SRC/phonon/videowidget.cpp \
           $$SRC/phonon/volumefadereffect.cpp \
           $$SRC/phonon/volumeslider.cpp \
           $$SRC/phonon/graphicsview/glpainter.cpp \
           $$SRC/phonon/graphicsview/glslpainter.cpp \
           $$SRC/phonon/graphicsview/qpainterpainter.cpp \
           $$SRC/phonon/graphicsview/videographicsobject.cpp
		   
PULSE_SRC= $$SRC/phonon/pulsestream.cpp \
           $$SRC/phonon/pulsesupport.cpp \
