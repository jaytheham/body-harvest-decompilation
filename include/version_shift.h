#ifndef VERSION_SHIFT_H
#define VERSION_SHIFT_H

/* A file of src.us that the PAL build compiles too holds some addresses as numbers. The PAL ROM has the same data
 * at other addresses: a pointer into the level overlay is 0x40 higher, one into the first part of the gameplay
 * overlays 0x30 higher. LEVEL_PTR and OVERLAY_PTR give each version its value. */
#if defined(VERSION_US)
#define LEVEL_PTR(x) (x)
#define OVERLAY_PTR(x) (x)
#elif defined(VERSION_EU)
#define LEVEL_PTR(x) ((x) + 0x40)
#define OVERLAY_PTR(x) ((x) + 0x30)
#else
#error "Unknown version: compile with -DVERSION_US or -DVERSION_EU"
#endif

#endif
