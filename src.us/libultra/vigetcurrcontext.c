/* Reference: reference/ultralib/src/io/vigetcurrcontext.c (libultra 2.0I). */
#define BUILD_VERSION 6
#include "bindings.h"
#include "PR/os_version.h"
#include "PR/os_internal.h"
#include "PRinternal/viint.h"

// TODO: this comes from a header
#ident "$Revision: 1.17 $"

__OSViContext* __osViGetCurrentContext(void) {
    return __osViCurr;
}
