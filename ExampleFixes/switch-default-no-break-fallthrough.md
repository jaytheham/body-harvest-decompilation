### Switch default without `break` shifts register cycle and changes default body placement

When a switch statement's `default:` case includes a `break`, IDO places the default body *before* the other case bodies in the emitted code, using `li reg, val; b epilogue; sb reg (delay slot)`. This causes:
1. The default body consumes one fewer instruction (delay slot absorbs the store).
2. All case bodies branch to the epilogue directly.
3. The temp register cycle for case values starts one register later (e.g., t7,t8,t9,t6 instead of t6,t7,t8,t9).

**Fix**: Remove `break` from the `default:` case (when it is the last case in the switch). IDO then places the default body as a **fall-through** instruction right before the epilogue:
- `b default_body; li t9, val (delay slot)` → then at default_body: `sb t9, field` falls through to epilogue.
- Other case bodies branch *past* the default body to the epilogue.
- The temp register cycle starts one register earlier, matching the target.

```c
/* Wrong (score 235 — register cycle rotated +1, default in delay slot): */
switch (arg1[4]) {
case 0:    arg0->unk44 = 8; break;
case 0x4000: arg0->unk44 = 1; break;
case 0x8000: arg0->unk44 = 4; break;
default:   arg0->unk44 = 2; break;  /* break present */
}

/* Correct (score 0 — registers t6,t7,t8,t9, default falls through): */
switch (arg1[4]) {
case 0:    arg0->unk44 = 8; break;
case 0x4000: arg0->unk44 = 1; break;
case 0x8000: arg0->unk44 = 4; break;
default:   arg0->unk44 = 2;         /* no break */
}
```

Score improvement: 235 → 0. The function was 4 bytes shorter with `break` (default store in delay slot), but the target has it as a separate instruction. Removing `break` from the last case in a switch causes IDO to generate the fall-through pattern.
