# Pointer arithmetic using struct-member-offset symbol to struct array access

## Problem
A function uses pointer arithmetic like:
```c
*((s16 *)((&D_800FB6FA) + (result * 0xC))) = arg0;
```
where `D_800FB6FA` is a bare `s8` extern but is actually a field offset into a struct array (`D_800FB6F8 + 2` = `unk2` field of `UnkFB6F8Entry`).

## Solution
Replace the pointer arithmetic with proper struct array access:
```c
D_800FB6F8[result].unk2 = arg0;
```

## Why it works
- `D_800FB6FA` is at address `D_800FB6F8 + 2` (the `unk2` field offset within `UnkFB6F8Entry`)
- Each `UnkFB6F8Entry` has stride 0xC
- Both expressions access the same memory: `&D_800FB6F8[result] + 2`, written as `s16`
- Struct array access lets the compiler handle the field offset natively rather than via manual pointer arithmetic, which can fix register allocation or instruction ordering differences

## Example
See `func_80084C18_16CCD8` in `src.us/overlay_gameplay/inside/16AF30.c`.
