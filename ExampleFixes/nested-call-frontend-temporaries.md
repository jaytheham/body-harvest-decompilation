## Incorrect ASM

`func_80109C84_118C34` had the correct instruction sequence but its sign and impulse shorts occupied `sp+0x68` and `sp+0x6A`, instead of `sp+0x64` and `sp+0x66`. Reordering existing declarations into the required slots initially grew the frame:

```asm
addiu sp, sp, -0x98
sh    t7, 0x6c(sp)
sh    t8, 0x6e(sp)
```

## Code changed

Place the existing `var_v1`, weapon index, and uninitialized height short first; move the existing float scratch after the vector magnitude and the existing clamp short after the sign/impulse pair. Move the unused double home below the coordinate/angle locals.

The full-TU CFE Ucode showed two additional frontend temporaries: a short for the nested angle-difference return, and a float for nested square-root results. These also count toward the frame even when UOPT removes their actual memory accesses. Extract the angle-difference calls into the existing short, and extract the speed-setter's square root into the existing float:

```c
var_v1 = func_800F9C50_108C00(arg0->unk2A, arg0->unkA);
arg0->unk26 += var_v1 / arg1->unk44;
var_v1 = func_800F9C50_108C00(arg0->unk28, arg0->unk8);
arg0->unk24 += var_v1 / arg1->unk44;
/* ... */
temp_f0 = sqrtf(sp74 * sp74 + sp70 * sp70);
func_800FB430_10A3E0(arg0, temp_f0);
```

Keep the later pitch square root inside its expression, with the old pitch read inside the subtraction operand. That preserves its return-first multiplication. Removing all remaining nested short-result calls frees the needed frontend temporary quantum without changing the emitted instruction sequence.

## Correct ASM

Every stack access matches, including the frame, both shorts, and the automatic angle spill:

```asm
addiu sp, sp, -0x90
sh    t7, 0x64(sp)
sh    t8, 0x66(sp)
sw    a0, 0x38(sp)
```
