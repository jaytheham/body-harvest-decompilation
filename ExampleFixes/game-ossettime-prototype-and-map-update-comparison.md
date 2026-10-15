# Game osSetTime declaration and map-update comparison range

The game function named `osSetTime` in `src.us/core/E830.c` takes two
`s32` arguments and stores projection dimensions; it is not the usual
libultra timer implementation. The existing project guard is:

```c
#define GAME_OSSETTIME_IMPL
#include <ultra64.h>
#include "common.h"
```

Use it for `A49A0.c` as already done in `E830.c` and `53F0.c`. Without
the guard, the two-argument call in `func_8009811C_A70CC` does not compile.
Joining the values into a `u64` compiles but emits extra operations and
expands the frame to `0x3F8`. The game declaration and the original two
arguments restore the target frame of `0x3E8` and the two argument loads.
