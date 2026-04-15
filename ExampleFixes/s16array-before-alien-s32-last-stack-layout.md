# s16[2] Array First + AlienInstance* Second: Correct Stack Layout for sp34/sp3C Pattern

## Problem

When a function has a conditional `jal` (inside an `else` branch) whose return value must persist on the stack across later function calls (`sp34`), plus an address-taken `s16[2]` array for passing two s16 values to a function:

The resulting asm should have `sp34` at `sp+0x34`, a 4-byte gap at `sp+0x38`, and `sp3C[2]` at `sp+0x3C` in a `0x40` frame.

Naively declaring `AlienInstance *alien; s32 sp34; s16 sp3C[2];` or variations will **not** produce this layout.

## Root Cause

IDO groups local variables by type for stack placement:
- `s16[2]` arrays (address-taken) → placed at the **HIGH** end of the local area
- `s32` programmer-declared variables → placed at the **LOW** end

With `s16 sp3C[2]` declared **first** (before `AlienInstance *alien`), it anchors to the top of the local area (0x3C-0x3F). With `s32 sp34` declared **last** (after `alien`), it goes to the lowest local slot (0x34-0x37). The **4-byte gap at 0x38-0x3B is generated automatically** by IDO's type-grouping algorithm — no fake padding variable is needed.

## Fix

Declare in this exact order:
```c
s16 sp3C[2];       // FIRST: anchors to HIGH end → sp+0x3C
AlienInstance *alien;  // SECOND: register (s0), skipped for stack layout
s32 sp34;          // LAST: lands at LOW end → sp+0x34
```

This produces: `sp34 at 0x34`, natural `4-byte gap at 0x38`, `sp3C[0] at 0x3C`, `sp3C[1] at 0x3E`. Frame = `0x40`.

## Block-Scope Temp to Avoid Array Reload

When indexing the array element `sp3C[0]` to compute `sp3C[1]`:
```c
// BAD: compiler reloads sp3C[0] from memory
sp3C[0] = D_8014DD50[alien->unkC].unkC;
sp3C[1] = D_8014DD50[sp3C[0]].unkD;  // ← generates lh reload from sp+0x3C
```

```c
// GOOD: block-scoped temp keeps value in register
if (alien->unk20 & 0x1000) {
    s16 tempc = D_8014DD50[alien->unkC].unkC;
    sp3C[0] = tempc;
    sp3C[1] = D_8014DD50[tempc].unkD;  // ← uses register, no reload
    ...
}
```

The block-scoped `s16 tempc` stays register-only (never address-taken, short lifetime, no jal between assignment and last use) and **does NOT affect the frame size** — unlike a top-level `s16 tempc;` which adds 8 bytes to the frame.

## Beware: Top-Level `s16 tempc` Grows Frame

Adding `s16 tempc;` as a top-level declaration (even as the last variable) **adds 8 bytes to the frame** in this context because IDO allocates a stack slot for it. Use block scope instead.

## Summary

| Declaration Pattern | sp34 address | sp3C address | Frame |
|---|---|---|---|
| `alien; s32 sp34; s16 sp3C[2];` | 0x38 | 0x3C (wrong gap) | 0x40 |
| `s16 sp3C[2]; alien; s32 sp38; s32 sp34;` | 0x30 | 0x3C | 0x40 |
| `s16 sp3C[2]; alien; s32 sp38; s32 sp34; s16 tempc;` | 0x38 | 0x44 | 0x48 ✗ |
| **`s16 sp3C[2]; alien; s32 sp34;` + block-scope tempc** | **0x34 ✓** | **0x3C ✓** | **0x40 ✓** |

## Example (func_802D7FC0_190AD0)

```c
void func_802D7FC0_190AD0(u8 arg0) {
    s16 sp3C[2];
    AlienInstance *alien;
    s32 sp34;

    alien = &alienInstances[arg0];
    if (alien->unk48 != 0) {
        alien->unk2 = alien->unk48;
        alien->unk48 = 0;
    } else {
        sp34 = func_802D7D08_190818(arg0, 0x14, 0x180);
    }
    if (alien->unk47 & 8) {
        func_80088760_97710(alien);
    }
    if (alien->unk20 & 0x40000000) {
        if ((sp34 != 0) && !(alien->unk47 & 1)) {
            alien->unk12 = alienSpecs[alien->specIndex].unk40;
        }
        func_800808F0_8F8A0(arg0, &alien->unkE);
        if (alien->unk20 & 0x1000) {
            s16 tempc = D_8014DD50[alien->unkC].unkC;
            sp3C[0] = tempc;
            sp3C[1] = D_8014DD50[tempc].unkD;
            if (func_80081F18_90EC8(arg0, 2, 2, sp3C, &D_802DDCD0_1967E0) == 2) {
                alien->unk20 &= ~0x1000;
            }
        }
    } else {
        func_802D7EBC_1909CC(arg0);
    }
    if ((alien->unk20 & 0x2000) && (D_80052A8C & 1)) {
        alien->unk20 |= 0x80000000;
    }
}
```
