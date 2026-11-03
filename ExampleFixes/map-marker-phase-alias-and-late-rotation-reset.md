# Incorrect ASM

In the still-unmatched `func_800966EC_A569C`, the phase update cached one
address across its signed read and unsigned write:

```asm
lui     v0,%hi(D_8013D50C_14C4BC)
addiu   v0,v0,%lo(D_8013D50C_14C4BC)
lh      t6,0(v0)
/* ... */
sh      t8,0(v0)
```

The rotation-Z zero store also moved before the floating-point position
calculation, changing its setup and the vertex-pointer spill order.

# Code changed

Read the existing phase object and write through its existing external
alias declaration:

```c
D_8013D50C = (s16)D_8013D50C_14C4BC + 0x300;
```

Bind that alias to the object in both version-specific undefined-symbol
files, using a relocatable linker expression:

```ld
D_8013D50C = D_8013D50C_14C4BC;
```

Place the rotation-Z reset after the rotation-Y assignment:

```c
D_80052B48.unk2 = -0x4000 - D_80052B34->unk6;
D_80052B48.unk4 = 0;
```

# Correct ASM

The phase read and write now have the target's independent address setup:

```asm
lui     t6,%hi(D_8013D50C_14C4BC)
lh      t6,%lo(D_8013D50C_14C4BC)(t6)
lui     at,%hi(D_8013D50C)
/* vertex-pointer reloads and phase addition */
sh      t8,%lo(D_8013D50C)(at)
```

The rotation reset uses `sh zero,4(a1)` after the player-yaw load. The
following multiply, conversion, transform call, phase update, and pointer
reload sequence match. The first 138 instructions are also exact. The
function remains wrapped: its aggregate score is 1020, versus the prior
1718, with the target `0x30` frame and `0x4D8` text size. Native US and EU
ROM checks pass with the assembly fallback selected.
