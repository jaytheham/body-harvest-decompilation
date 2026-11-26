## Incorrect ASM

In `func_80128E48_137DF8`, keeping all three coordinate comparisons live across the graphics mode setup gave the shared white color constant the wrong register.

```asm
addiu $t0, $zero, 0xFF
/* Display-list setup and vertex coordinates */
sb    $t0, 0xC($t9)
sb    $t0, 0xD($t5)
```

## Code changed

Keep the first two comparisons before the mode setup. Move the first use of the third comparison after `gSPClearGeometryMode`. Repeat all three before the final `gSPLine3D`.

```c
if (arg0 ^ arg1) {}
if (arg1 ^ arg2) {}
/* Render mode, cycle type, and combine mode */
gSPClearGeometryMode(D_8005BB30++, G_FOG);
if (arg2 ^ arg0) {}
/* Vertex writes and first line */
if (arg0 ^ arg1) {}
if (arg1 ^ arg2) {}
if (arg2 ^ arg0) {}
gSPLine3D(D_8005BB30++, 1, 2, 0);
```

## Correct ASM

```asm
addiu $t3, $zero, 0xFF
/* Display-list setup and vertex coordinates */
sb    $t3, 0xC($t9)
sb    $t3, 0xD($t5)
```

The comparisons emit no instructions. Moving the third comparison changes register allocation in these three instructions and completes the 323-instruction match.
