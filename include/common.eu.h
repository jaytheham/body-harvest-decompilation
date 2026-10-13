#ifndef COMMON_EU_H
#define COMMON_EU_H

/* The PAL (EU) release uses the declarations of the NA (US) one: the same functions and data exist in both and only
 * their addresses differ, which symbol_addrs.eu.txt and ld_symbols.eu.h supply. The *.eu.h files are for anything
 * that exists in the PAL release only. */
#include "structs.h"
#include "functions.h"
#include "variables.h"

#include "structs.us.h"
#include "functions.us.h"
#include "overlay_level/greece/18D7E0.h"
#include "overlay_level/java/1ED9E0.h"
#include "overlay_level/america/254410.h"
#include "overlay_level/siberia/2B7100.h"
#include "overlay_level/comet/318E20.h"
#include "variables.us.h"

#include "structs.eu.h"
#include "functions.eu.h"
#include "variables.eu.h"
#include "ld_symbols.eu.h"

#endif
