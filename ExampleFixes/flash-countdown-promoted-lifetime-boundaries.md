`incorrect ASM`: In `func_800C0678_CF628`, the saved halfword's `delta[0] ^= 0` retains the required `t0` cache, but UGEN normalizes it again through temporary `t8/t9`. AS1 removes those redundant operations after they have advanced the temporary free list. The subsequent countdown becomes `li t2,7; subu v0,t2,t0`, and later transient registers differ.

-> `code changed`: Replace that halfword self-assignment with a discarded full-word observation, and retain two value-preserving word-width boundaries around the volume calculation:

```c
if (delta[0] * delta[0]) {} func_800049D4_55D4(color, color);
remaining = 7 - delta[0];
remaining = (s32)(s64)remaining;
D_800313F8 = D_80152B7C - ((s32)((f64)(f32)remaining * (1.0 - (f64)sp30)) * 0x32);
remaining = (s32)(s64)remaining;
D_8013D9C8_14C978 = 1;
```

The squared halfword fits signed 32 bits, and each signed-word widening and narrowing preserves its value. The observation keeps the promoted delta's allocation benefit without another halfword normalization. The round trips change UGEN's temporary-pair lifetimes; AS1 removes their redundant instructions. Keep the second boundary before the flag assignment: moving it after the terrain call gives a different temporary sequence.

-> `correct ASM`: The countdown uses `lh t0,0x3c(sp); li t8,7; lwc1 f2,0x30(sp); subu v0,t8,t0; mtc1 v0,f18`, and the volume subtraction uses the target `t6/t4/t5/t7` sequence. The 0x40 frame and 425-instruction size remain exact. This is a partial checkpoint: the diff score falls from 550 to 190, with exactly 30 differing ROM words, all inside the function. Every ROM word outside the function matches. The function stays `NON_MATCHING`; its assembly fallback passes the full native US checksum. Observational UGEN and native builds produce identical objects.
