# Comet coordinate reads and trigonometric arguments

`func_802D9F60_31E0B0`:

- `lh a1, offset(sp)` with early coordinate stores -> add `(void)sp6C;` before calls that consume `(s16)sp6C` -> retain the full word value in `t0`, narrow with `sll`/`sra`, and schedule `sw t0, offset(sp)` in the call delay slot. A plain scalar works; an array of one is unnecessary.
- `lh v0, 6(s0); addiu a0, v0, 0x4000` -> call `sins((u16)(alienInstances[arg0].unk6 + 0x4000))` and the corresponding `coss`, replacing an explicit `& 0xFFFF` and a cached sum -> `lh a0, 6(s0); addiu a0, a0, 0x4000; andi temp, a0, 0xFFFF; jal; move a0, temp`.
- Velocity in `v0` and joint pointer in `v1` -> retain `if (alienInstances[arg0].unkA) {}` before the speed threshold -> velocity uses `v1`, joint pointer uses `v0`; no additional instructions remain.
- Constant 2 allocated before the joint update and its address setup delayed -> assign the attack state after the actor and joint rotation updates -> target scratch registers and the hoisted address setup match.
- Frame `0x98` and pointer spills four bytes high -> use direct `alienInstances[arg0]` accesses instead of a named actor pointer, with explicit root index and squared-distance components -> frame `0x90` and all source and compiler spill offsets match.
