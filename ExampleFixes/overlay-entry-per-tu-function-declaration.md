# Overlay Entry Point: Per-TU Function Declaration

## Problem
`func_80070270` is the shared RAM entry point for all gameplay overlays (frontend/outside/inside). The core calls it with `jal func_80070270`, requiring it to be declared as a **function** in the calling .c file. However, loader.c uses `func_80070270` as a **data pointer** (u8 array) for DMA operations like pointer arithmetic:

```c
osInvalICache(func_80070270, (u8 *)&D_8008DDF0 - func_80070270);
func_800101F0_10DF0(func_80070270, D_158330, D_18D7E0 - D_158330);
```

Declaring it as a function in variables.us.h (or functions.us.h without a guard) and changing loader.c's pointer arithmetic to `(u8*)func_80070270` breaks the assembly output of those loader functions (causes stack spilling instead of rematerialisation).

## Solution: Per-TU Macro Guard

In `variables.us.h`:
```c
#ifndef OVERLAY_ENTRY_AS_FUNC
extern u8 func_80070270[];
#endif
```

In `functions.us.h`:
```c
#ifdef OVERLAY_ENTRY_AS_FUNC
s32 func_80070270(s32 arg0);
#endif
```

In the .c file that **calls** the overlay entry (e.g., `53F0.c`):
```c
#define OVERLAY_ENTRY_AS_FUNC
#include <ultra64.h>
#include "common.h"
```
(The `#define` must come before the `#include "common.h"` chain.)

In loader.c and other .c files that use `func_80070270` as a data address: **no change needed** — they don't define the macro so they get the array declaration and the original pointer arithmetic continues to work correctly.

## Why This Works
- In IDO 5.3, generating `jal symbol` requires a direct function call by name (not a pointer). A function-pointer cast `((void(*)(s32))func_80070270)(0)` would generate `jalr` instead.
- The per-TU macro avoids conflicting declarations in the same translation unit.
- loader.c's DMA functions remain unchanged and continue to match their original assembly.
