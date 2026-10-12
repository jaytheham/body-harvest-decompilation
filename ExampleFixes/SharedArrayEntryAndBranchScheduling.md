# Shared array entry and branch scheduling

Matched example: `func_80095530_A44E0` in `src.us/overlay_gameplay/outside/A40B0.c`.

When several branches use the same array entry, compute the entry pointer once before the conditional chain:

```c
entry = &D_8013CBC0_14BB70[arg0];
if (arg0 < 0x20) {
    /* category-specific property address */
} else if (arg0 < 0x35) {
    /* category-specific property address */
}
```

Repeating the identical entry assignment in every branch generated almost the same assembly, but IDO scheduled parts of the index multiplication later in two branches. It also placed the final switch index shift after the clamps instead of in a branch delay slot, generating an extra instruction overall. Moving the common entry assignment before the conditional chain fixed all three scheduling differences and produced an exact ROM match.

This is a useful source-level experiment when arithmetic and register allocation already agree but array-index shifts or switch-index shifts occupy different branch delay slots. Equivalent optimized expressions can still retain enough compiler provenance to affect scheduling elsewhere in the function.
