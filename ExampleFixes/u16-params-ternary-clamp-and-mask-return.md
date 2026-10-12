### Matching color-clamp function with `u16` params, ternary `<`, and explicit return masking

When a small leaf function takes 5-bit/6-bit color values and clamps them, the target assembly may show:

1. **`andi ..., 0xFFFF`** on all params (zero-extension to u16)
2. **`slti ..., N; beqz`** (branch if >= N) with the clamp as the branch target
3. **`b` + `andi`** (keep value path) for values below threshold
4. **Extra masking** on the return value (e.g., `& 0x3F` and `& 0xFFFF`) even after clamping

**Key changes to match:**

1. **Declare params as `u16`** (not `s32`) — this generates `andi ..., 0xFFFF` zero-extension
2. **Use ternary with `<`** — `x = x < N ? x : N` generates `slti; beqz; b; andi` pattern (branch to clamp when >= N, keep-value as fall-through + jump)
3. **Explicit `& N` on return** — even if clamping makes it redundant, add `(blue & 0x3F)` and `& 0xFFFF` on the final expression to generate the exact masking instructions
4. **Update `functions.us.h`** — the declaration must also use `u16` for parameters, or IDO may spill and reload with wrong instructions

**Before (score 5350):**
```c
s32 func(s32 red, s32 green, s32 blue) {
    if (red > 0x1F) { red = 0x1F; }
    if (green > 0x1F) { green = 0x1F; }
    if (blue > 0x3F) { blue = 0x3F; }
    return (red << 0xB) + (green << 6) + blue;
}
```

**After (score 0):**
```c
s32 func(u16 red, u16 green, u16 blue) {
    red = red < 0x1F ? red : 0x1F;
    green = green < 0x1F ? green : 0x1F;
    blue = blue < 0x3F ? blue : 0x3F;
    return ((red << 0xB) + (green << 6) + (blue & 0x3F)) & 0xFFFF;
}
```

Also update `functions.us.h`:
```c
s32 func(u16 arg0, u16 arg1, u16 arg2);
```
