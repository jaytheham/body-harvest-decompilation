`incorrect ASM`: In `func_802DD104_25C844`, separate source lines for the three transformed-coordinate stores and `func_80128428_1373D8` let IDO emit the coordinate stores before the outgoing pointer arguments:

```asm
sw      v1,0x7c(sp)
sw      t0,0x80(sp)
sw      v0,0x84(sp)
sw      t8,0x18(sp)
sw      t9,0x10(sp)
move    a3,t7
```

-> `code changed`: Keep those stores and the call on one physical source line:

```c
sp7C[0] = flags; sp7C[1] = tempVar; sp7C[2] = callResult; func_80128428_1373D8(&alienInstances[arg0], flags, tempVar, callResult, &sp78, &sp74, &sp70);
```

-> `correct ASM`: The outgoing pointer arguments and final integer argument now appear first, in the target order:

```asm
sw      t8,0x18(sp)
sw      t9,0x10(sp)
move    a3,t7
```

This is a verified partial scheduling fix. The normal-prototype native US function diff fell from 1092 to 739. Copying Y before X in the first `sp7C`-to-`sp90` forwarding step further reduced it to 725. With C enabled, the full US ROM remains unmatched (`FAILED`); pointer spill offsets, register ownership, and later store ordering still differ. No match is claimed.

The stopped checkpoint retains the `NON_MATCHING` guard, so its normal ROM build uses the assembly fallback.
