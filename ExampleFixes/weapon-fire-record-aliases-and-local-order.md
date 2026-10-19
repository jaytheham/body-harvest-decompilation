## Incorrect ASM

In `func_80129864_138814`, using one set of float deltas for aiming and projectile motion reused `sp+D4/D0/CC` instead of `sp+E0/DC/D8`. Assigning the final deltas in X, Z, Y order also cached Z in `f18` and changed the subsequent spawn-call scheduling.

## Code changed

Declare separate `finalX`, `finalY`, `finalZ` before the earlier aim deltas. Assign them in X, Y, Z order, but retain the target sum's X, Z, Y grouping:

```c
finalX = arg2 - x;
finalY = arg3 - y;
finalZ = arg4 - z;
len = sqrtf(finalX * finalX + finalZ * finalZ + finalY * finalY);
```

## Correct ASM

```asm
swc1 f0,0xe0(sp)
swc1 f14,0xd8(sp)
swc1 f18,0xdc(sp)
jal sqrtf
add.s f12,f10,f8
lbu t3,0x13(s1)
lwc1 f16,0xe0(sp)
lwc1 f18,0xdc(sp)
```

## Incorrect ASM

The normalization floats occupied `sp+6C` and `sp+68`; the target uses `sp+68` and `sp+64`.

## Code changed

Move the integer square-root result's declaration from its nested branch to immediately before `normX` and `normZ`. Keep the assignment in the nonzero-distance branch.

```c
s32 dist2;
s32 dist;
f32 normX;
f32 normZ;
/* ... */
dist = (s32)sqrtf((f32)dist2);
```

## Correct ASM

```asm
swc1 f2,0x64(sp)
swc1 f12,0x68(sp)
/* ... */
lwc1 f2,0x64(sp)
lwc1 f12,0x68(sp)
```

## Incorrect ASM

Explicit coordinate assignment allocated the remainder before the coordinate, swapping three pairs of temporary registers:

```asm
lw t8,0xf8(sp)
div zero,v0,v1
mfhi t7
```

## Code changed

```c
arg2 += (func_800038E0_44E0() % entry->unk10) - (entry->unk10 >> 1);
arg3 += (func_800038E0_44E0() % entry->unk10) - (entry->unk10 >> 1);
arg4 += (func_800038E0_44E0() % entry->unk10) - (entry->unk10 >> 1);
```

Use one compound assignment per coordinate; splitting addition and subtraction emits extra parameter stores.

## Correct ASM

```asm
lw t7,0xf8(sp)
div zero,v0,v1
mfhi t8
sra t2,v1,1
addu t9,t7,t8
subu t3,t9,t2
```

## Incorrect ASM

`(random() % 4) != 0` omitted the target's signed-remainder correction.

## Code changed

Use the remainder directly as the condition: `if (func_800038E0_44E0() % 4)`.

## Correct ASM

```asm
bgez v0,remainder_ready
andi t7,v0,3
beqz t7,remainder_ready
nop
addiu t7,t7,-4
remainder_ready:
beqz t7,skip
```

## Incorrect ASM

Comparing the alien-type pointer with `&alienTypes[1]`, `[2]`, and `[18]` kept the array base in a register across the preceding collision case. That case gained an `addiu` and loaded `0x5A(base)` instead of the target's combined symbol offset.

## Code changed

Declare the existing linker aliases as `AlienType` in `variables.us.h`: `D_802566E8`, `D_80256750`, and `D_80256DD0`. Compare against their addresses. Cache the case-5 type index in the existing integer `tx` before indexing `alienTypes`.

## Correct ASM

```asm
lui t4,0x8025
/* indexed offset calculation */
addu t4,t4,t2
lb t4,0x66da(t4)
/* case 5 */
lui t7,0x8025
addiu t7,t7,0x6680
lbu v0,0x1a(a0)
```

## Incorrect ASM

The final player comparison swapped its two temporary registers, despite an otherwise exact function:

```asm
lui t4,0x8005
lw t4,0x2b34(t4)
lw t2,0xc(s0)
beql t2,t4,skip_damage
```

## Code changed

Qualify only the collision-record read as volatile:

```c
D_80052B34 != ((volatile Unk8015F9D0 *)&D_8015F9D0)->vehicle
```

## Correct ASM

```asm
lui t2,0x8005
lw t2,0x2b34(t2)
lw t4,0xc(s0)
beql t2,t4,skip_damage
```

## Incorrect ASM

The effect-position stores moved behind the RGB initialization and into the call's delay slot.

## Code changed

Keep the first coordinate store ordinary and qualify only the Z store:

```c
effectPos[0] = D_8015F9D0.unk0;
((volatile s16 *)effectPos)[2] = D_8015F9D0.unk4;
```

## Correct ASM

```asm
lh t6,0(s0)
lh t9,4(s0)
addiu a0,sp,0x80
sh t6,0x80(sp)
sh t9,4(a0)
/* RGB initialization follows */
```

## Incorrect ASM

A final `return NULL` added a default `move v0,zero` block; initializing the result before an if without an else also removed the target's unconditional branch.

## Code changed

Retain the outer projectile guard's fallthrough without adding a return. Inside it, assign the result in explicit if/else branches and return it.

```c
if (entry->unkE != 0) {
    value.result = spawned;
} else {
    value.result = NULL;
}
return value.result;
```

## Correct ASM

```asm
lh t6,0xe(s1)
move v1,zero
beqz t6,result_ready
nop
b result_ready
lw v1,0xa8(sp)
result_ready:
move v0,v1
```

## Incorrect ASM

Keeping the previously matched function's explicit `0.1` and `0.05` rodata objects put them before the newly generated 13-entry jump table.

## Code changed

With both `func_80129864_138814` and `func_8012B26C_13A21C` enabled as C, remove the earlier function's placeholder jump table and replace `D_80145200_1541B0.value` / `D_80145208_1541B8.value` in the latter with inline `0.1` / `0.05`. Retain the existing separate translation unit for the later floor-collision string.

## Correct ASM

The generated 13-entry table begins at `0x801451CC`, the double constants occupy `0x80145200` and `0x80145208`, and the later function's 101-entry table follows. Stock build: `build/bh.us.z64: OK`; function diff: `CURRENT (0)`.
