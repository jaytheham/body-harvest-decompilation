`incorrect ASM`: In `func_800F842C_1073DC`, `(i % 3) * sp82 + 10` produces `mflo v1; addiu s3,v1,10`. Splitting off the addition moves the cursor home from `0x5C(sp)` to `0x58(sp)`.

-> `code changed`: Assign `reach = (i % 3) * sp82` and use `reach + 10` in both coordinate calculations. Declare the word-sized `phase` in the slot previously occupied by the unused `u16 padding` and its alignment gap.

-> `correct ASM`: `mflo s3; addiu s3,s3,10`. The cursor uses `0x5C(sp)` in the `0xD8` frame.

`incorrect ASM`: A signed phase sum and redundant masks on the scale byte change the rotate path's temporary registers. The final multiply uses `t0` and the product arrives in `t2`.

-> `code changed`: Cast the first phase sum to `u32` before subtracting it from `0x4000` and narrowing the result to `s16`. Move the redundant operations from the byte scale to eight extra `& 0xFFFF` masks in the subsequent heading assignment.

-> `correct ASM`: `multu t1,s2; andi a0,s1,0xFFFF; mflo t3; sh t3,0x88(sp)`. IDO assigns the temporary registers before folding the masks, so only the target instructions remain.

`incorrect ASM`: An empty `if (&D_801601F0[index]) {}` after the height quotient gives the address temporary `v1`, but its optimizer block ends the compiler's no-alias record before the implicit cursor store. The assembler schedules `lh t1,0xA(v1)` before `sw s0,0x5C(sp)`.

-> `code changed`: Replace the empty condition with a zero-weight assignment in the quotient, using the existing `reach` temporary.

```c
sp82 = (s16)((D_801601F0[walker->limbs[0].unk23].unkA / 20) +
             (reach = (s32)&D_801601F0[walker->limbs[0].unk23]) * 0);
```

-> `correct ASM`: `sw s0,0x5C(sp); move s6,zero; mflo t0; addu v1,s4,t0; lh t1,0xA(v1)`. The second use keeps the alias information through the store and emits no additional instructions.
