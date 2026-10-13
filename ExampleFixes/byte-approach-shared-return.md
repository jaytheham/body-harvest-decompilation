# Byte approach helper: assign through the byte parameter and share the return

`func_800A1828_B07D8` matches with `u8` parameters and a `u8` return. Both directions use an inner if/else to assign the destination byte back into the current-value parameter when the step would overshoot; otherwise they update that same byte parameter. The outer if/else-if shares one final `return arg0`.

```c
if (arg1 < arg0) {
    if (arg0 < arg2 || arg0 - arg1 < arg2) {
        arg0 = arg1;
    } else {
        arg0 -= arg2;
    }
} else if (arg0 < arg1) {
    if (0xFF - arg2 < arg0 || arg1 - arg0 < arg2) {
        arg0 = arg1;
    } else {
        arg0 += arg2;
    }
}
return arg0;
```

Early returns produced different assembly despite equivalent logic. Direct `return arg1` omitted two target `andi` masks. Casting those early return expressions to `u32` recovered the masks, but left the final `move v0,a0` before `jr ra` rather than in its delay slot (score 65). The stock compiler listing showed a separate exit label between that move and `jr`, so folding source lines did not resolve it.

Replacing the early returns with byte assignments and sharing the final return recovers every instruction and register without the casts. IDO still emits the target's separate machine-code returns, including `jr; andi v0,a1,0xFF` for saturation and `jr; move v0,a0` at the final exit. Full ROM checksum verified.

When generating source variants, normalize indentation or assert each replacement changes the source; otherwise a space-based edit against tab-indented code can silently leave an experiment unchanged.
