# Pickup pointer comparisons and terrain-height registers

`func_800A854C_B74FC` in `src.us/overlay_gameplay/outside/B49C0.c`
matches with IDO 5.3 `-O2 -mips2 -32`.

The function queries three signed halfword terrain outputs, selects a floor,
and clamps a pickup to that floor. With the instruction sequence and stack
layout already correct, eight words still differed: IDO loaded the two terrain
heights into `a0`/`a1`, while the target used `v1`/`a0`, both after the query and
after the pickup stores.

The decisive change was using the existing pickup pointer in the comparison:

```c
entry = &D_8014F6D0[i];
/* Position updates and terrain query use the array accesses. */
if (entry->unk2 < yLimit) {
    entry->unk2 = yLimit;
    entry->unk8 = 0;
    if (D_80222A70 < yLimit) {
        if (sp8C < sp88) {
            /* ... */
        }
    }
}
```

Changing only `D_8014F6D0[i].unk2 < yLimit` to `entry->unk2 < yLimit`
resolved all eight register differences without changing any other instruction.
The pointer stores also preserve the required terrain-output reloads. Replacing
every array access with pointer access is unnecessary; inspect the comparison
and stores as a group when a local register mismatch persists.

Other details needed for this match:

- Update positions in source order X, Y, Z; IDO schedules the target's X, Z, Y
  loads and stores itself.
- Express random velocity updates as `velocity += (random() & 15) - 8`.
  Writing `(velocity + (random() & 15)) - 8` produced different operand registers.
- A harmless `if (i) {}` before the pickup-pointer assignment is eliminated
  from the emitted instructions but changes saved-register allocation. Removing
  it rotates the loop counter and global-address register homes. Keep it with
  an explanatory comment when preserving this exact match.

Declaration order determines the terrain output slots (`sp+0x8c`, `sp+0x8a`,
`sp+0x88`) and the float spills. Preserve it when making readability edits.
The final project build reported `build/bh.us.z64: OK`.
