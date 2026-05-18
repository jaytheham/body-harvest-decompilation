# u16 Callee-Save + sins/coss Order + Stack Padding

## Problem

Function `func_800792E0_88290` had multiple issues:
1. Score 2276 - wrong register allocation (missing s1 callee-save register), wrong sins/coss call order, wrong stack layout

## Root Causes & Fixes

### 1. Add `u16 s1` for the angle argument

When `arg1` is a 32-bit parameter but used repeatedly as a 16-bit angle (across multiple function calls), the compiler places it in a callee-save register `s1`. Introduce:

```c
u16 s1 = (u16)arg1;
```

This:
- Adds `s1` to the callee-save set (alongside `s0`, `ra`, `f20`, `f22`)
- Shifts FP callee-saves from `0x18/0x20` to `0x10/0x18` (correct)
- Changes the argument spill slot offset (was `0x44`, becomes `0x4c`)
- Allows `move a0,s1` (no masking) for the first trig call vs `andi a0,s1,0xffff` for later calls

### 2. sins/coss call order

**Important:** In this codebase, the jal addresses are:
- `1d950` = **coss** (NOT sins!)
- `1d980` = **sins**

(Confirmed via checking `asm/nonmatchings/.../func_800772EC_8629C.s` which labels the jals)

The pattern is: **the function whose result is stored to a temp var is called FIRST** (and gets `move a0,s1` in the delay slot - no masking). The one called inline gets `andi a0,s1,0xffff`.

So: `sp34 = coss(s1)` first, then `sins(s1)` inline in the second argument of the next call.

### 3. Stack padding for correct sp34 offset

The `sp34` (s16) variable needed to be at `0x34` not `0x36`. Required adding 3 padding variables in declaration order:

```c
s32 sp44;   // 0x44 (first = highest stack offset)
s32 pad1;   // 0x40 (unused, NOT last → IDO reserves slot)
s32 sp3C;   // 0x3C
s32 pad2;   // 0x38 (unused, NOT last → IDO reserves slot)
s16 pad3;   // 0x36 (unused s16, NOT last → IDO reserves slot)
s16 sp34;   // 0x34 (last, used)
```

The s16 `pad3` creates a 2-byte "bump" to push `sp34` from `0x36` to `0x34`.

## Final Result

Score: 0 (perfect match), `build/bh.us.z64: OK`
