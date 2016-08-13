#ifndef XPDF_ACONF_H_SANKORE
#define XPDF_ACONF_H_SANKORE

#ifdef WIN32
#include "aconf-win32.h"
#undef UNICODE
#endif

#ifdef MACOS
#include "aconf.h.in"
#endif

#endif
