## Incorrect ASM

`func_8012D884_13C834` matched except for four uses of the first matrix packet pointer:

```asm
lw      v0,0(a1)
addiu   t7,v0,8
sw      t6,4(v0)
sw      t8,0(v0)
```

## Code changed

Replace the explicit `matrix` and `packet` pointer copies with the ordinary graphics macro. Initialize the loop counter before the macro and retain its empty check there, instead of initializing and checking it after the packet. The check preserves the counter live range that makes IDO allocate the packet pointer to `a0`.

```c
i = 25;
if (i) {}
gSPMatrix(D_8005BB2C++, K0_TO_PHYS(&D_80031160),
          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
for (; i--;) {
    /* Draw each active interaction box. */
}
```

The ordinary macro with the counter initialized after it used `v1` for the packet and changed the schedule. The explicit pointer-copy version retained the schedule but used `v0`. Moving the counter initialization alone while retaining those copies still used `v0`; the macro and counter live-range changes are required together.

## Correct ASM

```asm
lw      a0,0(a1)
addiu   t7,a0,8
sw      t6,4(a0)
sw      t8,0(a0)
```

The stock compiler build reports `build/bh.us.z64: OK`.
