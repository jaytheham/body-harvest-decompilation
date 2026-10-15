# Branch-local float stores with the target register

In `func_800F1DDC_100D8C`, an empty condition after the two branch-local stores preserved both stores and their literal-load order without emitting a comparison or branch.

## Reusing a different existing float local fixes the remaining register

For this function, reusing the existing `temp` local (also used for the
terrain height in case 4) for the initial speed, its two stores, and the
empty condition changed those four `$f2` instructions to the target's
`$f0`. Reusing `speed`, the local used for case 1's subtraction, had kept
`$f2` in case 0 despite that same local using `$f0` in case 1. Both forms
had the target stack layout.

The retained initialization is:

```c
if (currentLevel == LEVEL_GREECE) {
    temp = 15.9f;
    D_80159DE2 = 0x28F;
    D_80157FE4_Write = temp;
} else {
    temp = 13.7f;
    D_80159DE2 = 0x1F4;
    D_80157FE4_Write = temp;
}
if (temp) {
}
```

## An otherwise exact function can still depend on source-line order

The last mismatch in `func_800F1DDC_100D8C` was two independent instructions:

```asm
/* 101474 */ lui a3, 0x4000     /* effect size 2.0f */
/* 101478 */ lui at, 0x8015     /* D_80157FE4_Write store address */
```

The candidate emitted these in the opposite order. Every other instruction,
register, stack offset, and literal-pool address already matched. Reordering
assignments, introducing float temporaries, changing literal forms, comma
expressions, and grouping physical source lines did not fix it.

IDO also uses preprocessor source-line attribution when scheduling. Attributing
the effect call to an earlier line than the preceding zero store fixes this
last swap without adding an instruction:

```c
D_80157FE4_Write = 0.0f;
#line 1
func_80135D44_144CF4(x, level, z, 2.0f);
#line 1073
```

The second directive restores the physical line number of the following source
line; update that number if lines above this block change. The significant
ordering is that the call is attributed before the reset store. A macro wrapper
and putting the statements on one physical line did not reproduce it.

Use this only when the remaining differences concern instruction order; it does
not repair incorrect control flow or register allocation.
The complete US ROM verifies `build/bh.us.z64: OK` and the function diff score is
zero. See the decomp workbench `docs/START_HERE.md` source-line attribution
probe guidance for the same class of compiler behavior.

The shared EU build also needs the existing US aliases in its linker input:

```c
D_80157FE4_Write = D_80157FE4;
D_80157F9F = D_80157F9E + 1;
```

Both full ROMs verify OK, including `build.eu/bh.eu.z64`.
