### Compare s32 return value before converting to s16

**Pattern**: A function returns `s32`, but you need to use it as `s16`. The comparison must use the original `s32` value, not the truncated `s16`.

**Assembly signature**:
```asm
jal     func_returns_s32
nop
sll     s0, v0, 0x10      # start conversion: v0 << 16
sra     t7, s0, 0x10      # complete conversion: sign-extend to s16
li      at, -3
beq     v0, at, label     # compare ORIGINAL v0 (s32), not converted value
move    s0, t7            # (delay slot) finalize s16 in s0
```

**Wrong approach** (generates extra instructions):
```c
s16 result;
result = func_returns_s32(...);  // implicit cast s32 -> s16
if (result != -3) {              // compares s16, compiler re-converts
    // ...
}
```

**Correct approach**:
```c
s32 temp_s32;
s16 temp_s16;

temp_s32 = func_returns_s32(...);
temp_s16 = temp_s32;             // explicit conversion
if (temp_s32 != -3) {            // compare s32 BEFORE conversion
    use(temp_s16);               // use converted s16 value
}
return temp_s16;
```

**Key insight**: The assembly compares `v0` (the raw s32 return) with `-3` before the conversion is finalized. Declaring separate `s32` and `s16` variables and comparing the `s32` version produces matching assembly.

**Example**: `func_800DA6F0_E96A0` in [CFE30.c](src.us/overlay_gameplay/outside/CFE30.c)
