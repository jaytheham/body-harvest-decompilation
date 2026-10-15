# Materializing a global-store address

## Resolved: unsigned address arguments through a C89 call

Both `func_80011A40_12640` and `func_80011B60_12760` now match exactly.
Keep the ordinary `u8, s32` function signatures and direct array indexing.
Inside each function, declare `extern s32 func_800101F0_10DF0();` to preserve
an unprototyped C89 call, then use:

```c
D_8006AA70 = arg1;
func_800101F0_10DF0((u32)D_8006AA70, (u32)startTable[index],
                  endTable[index] - startTable[index]);
return endTable[index] - startTable[index] + arg1;
```

The shared helper prototype takes signed arguments. Without the local
unprototyped declaration it coerces unsigned casts back to signed nodes.
Preserving unsigned address arguments, while leaving the subtraction signed,
produces the target table-load ordering, materialized global-store address,
extra argument moves, and register allocation. No named locals are needed.
Keep the shared helper prototype for existing callers. K&R definitions of
these two functions are unnecessary; their existing typed definitions match.

Verified both function diffs and the full ROM: `build/bh.us.z64: OK`.
