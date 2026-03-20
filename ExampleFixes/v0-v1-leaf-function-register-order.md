### v0/v1 register allocation for leaf functions with named locals (specIndex + unk42 + var_v0 pattern)

For leaf functions accessing `alienSpecs[alienInstances[arg0].specIndex].fieldX` with a multiplier variable, to get the correct register layout `a2=instance_ptr, v1=specIndex, t0=spec_ptr, a3=unk42, v0=var_v0`:

Declare variables in this order, initializing `var_v0=1` FIRST in the function body:
```c
s32 var_v0;
u8 specIndex;
s16 unk42;

var_v0 = 1;                    /* ← must be FIRST assignment */
specIndex = alienInstances[arg0].specIndex;
unk42 = alienSpecs[specIndex].unk42;
```

This declaration+assignment order gives: `a2=instance_ptr` (pushed by v0, v1, a0, a1 all being taken), `a3=unk42` (pushed after a0-a2 and v0-v1 taken). The `li v0,1` appears as standalone instruction before the `beqz` condition, and `lh a3, unk42(spec_ptr)` appears in the delay slot of the beqz.

**NOTE**: IDO's critical-path scheduler still places `lbu` for specIndex before `li` for var_v0, causing `lbu v0` (specIndex→v0) instead of `lbu v1` (specIndex→v1). This results in a persistent v0↔v1 swap throughout the function. All other structure matches perfectly; the register swap is a hardcoded IDO allocator behavior for this pattern that we haven't resolved.

The bnez delay slot for `flags & 0x10` check is also affected: when `var_v0=v1`, IDO can put `move v0, zero` in the delay slot (safe). When `var_v0=v0` (target), it cannot (would corrupt var_v0 on fall-through) → uses `nop` delay slot instead.
