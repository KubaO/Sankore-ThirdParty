/* Phonon definitions from CMake */

#ifndef PHONONCONFIG_H_P
#define PHONONCONFIG_H_P

#include <QtCore/qfeatures.h>

/** Whether to build with D-Bus support */
#define PHONON_NO_DBUS 1

/** If QT_NO_DBUS is defined, always set PHONON_NO_DBUS */
#if !defined(PHONON_NO_DBUS) && defined(QT_NO_DBUS)
#define PHONON_NO_DBUS 1
#endif

#endif // PHONONCONFIG_H_P
