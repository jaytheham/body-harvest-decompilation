### Use explicit byte offset pointer arithmetic to match regalloc in slot-indexed stores

When a function accesses a global via pointer arithmetic with a non-power-of-2 struct size, and the compiler computes the byte offset explicitly (e.g., `slot * 12`), using C's natural pointer arithmetic (`base + index * 6` where sizeof(element) = 2) may not generate the same code as computing the raw byte offset.

**Problem**: `*(&D_800FB702 + (slot * 6))` generates a `slot * 12` byte offset computation in the assembly, but the compiler's internal representation may keep intermediate subexpressions alive longer, causing a register allocation cascade. The cascade shifts all subsequent temp registers by 1.

**Solution**: Write the pointer arithmetic as an explicit byte-offset computation and cast:
```c
// Instead of:
*(&D_800FB702 + (slot * 6)) = effect;
// Use:
*(s16 *)((u8 *)&D_800FB702 + slot * 12) = effect;
```

This makes the compiler compute `slot * 12` directly (matching the assembly's `sll/subu/sll` pattern), and the intermediate `slot * 4` subexpression is not kept alive unnecessarily, allowing register reuse.

### Interleave struct field assignment groups to control register allocation

When a function has two groups of struct field assignments (e.g., 4 byte-load fields followed by 3 shift-computed fields), and the target assembly shows all 4 loads happening before the 3 shifts, but with different register allocation:

**Problem**: Putting all 4 loads first (C source order) causes the compiler to allocate sequential temp registers (t4, t5, t6, t7) for the loads, forcing the shifts into higher regs (t8, t9, t0). The target instead "reserves" t5-t7 for the shifts and uses t4, t8, t9, t0 for the loads.

**Solution**: Interleave the first load with all 3 shifts, then the remaining 3 loads:
```c
// Instead of grouping all loads then all shifts:
entry->unk2 = arg9;          // 1st load
entry->unkE = arg10;         // 2nd load
entry->unkF = arg11;         // 3rd load
entry->unk10 = arg12;        // 4th load
entry->unk8 = arg0 << 2;     // 1st shift
entry->unkA = arg1 << 2;     // 2nd shift
entry->unkC = arg2 << 2;     // 3rd shift

// Use load-1, shift-all-3, load-3 pattern:
entry->unk2 = arg9;          // 1st load
entry->unk8 = arg0 << 2;     // 1st shift (reserves t5)
entry->unkA = arg1 << 2;     // 2nd shift (reserves t6)
entry->unkC = arg2 << 2;     // 3rd shift (reserves t7)
entry->unkE = arg10;         // 2nd load (gets t8)
entry->unkF = arg11;         // 3rd load (gets t9)
entry->unk10 = arg12;        // 4th load (gets t0)
```

This causes the compiler to see the shift computations early, "reserving" t5-t7 for them, so the remaining loads fall into t8-t0 matching the target.

### Use `<< 2` instead of `* 4` for shift-by-constant

Prefer `arg0 << 2` over `arg0 * 4` when the target assembly uses `sll` (shift left logical). Both generate `sll`, but the `<<` operator may affect the compiler's internal expression representation and influence register allocation decisions.
