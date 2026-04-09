### u16 arg parameter type: forces `sw a2, 0x30(sp)` store and uopt-temp at correct offset

When a function has `andi t6, a2, 0xffff` in the prologue (masking the 3rd argument), the parameter should be declared as `u16 arg2` (not `s32 arg2`). Using `s32 arg2` with explicit `& 0xFFFF` masking:
- Does NOT generate `sw a2, 0x30(sp)` (arg2 home store)
- Does NOT generate `move v1, t6` (separate copy to v1 for persistence)
- Uses different register allocation (andi into v1 directly vs andi into t6 first)

With `u16 arg2` as the parameter type:
- IDO generates `sw a2, 0x30(sp)` as part of the nonleaf argument-save prologue
- IDO generates `andi t6, a2, 0xffff; ...; move v1, t6` (andi into t6 first, then explicit copy to v1)
- This pattern matches the target for these kinds of interpolation/easing functions

**Wrong (s32 with explicit mask):**
```c
s16 func(s16 arg0, s16 arg1, s32 arg2, ...) {
    if ((arg2 & 0xFFFF) < 0x4001) { ... }  // andi goes to v1 directly
```

**Correct (u16 parameter):**
```c
s16 func(s16 arg0, s16 arg1, u16 arg2, ...) {
    if (arg2 < 0x4001) { ... }              // andi goes to t6, move v1, t6
```

Also: for sins calls with this function style, do NOT add explicit `& 0xFFFF` to the sins argument. IDO generates its own andi+move pattern from the `unsigned short` prototype. Just pass the expression directly:
```c
sins(arg2 - 0x4000)           // generates: addiu a0, v1, -0x4000; andi t0, a0, 0xffff; move a0, t0; jal
```

From `func_800067B4_73B4` in 53F0.c.
