# Node-index copy controls later distance register allocation

Matched `func_802DB16C_193C7C` with IDO 5.3, using the full ROM build.

The initial C was only two instructions away: the second coordinate delta
and its square used `v1` instead of target `t1`. It assigned a delta local,
but recomputed that delta inline in the squared-distance expression.
Replacing the inline expression with `SQ(deltaZ)` alone promoted another
local into a register and changed allocation throughout the function.

The fix was to also copy the initial skeleton-node index through the local
later used for the remaining impulse strength:

```c
nodeIndex = alienInstances[arg0].unkC;
strength = nodeIndex;
nodes[2] = nodeIndex;
nodes[0] = D_8014DD50[strength].unkC;
nodes[1] = D_8014DD50[nodes[0]].unkC;
/* ... */
deltaX = D_80052B34->unk0 - effectX;
deltaZ = D_80052B34->unk4 - effectZ;
strength = 0x127690;
nodeIndex = SQ(deltaX) + SQ(deltaZ);
if (strength > nodeIndex) {
    strength -= nodeIndex;
    /* Apply impulse using strength. */
}
```

Using only `strength` for the initial index matched the distance calculation
but swapped `v0` and `v1` in the prologue and flag tests. Keeping `nodeIndex`
for the `nodes[2]` store and its copy for the first lookup fixed both regions.
The copy produces no extra machine instruction.

When a named local fixes one register mismatch but shifts allocation across
the function, inspect whether that local could have been reused earlier.
An explicit copy can affect IDO allocation even when the generated move is
eliminated. This exact form produced diff score 0 and `build/bh.us.z64: OK`.
