#ifndef COMMON_EU_H
#define COMMON_EU_H

#include "structs.h"
#include "functions.h"
#include "variables.h"

#include "structs.eu.h"
#include "functions.eu.h"
#include "variables.eu.h"

/* Declarations are version independent. variables.na.h, functions.na.h and
 * structs.na.h contain nothing but extern declarations, prototypes and
 * typedefs -- addresses live in ld_symbols.eu.h, not here -- so a source file
 * shared from the NA tree needs the same declarations on both sides. EU kept
 * these empty only while every EU C file was a GLOBAL_ASM stub that referenced
 * nothing.
 *
 * The overlay_level headers moved here from src.na/overlay_level for the same
 * reason: they are prototypes. EU carries its level overlays as bin blobs, so
 * it defines none of these functions itself and has no EU-named equivalents;
 * the addresses come from undefined_syms.eu.txt. Keeping them in src.na would
 * mean EU could not reach them without an -Isrc.na flag.
 */
#include "structs.na.h"
#include "functions.na.h"
#include "variables.na.h"

#include "overlay_level/greece/18D7E0.h"
#include "overlay_level/java/1ED9E0.h"
#include "overlay_level/america/254410.h"
#include "overlay_level/siberia/2B7100.h"
#include "overlay_level/comet/318E20.h"

#include "ld_symbols.eu.h"

#endif
