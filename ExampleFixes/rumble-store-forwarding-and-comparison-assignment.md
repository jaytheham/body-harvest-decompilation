### Store forwarding before a signed integer-to-float conversion

In `func_80001190_1D90`, the original C copied `D_8004767C` to
`D_800313CC_31FCC`, then used `D_8004767C` in a floating-point expression.
The target instead converts the value read back from `D_800313CC_31FCC`:

```c
D_800313CC_31FCC = D_8004767C;
if (D_8004768C >= 0x2711) {
    temp_f0 = D_80036C88_37888 / D_8004768C;
    D_800313CC_31FCC = D_800313CC_31FCC * (temp_f0 * temp_f0 * temp_f0);
    D_800313CC_31FCC /= 2;
}
```

IDO forwards the stored value but emits `move t9,t8` before `mtc1 t9,f10`.
Using the source global directly removes that move and changes subsequent
temporary registers. Reading the destination reproduced the complete body.

### Assignment inside a comparison controls operands and load scheduling

The opening comparison needed `beql v0,t6`, with the previous-mode load before
the gameplay-mode load. Reversing the direct global operands or adding signed
casts did not fix it. A separate `mode = gameplayMode;` statement fixed the
branch operands but reversed the loads. The matching form was:

```c
s32 mode;

if ((mode = gameplayMode) != D_80047698) {
    func_800010C4_1CC4(0);
    D_80047698 = gameplayMode;
}
```

The assignment expression preserves the required load scheduling while giving
the gameplay value the required position in the equality branch. The complete
ROM verified `build/bh.us.z64: OK` after removing redundant casts and unused
locals.
