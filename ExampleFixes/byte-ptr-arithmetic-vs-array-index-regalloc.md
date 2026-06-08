### Byte-level pointer arithmetic to fix register allocation in multiply-shift sequences

When array indexing like `D_800481C4[arg0 * 40]` (where `D_800481C4` is `s16[]`) produces a different register allocation than expected:

- The compiler computes `arg0 * 40` as index, then implicitly multiplies by `sizeof(s16) = 2` for the element access.
- This can split the computation into two phases: `(arg0*4 + arg0) << 3` (for `*40`) then `<< 1` (for `*2`), using different registers.
- The target may instead compute `arg0 * 0x50` as a single byte offset: `(arg0*4 + arg0) << 4`, reusing the same register throughout.

**Fix**: Replace array indexing with byte-level pointer arithmetic that directly uses the target's byte offset constant:

```c
// Before (register t9 for final shift):
D_800481C4[arg0 * 40] = 0x100;
//  -> sll t8, t7, 2; addu t8, t8, t7; sll t9, t8, 4

// After (register t8 reused, matching target):
*(s16 *)((u8 *)D_800481C4 + arg0 * 0x50) = 0x100;
//  -> sll t8, t7, 2; addu t8, t8, t7; sll t8, t8, 4
```

This applies whenever the target uses a direct `sll/addu/sll` sequence computing a byte offset, and your array indexing introduces an extra register due to implicit element-size multiplication.
