#ifndef COMMON_EU_H
#define COMMON_EU_H

/* Everything shared by both releases goes in the common headers. Only
 * declarations that exist in one release and not the other belong in the
 * per-region files below, and only the addresses differ between releases:
 * they are supplied by ld_symbols.eu.h. */
#include "structs.h"
#include "functions.h"
#include "variables.h"

#include "overlay_level/greece/18D7E0.h"
#include "overlay_level/java/1ED9E0.h"
#include "overlay_level/america/254410.h"
#include "overlay_level/siberia/2B7100.h"
#include "overlay_level/comet/318E20.h"

#include "structs.eu.h"
#include "functions.eu.h"
#include "variables.eu.h"

#include "ld_symbols.eu.h"

#endif /* COMMON_EU_H */
