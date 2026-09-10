# Array Output: Direct Element Access Beats Named Scalars (+ s16 Cast + Gap Pad)

Function: `func_802DC2E4_194DF4` (greece overlay `18D7E0.c`).

## Problem

The starting C declared three named scalar locals that were just copies of an
`s32[3]` output array's elements:

```c
s32 x;
s32 y;
s32 z;
s32 sp50[3];
...
func_800044D4_50D4(&D_8014DD50[sp5C], sp50, sp48);
x = sp50[0];
y = sp50[1];
z = sp50[2];
x += alienInstances[arg0].unk0;
...
```

IDO gave `x`, `y`, `z` their **own stack slots** (in addition to `sp50`),
inflating the frame from the target `0x60` to `0x68` and shifting every local.

## Fix 1 — Index the array directly

Use the array elements in place instead of copying to named scalars:

```c
func_800044D4_50D4(&D_8014DD50[sp5C], sp50, sp48);
sp50[0] += alienInstances[arg0].unk0;
sp50[1] += alienInstances[arg0].unk2;
sp50[2] += alienInstances[arg0].unk4;
temp = func_800DF038_EDFE8((s16)sp50[0], (s16)sp50[1], (s16)sp50[2], ...);
func_800C7924_D68D4((s16)sp50[0], (s16)sp50[1], (s16)sp50[2], ...);
```

Now the compiler loads from and stores back to the `sp50` slots (target uses the
same `0x50/0x54/0x58` slots for load *and* store), and the frame shrinks.

## Fix 2 — Cast width must match the sign-extend sequence

Target uses `sll aN, vN, 0x10` / `sra tN, aN, 0x10` → **s16**, not s8.
The original C had `(s8)` casts; changing them to `(s16)` produced the correct
`0x10` shifts. Always pick the cast width from the shift amount
(`0x10`→s16, `0x18`→s8).

## Fix 3 — Non-last `s32` pad creates the gap before an `s16[]`

Target layout has a 4-byte hole at `sp+0x44` between the used `s32 sp40`
(`0x40`) and the `s16 sp48[3]` (`0x48`). Declaring one **unused, non-last**
`s32` between them reserves that slot:

```c
s16 unkC;
s16 sp5C;
s32 sp50[3];
s16 sp48[3];
s32 padMid; // unused - reserves the 4-byte gap at sp+0x44
s32 sp40;
s32 temp;   // last declaration, lives in a register -> no slot
```

Note the sensitivity: adding/removing a pad here also moves the compiler's
cfe temp pointer (`&D_8014DD50[unkC]`), which must land at `sp+0x34` with a
4-byte hole below it at `sp+0x30`. Final layout → frame `0x60`:
`0x30 gap, 0x34 cfe, 0x38/0x3C gap, 0x40 sp40, 0x44 gap, 0x48 sp48,
0x4E gap, 0x50 sp50, 0x5C sp5C, 0x5E gap`.
