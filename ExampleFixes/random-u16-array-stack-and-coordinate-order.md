# Random u16 array layout and coordinate operand order

Matched `func_80089200_981B0` in `src.us/overlay_gameplay/outside/884C0.c`.

Three random values survive a fourth random call. The target stores them at
`sp+0x38`, `sp+0x3A`, and `sp+0x3C` in a `0x40` frame. Three separate `u16`
locals placed one value at `sp+0x3E`; reordering them merely shifted which
value occupied each slot. A single `u16 random[3]` produced the target slots.

For the effect coordinates, write the struct field before the random term:

```c
alienInstances[arg0].unk0 + (random[0] % arg2) - (arg2 / 2)
alienInstances[arg0].unk2 + (random[1] >> 10)
alienInstances[arg0].unk4 + (random[2] % arg2) - (arg2 / 2)
```

Writing the random term first generated the same arithmetic but changed
temporary registers and moved the X sign extension and Y field load before
the first division's exception checks. Field-first expressions restored the
target schedule. Explicit `s16` argument casts were unnecessary because the
effect function already declares those parameters as `s16`.

Keep the `(s32)arg1` cast on the random modulo in the initial condition:
the target uses unsigned division for the global-plus-index side and signed
division for the random side.

Verification: `tools/make.ps1` reported `build/bh.us.z64: OK`.
