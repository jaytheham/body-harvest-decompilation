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

/* The same pointers written as two halfwords: LEVEL_PTR_HI(0x802E4F94), LEVEL_PTR_LO(0x802E4F94). */
#define LEVEL_PTR_HI(x) ((LEVEL_PTR(x) >> 16) & 0xFFFF)
#define LEVEL_PTR_LO(x) (LEVEL_PTR(x) & 0xFFFF)
#define OVERLAY_PTR_HI(x) ((OVERLAY_PTR(x) >> 16) & 0xFFFF)
#define OVERLAY_PTR_LO(x) (OVERLAY_PTR(x) & 0xFFFF)

/* And as two bytes and a halfword (0x80, 0x2E, 0x4F94): LEVEL_PTR_B3 and LEVEL_PTR_B2 are the top two bytes. */
#define LEVEL_PTR_B3(x) ((LEVEL_PTR(x) >> 24) & 0xFF)
#define LEVEL_PTR_B2(x) ((LEVEL_PTR(x) >> 16) & 0xFF)
#define OVERLAY_PTR_B3(x) ((OVERLAY_PTR(x) >> 24) & 0xFF)
#define OVERLAY_PTR_B2(x) ((OVERLAY_PTR(x) >> 16) & 0xFF)

#endif
