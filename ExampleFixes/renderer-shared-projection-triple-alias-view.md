`incorrect ASM`: In `func_800F7790_106740`, the first X triple uses the raw float-to-word conversion. Its signed-halfword narrowing disappears at the final `SH`, and the next vertex computes the triple again:

```asm
move    t6,t9
sll     t9,t6,2
subu    t9,t9,t6
/* Another SLL 2 / SUBU pair appears for the second X coordinate. */
```

-> `code changed`: Read the normalized X component through the existing union's ordinary array view, and read the independent short offsets directly instead of taking their addresses:

```c
xStep = (s16)(s32)(direction.components[0] * spF4);
/* Both X coordinates use xStep * 3. */
zTri = zStep * 3;
```

This replaces `direction.vector.x` in the conversion and `(*((s16 *)&xStep))` / `(*((s16 *)&zStep))` at the products. Preserve the two full-word triple uses. A volatile float read also prevents the raw-expression substitution, but the ordinary array view produces the required shared arithmetic without volatility.

-> `correct ASM`: Both X uses share one full-word triple, whose input retains signed narrowing; Z also has one shared triple:

```asm
sll     t7,t9,16
sra     t6,t7,16
sll     t9,t6,2
subu    t9,t9,t6
sw      t9,0x2c(sp)
```

The native UGEN stream falls from three constant-three multiply pseudos to two. The linked function has two `SLL 2` / `SUBU` triples with signed inputs, no added geometry branches, and no extra geometry stores. This fixes the shared-projection pattern; the full function remains unresolved and its register/stack allocation still differs.
