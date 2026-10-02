# Mask before narrowing a helper argument

Matched `func_80083EF4_92EA4` with IDO 5.3 -O2 -mips2 -32.

For a helper accepting a `u8`, these expressions have the same value but different codegen:

```c
func_800F2D48_101CF8((u8)alien->unk20 & 7, alien->unk0, alien->unk4);
func_800F2D48_101CF8((u8)(alien->unk20 & 7), alien->unk0, alien->unk4);
```

The second form matches the target's `move a0,v0; andi t8,a0,7`, with the final `move a0,t8` in the `jal` delay slot. Casting before masking removes the two moves and shifts subsequent temporary registers. A named flags local restores the moves but changes the live impact parameter from `v1` to `a3`. The direct masked expression with its final `u8` cast matches both scheduling and allocation.

The `s16` impact parameter must also be modified in place with `arg2 /= 2`. A separate half-value local defers the original parameter load and removes the target's halfword spill/reload around the helper call. In-place modification gives the early `lh v1` and `sh v1` to the parameter's existing stack home.

Use one ratio expression, `strength = arg2 / (f32)(u32)alienTypes[typeIndex].unk32`, rather than a separate denominator float. The explicit `u32` conversion retains the target's unsigned-to-float fallback even though the field is a `u16`.
