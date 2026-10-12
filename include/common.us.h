#ifndef COMMON_US_H
#define COMMON_US_H

/* Everything shared by both releases goes in the common headers. Only
 * declarations that exist in one release and not the other belong in the
 * per-region files below, and only the addresses differ between releases:
 * they are supplied by ld_symbols.us.h. */
#include "structs.h"
#include "functions.h"
#include "variables.h"

#include "overlay_level/greece/18D7E0.h"
#include "overlay_level/java/1ED9E0.h"
#include "overlay_level/america/254410.h"
#include "overlay_level/siberia/2B7100.h"
#include "overlay_level/comet/318E20.h"

#include "structs.us.h"
#include "functions.us.h"
#include "variables.us.h"

#include "ld_symbols.us.h"

#endif /* COMMON_US_H */
