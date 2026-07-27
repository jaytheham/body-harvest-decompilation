### Force `lwr`/`swr` unaligned access with offset cast to match instruction ordering

When the target assembly uses `lwr`/`swr` (unaligned word load/store) to copy data from a global array to a stack slot that is never used again, the C code must use an unaligned pointer access to generate the same instructions.

**Problem**: Writing `sp84 = *(u32 *)D_SOME_ARRAY;` generates an aligned `lw`/`sw` pair (or nothing if the variable is unused). The target has `lwr at, offset+2(reg)` / `swr at, offset+2(sp)` — i.e., the load is from the array base + 2 bytes, making it unaligned. This difference causes the compiler to schedule instructions differently throughout the entire function, affecting register allocation and instruction ordering.

**Solution**: Use an explicit byte-level offset cast to force unaligned access:

```c
// BEFORE (aligned access, codegen differs):
sp84 = *(u32 *)D_8013CAFC_14BAAC;

// AFTER (unaligned access, matches target):
sp84 = *(s32 *)((u8 *)D_8013CAFC_14BAAC + 2);
```

The `+ 2` makes the address odd (unaligned), forcing the compiler to use `lwr`/`swr` instead of `lw`/`sw`. This single change can ripple through the entire function's codegen, fixing instruction ordering, register allocation, and stack frame layout.

**Note**: This applies even when the loaded value is never subsequently read — the compiler still emits the load/store pair as written.

**Example** (from `func_80093C7C_A2C2C` in `9BFF0.c`):

The array `D_8013CAFC_14BAAC` is a `u32` array. The target assembly loads from it with:
```
lui    t0, D_8013CAFC_14BAAC
addiu  t0, t0, %lo(D_8013CAFC_14BAAC)
lwr    at, 2(t0)         ; load unaligned word from base+2
...
swr    at, 2(sp + 0x84)  ; store unaligned at stack+0x86
```

The C fix:
```c
sp84 = *(s32 *)((u8 *)D_8013CAFC_14BAAC + 2);
// Now generates lwr/swr instead of lw/sw
```
