### A removed assignment can change IDO temporary allocation order

In `func_802D9510_258C50`, the final two differences were a squared-distance save and reload at `sp+0x20` instead of `sp+0x24`. All other instructions already matched.

The successful source computes the coordinate differences, then assigns the distance expression to an existing local before the first flags test:

```c
dx = alienInstances[arg0].unk0 - alienInstances[arg0].unk14;
dz = alienInstances[arg0].unk4 - alienInstances[arg0].unk18;
desiredHeading = dx * dx + dz * dz;
if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKF)) {
    /* Conditions repeat dx * dx + dz * dz directly. */
}
/* Later overwrite desiredHeading with the steering helper result. */
```

The initial assignment is unused and disappears from the generated instructions. Nevertheless, presenting the distance expression before the flags load changes UOPT expression ordering and gives the distance temporary the required stack slot. Using the local in the distance conditions instead, or adding an empty condition on the expression, changes code generation.

Two other details were necessary: the near-distance case is an `else if` after the entire far-distance condition chain, and the final `a3 = 0x12C` follows the state-clear checks. In the random activation branch, the two flag updates precede the timer assignments in C even though IDO schedules the timer stores earlier in assembly.

Verified with an exact function diff and `tools/make.ps1`: `build/bh.us.z64: OK`.
