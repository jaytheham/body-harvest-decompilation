# Incorrect ASM

In `func_8009811C_A70CC`, emitting both light-color words through `gSPLightColor` and then updating the selected vehicle let IDO reuse one `-1` constant for both data words.

```asm
li      ra,-1
...
sw      ra,4(v1)
...
sw      ra,4(v1)
```

# Code changed

Use the two `gMoveWd` calls that the light-color macro expands to. Sequence the selected-vehicle store in the second command's data expression so it follows the command-word store and precedes the data-word store.

```c
gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_aLIGHT_1, -1U);
gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_bLIGHT_1,
    (D_8013D530_14C4E0 = var_t4, -1U));
```

# Correct ASM

IDO rematerializes the two data words independently and places the vehicle store between the second command word and its data. The operation order matches the target. Temporary registers still differ.

```asm
li      t8,-1
sw      t8,4(v1)
...
sw      t6,0(v1)
sw      t3,%lo(D_8013D530_14C4E0)(at)
li      t7,-1
sw      t7,4(v1)
```
