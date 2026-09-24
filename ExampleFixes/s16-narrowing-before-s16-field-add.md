# Narrow a Truncated Integer Before Adding to an s16 Field

Function: `func_8007DC80_165D40` (`src.us/overlay_gameplay/inside/1648A0.c`).

## Problem

The target converts a floating-point calculation to a truncated integer, adds
it to a signed 16-bit field, and stores the low 16 bits. Writing the delta as an
`s32` made IDO produce the same operations but allocate temporaries differently
from the target.

## Fix

Cast the delta to `s16` before adding it to the `s16` field:

```c
arg0->unkE += (s16)(calculation);
```

For this case, narrowing before the addition preserves the stored 16-bit
result, while changing IDO's register allocation enough to produce an exact
assembly match. If the destination is an `s16` field and the final result is
stored back to that field, test the narrow intermediate when only register
allocation differs; still verify the full function diff and ROM build.
