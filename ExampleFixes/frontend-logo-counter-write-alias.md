# Frontend logo counter: separate write alias

`func_80075D58_46208` matched with diff score 0 and a full ROM checksum of OK.

Negate the logo counter before multiplying by 30 (`-counter * 30`) to reproduce the rotation arithmetic. The remaining difference was confined to the final conditional counter increment: IDO shared its read and write address in `v0`, emitting `lui; addiu; lw; addiu; sw`. The target reads through `t8` with a folded low offset and writes through a separate `lui $at`.

Use the existing separate-symbol CSE workaround for this final write:

```c
if (arg0 == 0) {
    D_80094860_64D10_W = D_80094860_64D10 + 1;
}
```

Declare the alias in `include/variables.us.h` and resolve it in `undefined_syms.us.txt` using a relocatable expression:

```ld
D_80094860_64D10_W = D_80094860_64D10;
```

The alias refers to the existing object and adds no data. Pointer casts, volatile access, and arithmetic identities did not prevent this address sharing. Keep the earlier logo-counter reads on the original symbol; changing all accesses perturbs the otherwise matching rendering code.
