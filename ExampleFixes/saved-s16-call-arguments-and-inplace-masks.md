# Saved s16 call arguments and in-place masks control later conversion order

Function: `func_80082B30_91AE0`, in `src.us/overlay_gameplay/outside/884C0.c`.
Compiler: IDO 5.3, `-O2 -mips2 -32`.

Two saved `s16` coordinates survive a terrain lookup and are then masked to
their low bytes for a second helper. The near-match used struct fields as the
first call's arguments and masked expressions as the second call's arguments:

```c
xPos = alien->unk0;
zPos = alien->unk4;
terrainIndex = func_800056D0_62D0(alien->unk0, alien->unk4);
/* Terrain check and early return. */
return func_800829EC_9199C(arg0,
    func_80082990_91940(xPos & 0xFF, zPos & 0xFF));
```

This matched 51 of 53 instructions, but reversed two independent `sll`
instructions used to sign-extend the second helper's arguments. The complete
fix was to pass the saved coordinates to the first call and mask those same
locals in place after the terrain check:

```c
terrainIndex = func_800056D0_62D0(xPos, zPos);
/* Terrain check and early return. */
xPos &= 0xFF;
zPos &= 0xFF;
return func_800829EC_9199C(arg0, func_80082990_91940(xPos, zPos));
```

The final sequence is:

```asm
andi t6,a0,0xff     # Conditional branch delay slot.
/* Early-return branch and delay slot. */
andi t9,a1,0xff
sll  t7,t6,16
sll  t0,t9,16
sra  a0,t7,16
jal  func_80082990_91940
sra  a1,t0,16
```

Both source changes matter. With struct fields still passed to the terrain
lookup, in-place masks changed register allocation and introduced extra moves.
Keep the helper's ordinary `s16, s16` parameter declaration: experimenting with
promoted old-style parameters could change the shift order, but also disturbed
already matched neighboring callers. The saved-local call plus in-place masks
matched the whole ROM with the original helper and neighboring functions.

This is a useful candidate when only conversion scheduling differs: preserve
the relationship between a saved narrow local and its earlier call argument,
instead of replacing that argument with an equivalent field access.
