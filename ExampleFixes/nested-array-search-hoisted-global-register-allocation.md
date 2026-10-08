# Nested array search: let IDO hoist the global comparison

Matched `func_80116724_1256D4` with IDO 5.3 -O2 -mips2 -32.

For a forward struct-array search containing a reverse byte-array search, use
the outer array index directly and compare the byte against the global:

```c
s32 building_idx;
s32 door_idx;

for (building_idx = 1; building_idx < 0xFF; building_idx++) {
    door_idx = 3;
    while (door_idx--) {
        if (buildingInstances[building_idx].doorInteriorIds[door_idx] == buildingInteriorToLoadId) {
            D_80052540 = building_idx;
            D_80052544 = door_idx;
            return;
        }
    }
}
```

IDO hoists the invariant global load and converts both indexed accesses into
pointer induction. The resulting registers are v0 for the building index,
a0 for the door index, a1 for the global value, a2 for the building pointer,
and a3 for the reverse byte pointer. The post-decrement also produces the
target's unused `move v1,a0` and `bnez a0` with a delay-slot decrement.

Caching the global in a local before the loop preserved the logic but claimed
v0 for that value and shifted the remaining register allocation. An explicit
building pointer likewise preserved the instruction sequence but allocated
different registers. Removing both locals produced the exact match.

The three contiguous door fields are exposed as `doorInteriorIds[3]` through
a union with their existing named members, preserving offsets and struct size
while allowing valid array indexing.
