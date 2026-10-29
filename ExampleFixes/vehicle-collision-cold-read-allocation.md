`incorrect ASM` in `func_80110FB4_11FF64`: reusing the general result local for the building's upper-height snapshot takes `s3`, displacing the two rotation-output pointers. The later promoted upper bound also takes `a3` before the lower bound.

```asm
addiu   s5,sp,0xc8
addiu   s4,sp,0xca
lh      s3,0xd4(sp)
/* Later vehicle/bridge checks: */
lh      a3,0xd4(sp)
lh      t1,0xd2(sp)
```

-> `code changed`: keep the building snapshot in the existing `height` scratch. Before its collision return, retain 64 empty cold reads through `IDO_HEIGHT_COLD_SPAN(height)`. Before the vehicle upper-bound check, use an empty condition containing 21 additions of the signed halfword lower bound through `IDO_SIGNED_HEIGHT_READS(spD2)`.

```c
height = topHeight.signedValue;
/* Test the building volume and apply the collision response. */
IDO_HEIGHT_COLD_SPAN(height); return 9;

/* Later, after the player-only bridge checks: */
if (IDO_SIGNED_HEIGHT_READS(spD2)) {} if (((s16)(u16)topHeight.signedValue) < spD8) {
    /* Existing vehicle response. */
}
```

The empty checks affect IDO's allocation costs and lifetime spans, then disappear from the emitted instructions. The repeated sum is safe because its operand is an `s16`; it cannot overflow a 32-bit promoted sum. Use side-effect-free locals. A multiplication by 21 does not preserve the repeated-reference effect.

-> `correct ASM`, verified with the normal full-ROM build (`build/bh.us.z64: OK`):

```asm
addiu   s4,sp,0xc8
addiu   s3,sp,0xca
lh      s5,0xd4(sp)
/* Later vehicle/bridge checks: */
lh      t1,0xd4(sp)
lh      a3,0xd2(sp)
```
