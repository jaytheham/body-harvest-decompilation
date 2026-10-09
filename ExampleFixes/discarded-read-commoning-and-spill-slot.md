# Discarded field read preserves scheduling without a local home

In `func_8007FB08_8EAB8`, a flag word must load before the instance collision byte is updated. Reading the word into a named `s32 flags` and testing that local matched all instructions and registers, but reserved a local home and put the cached type pointer at `sp+0x1C` instead of the target `sp+0x20`.

Keep the early read as a discarded expression, then test the field directly:

```c
alienTypes[arg1].unk54;
alienInstances[arg0].unk47 |= 4;
if (alienTypes[arg1].unk54 & 2) {
    result = func_80082A98_91A48(arg0);
} else if (alienTypes[arg1].unk54 & 0x10000080) {
    result = func_80082CA0_91C50(arg0);
}
```

IDO commons the early read with the later tests. Removing the named local frees its home while preserving the load order. An explicit `(void)` cast also matched, but is unnecessary. Removing the early expression changes scheduling. Direct instance array access also eliminated a pointer local and matched the timeout increment in the branch delay slot.

Use an outer `if/else` for the successful collision and fallback paths, with a shared final zero return. Keep the two timeout cases under one success return. Separate early returns produced extra branches and a branch-likely halfword load.

Verified with `tools/make.ps1`: `build/bh.us.z64: OK`.
