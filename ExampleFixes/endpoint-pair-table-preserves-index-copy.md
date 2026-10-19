## Endpoint tables in func_800836D0_92680

Incorrect ASM with flat `s16[8]` tables:

```asm
lw      t4,0xc8(sp)
sll     v0,t4,2
; V0 is used directly for both table addresses; a target copy is missing.
```

Code changed:

```c
extern const s16 D_801416B0_150660[8];
extern const s16 D_801416C0_150670[8];

x = D_801416B0_150660[quad * 2] + (s16)(tileX << 8);
x1 = D_801416B0_150660[quad * 2 + 1] + (s16)(tileX << 8);
```

to endpoint pairs, preserving the same sixteen bytes in each table:

```c
extern const s16 D_801416B0_150660[4][2];
extern const s16 D_801416C0_150670[4][2];

x = D_801416B0_150660[quad][0] + (s16)(tileX << 8);
x1 = D_801416B0_150660[quad][1] + (s16)(tileX << 8);
```

Correct ASM shape, including the previously missing copy:

```asm
lw      v0,0xc8(sp)
sll     t4,v0,2
move    v0,t4
; The scaled index and its copy feed the two table addresses.
```

With the declarations and definitions changed together, the full ROM hash is
identical to the diagnostic version using casts to `const s16 (*)[2]`.
The completed function matches with the stock compiler and the ROM checksum is OK.
