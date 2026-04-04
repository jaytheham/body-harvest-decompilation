### Multiply order vs loop pointer register allocation — mutual exclusion

When a function copies from slot A (indexed by arg0) to slot B (indexed by arg1) using two pointer variables `sp` (src loop ptr) and `dp` (dst loop ptr):

- `sp = base + arg0 * stride + offset` — depends on arg0's multiply
- `dp = base + arg1 * stride + offset2` — depends on arg1's multiply

**Target requires:**
1. `multu a0` before `multu a1` (arg0 multiply first)
2. Loop pointers: `v0 = dp` (destination), `v1 = sp` (source)

**The constraint:** IDO -O2 assigns `v0` to the FIRST declared pointer variable and `v1` to the SECOND. For `v0 = dp`, dp must be declared/computed FIRST. But dp depends on arg1's multiply result, which forces arg1 multiply to come first. If sp is declared first (sp depends on arg0, forcing arg0 multiply first), then sp gets `v0` (wrong register).

**These requirements are mutually exclusive:**
- arg0 multiply first → sp computed first (from srcOff chain) → sp gets v0 (wrong)
- dp gets v0 → dp computed first (from dstBase) → arg1 multiply must be first (wrong)

**Best achievable score:** Use the srcOff-first chain to get arg0 multiply first and correct setup ordering at the cost of swapped v0/v1 loop pointers:

```c
s32 srcOff = arg0 * 0x7A + 0x53;
s32 srcIdx = srcOff + 1;
u8 *srcPtr1 = &D_800431C0 + srcIdx;  // forces arg0 chain first
u8 *sp = &D_800431C0 + srcIdx + 1;   // sp before dstBase = arg0 first
s32 dstBase = arg1 * 0x7A;
s32 dstOff = dstBase + 0x53;
s32 dstIdx = dstOff + 1;
u8 *dstPtr1 = &D_800431C0 + dstIdx;
u8 *dp = &D_800431C0 + dstIdx + 1;   // dp after sp
```

Key insight: the long srcOff derivation chain (`srcOff → srcIdx → srcPtr1 → sp`) with sp declared BEFORE dstBase forces arg0 multiply first (because sp's computation requires all prior srcOff values). The named integer indices (`srcOff`, `srcIdx`, `dstOff`, `dstIdx`) force explicit pointer chain formation rather than immediate-offset encoding.

**Constant folding note:** Even with named `s32 srcOff = arg0 * 0x7A + 0x53`, IDO -O2 will fold 0x53 into immediate-offset loads unless `srcOff` is used as an INTEGER in a computation like `srcIdx = srcOff + 1` (which requires srcOff to stay in a register and forces `addiu t0, mflo, 0x53` to be emitted explicitly).
