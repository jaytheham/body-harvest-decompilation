#ifndef STDDEF_H
#define STDDEF_H

#include "PR/ultratypes.h"

#if defined(__SIZE_TYPE__) && !defined(_MIPS_SZLONG)
typedef __SIZE_TYPE__ size_t;
#endif

#ifndef offsetof
#define offsetof(st, m) ((size_t)&(((st *)0)->m))
#endif

#endif
