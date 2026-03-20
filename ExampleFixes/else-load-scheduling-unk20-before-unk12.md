### Else-block load scheduling: put `unk20 &= ~mask` BEFORE `unk12 = expr` to pre-schedule loads

When the target assembly's else-block starts with multiple independent loads (`lw t0` for arg1, `lw t8` for unk20, `li at` for mask) before any computation — and the bnez delay slot is `li a1, 0x800` (function call upcoming) — the fix is to put the `unk20 &= ~0x4000` assignment BEFORE the `unk12 = ...` computation in the else block:

```c
} else {
    alienInstances[arg0].unk20 &= ~0x4000;                         // FIRST: triggers early lw unk20
    alienInstances[arg0].unk12 = (s16)(((arg1 - 0xFA) >> 2) << 5); // SECOND
    if (alienInstances[arg0].unk12 < spec_val >> 1) {
        alienInstances[arg0].unk12 = (s16)(-(spec_val >> 1));
    }
}
```

With `unk20 &= ...` first, IDO pre-schedules both `lw arg1` and `lw unk20` at the top of the else block. This means the else block provides its own loads without relying on a bnez delay-slot pre-load. The bnez delay slot is then free for the compiler to use `li a1, 0x800` (pre-loading the function call argument for the fall-through path). The deferred `sw unk20` store goes into the `beqz` delay slot at the end. Writing `unk12 = ...` FIRST causes IDO to use the bnez delay slot to pre-load arg1 for the else path instead, breaking the scheduling.
