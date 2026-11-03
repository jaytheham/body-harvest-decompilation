# Player control: shared state cache and saved homes (partial)

In `func_800EC484_FB434`, separate locals for the early player flags and the later player flags allocated the later flag-word base in A2:

```asm
lui   a2,0x8015
addiu a2,a2,0x7a28
lw    t9,0(a2)
```

-> Reuse the early `var_a2` local for the later flags snapshots and final callback argument. Retain the removed local's word as `statePadding` to preserve the following locals' homes.

```c
s32 var_a2;
s32 statePadding;
/* ... */
var_a2 = D_80157A28;
/* ... controller updates and callbacks ... */
var_a2 = D_80157A28;
func_800137F0_143F0(var_a2);
```

-> The later pointer now uses the target A3 allocation:

```asm
lui   a3,0x8015
addiu a3,a3,0x7a28
lw    t9,0(a3)
```

The water-height short and saved animation ID also occupied the wrong homes:

```asm
sh t5,0xb6(sp)
lh a2,0xb6(sp)
/* ... */
sw t4,0xac(sp)
lw a1,0xac(sp)
```

-> Declare the short before the unused padding word, and declare the temporary float before the saved animation ID:

```c
f32 animationRate;
s16 spBA;
s32 padBC;
f32 spB0;
f32 temp_f0;
s32 spA8;
```

-> Those values occupy their exact target homes while the frame remains `0xc0`:

```asm
sh t5,0xba(sp)
lh a2,0xba(sp)
/* ... */
sw t4,0xa8(sp)
lw a1,0xa8(sp)
```

This is a partial correction. The native function score improves from 10637 to 10014 with the existing helper declarations; the function retains its `NON_MATCHING` fallback.
