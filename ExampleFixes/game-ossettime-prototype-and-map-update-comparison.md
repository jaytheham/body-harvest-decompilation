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

The next function is `func_8009BAC0_AAA70`, not
`func_8009A510_A94C0`. The latter end address truncates the comparison
inside this large function. The buildable full-function draft scores
43918; the earlier 42713 marker cannot be used as its baseline.

The framebuffer argument can use `D_8005BB4C[-D_80031B84_32784]`
instead of byte-pointer arithmetic. Matrix arguments to
`func_800039D0_45D0` need the established `(s32)` pointer cast.

When compiling this function, remove its five floating-constant
placeholders (`D_801424E8` through `D_80142508`): the literals generate
their own pool. Restore the placeholders when using its assembly.
The pool offsets still depend on the final text size. This experiment
has the same instruction score as the retained-table variant.

Ten placements of the first camera zero, scalarizing the four one-element
locals, separating the scratch union, and switching the camera loop to
the adjusted stage pointer did not improve the baseline. Early spilling
of the initial flags scores 43923; floating local declaration swaps change
stack homes without correcting the phase/one constant register swap.
The function remains unmatched.

Further tests did not close the structural differences: walking the stage
pointer scores 47223, while rebuilding the indexed stage pointer each
iteration is neutral. Splitting the indexed pointer adjustment into two
assignments is also neutral. Lighting constant casts (s16/u16/s32/u32 or
mixed unsigned literals) and making the phase input a one-element array
are neutral; an early ternary flag initializer scores 44962.

The triangle's blue parameter needs more evidence than its LBU: a word
formal narrowed into a local u8 also emits a byte load and preserves the
110-instruction size. That variant scores 3897 for the triangle and 43593
for the full map update, versus 2837 and 43918 for the retained byte formal.
It restores word stores for blue arguments in the caller, but the combined
residual is worse. The byte-formal header and draft are therefore retained.
Do not infer the formal type from the LBU alone when revisiting the callers.
