`incorrect ASM`: In `func_800C0678_CF628`, word-sized fog arithmetic and direct `D_8013DAFC_14CAAC[0] = var_a1 - 1` stores give UGEN the wrong temporary lifetimes. Two signed-word to signed-64-bit round trips partially repair the allocation, leaving 30 differing ROM words, including `li t2,1` instead of `li t8,1`.

-> `code changed`: Retain the discarded promoted-delta observation, remove both 64-bit round trips, narrow the converted fog scale before multiplying, and decrement the signed halfword local before each state store:

```c
if (delta[0] * delta[0]) {} func_800049D4_55D4(color, color);
remaining = 7 - delta[0];
D_800313F8 = D_80152B7C - ((s16)(s32)((f64)(f32)remaining * (1.0 - (f64)sp30)) * 0x32);
/* ... */
var_a1--;
D_8013DAFC_14CAAC[0] = var_a1;
```

Apply the decrement/store form to both restart paths. Narrowing the fog scale preserves the final signed-halfword store's low 16 bits: multiplying values congruent modulo 65536 and subtracting the same base gives congruent stored results. The decremented local is not read again before its next assignment. The squared signed halfword fits a signed word. These halfword operations supply the temporary normalization lifetimes directly; AS1 removes the redundant normalizations.

-> `correct ASM`: The countdown and fog sequence use the target `li t8,7`, `mfc1 t4,f4`, `li t8,1`, and `t6/t4/t5/t7` arithmetic. Both restart paths use the target halfword loads, decrement destinations, and stores; the following allocation sequence also matches. The frame remains 0x40 and the function remains 425 instructions. This partial checkpoint reduces the diff score from 190 to 20: only the two address-load instructions at ROM CFC90/CFC94 remain swapped. Every ROM word outside the function matches. The function stays `NON_MATCHING`; its assembly fallback passes the full native US checksum.
