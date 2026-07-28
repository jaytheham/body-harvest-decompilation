### Using `<< 2` (shift) instead of `* 4` (multiply) prevents CSE of arg0*4 in gSPTextureRectangle

**Problem**: In `func_8009BDB8_AAD68`, the `gSPTextureRectangle` macro was called with two expressions that both involved `arg0 * 4`:
- `xl = (s32)arg0 * 4`
- `xh = (arg0 + 0x15) * 4`

IDO's CSE (Common Subexpression Elimination) recognized that `(arg0 + 0x15) * 4` simplifies algebraically to `arg0 * 4 + 0x54`, and pre-computed `arg0 * 4` as a shared subexpression. This caused:
1. `sll a0, 2; addiu ..., 0x54` instead of target's `addiu a0, 0x15; sll`
2. `arg0 * 4` stored on stack instead of `arg0`, missing a reload + `sll` instruction

**Fix**: Replace `* 4` with `<< 2` for the xh expression:

```c
// Before (wrong - CSE kicks in):
gSPTextureRectangle(D_8005BB2C++, (s32)arg0 * 4, 0xA0, (arg0 + 0x15) * 4, 0xF4, ...);

// After (correct - matches target):
gSPTextureRectangle(D_8005BB2C++, (s32)arg0 * 4, 0xA0, (arg0 + 0x15) << 2, 0xF4, ...);
```

**Why it works**: `<< 2` is a different operation from `* 4` at the CSE level. IDO's GVN/CSE pass doesn't recognize `(arg0 + 0x15) << 2` as sharing the `arg0 * 4` subexpression with `(s32)arg0 * 4`, so it computes both independently. The target's `addiu a0, 0x15; sll` matches `(arg0 + 0x15) << 2` exactly.

Also, no local variables or padding needed — the stack frame is naturally 0x30 (48 bytes) without them.

**Applies to**: Any IDO function where two parameters of the same macro share a `var * 4` subexpression — replacing one with `<< 2` prevents CSE from merging them.
