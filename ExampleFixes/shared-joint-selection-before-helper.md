### Select a joint before one shared helper call

`func_802D83D0_257B10` matches all 194 instructions and passes the full US ROM checksum.

The target selects one of two signed halfword joint indices, then calls the same helper once:

```c
if (alien->unk20 & ALIEN_FLAG_Z) {
    chosenJoint = sp58;
} else {
    chosenJoint = sp54;
}
func_800A3D00_B2CB0(arg0, chosenJoint, 2, (s32)&D_802DFB38_25F278);
```

Duplicating the helper call in both branches prevents the target's shared argument setup. Reusing the earlier `sp56` joint local instead of a fresh selector emits branch-local `sh` stores and a shared `lh`, and also changes the opening joint-load registers. A dedicated `s16 chosenJoint` plus a padding halfword replaces the existing unused word without changing the frame; the selector stays directly in `a1`.

Declare the six persistent joint halfwords first in stack order `sp5E`, `sp5C`, `sp5A`, `sp58`, `sp56`, `sp54`, then the instance pointer. This preserves the `0x60` frame and restores all six target halfword homes. Together with the fresh selector, it also restores the earlier speed-dependent helper branch's argument loads and delay slots.
