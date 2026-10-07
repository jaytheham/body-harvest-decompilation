### if/else with single return prevents global address precomputation

When a branch has two paths that both end with `return 1`, but one path accesses a global (e.g. `D_8015EA18++`) and the other accesses a different global/array, the compiler may precompute the simpler global's address (`lui`/`addiu`) before the branch, wasting a register (`v1`) and forcing other values into wrong registers (`a0` instead of `v1`).

**Symptom**: `lui v1, %hi(global)` appears BEFORE the `bne` instead of after it. The variable that should be in `v1` (e.g. a loaded struct field used as array index) gets pushed to `a0`. The `li v0, 1` (return value) appears before stores instead of in branch delay slots.

**Fix**: Use `if/else` with a SINGLE `return 1` at the end, instead of two separate `return 1` statements in each branch. This prevents the compiler from seeing two separate exit paths and precomputing addresses.

**Wrong (two return 1 — precomputes address):**
```c
if (building->unk11 == -1) {
    D_8015EA18++;
    return 1;
}
D_80146688[...].unk0A++;
return 1;
```

**Correct (single return 1 — rematerializes address):**
```c
if (building->unk11 == -1) {
    D_8015EA18++;
} else {
    D_80146688[...].unk0A++;
}
return 1;
```

Also relevant: when struct pointer is a uopt temp (spilled across jal), do NOT declare it as a named local — use inline `buildingInstances[arg0].field` access. This puts the spill at the correct stack offset (e.g. 0x1C instead of 0x18).

### A named pointer to a global struct makes IDO rematerialise the global address

Same lever, different symptom, and here it changes the **instruction count**, not just allocation. In
`func_8007F878_167938` (`overlay_gameplay/inside/1648A0.c`, 31 instr) the body held

```c
Unk8007F878_D6AD8 *ptr = &D_800E6AD8;
... ptr->unk18 ... ptr->unk426 ... ptr->unk425 ... func(ptr->unk404, ptr, ...)
```

and IDO kept `a1 = &D_800E6AD8` only for `sll`/first use, then re-materialised the base for most field
reads: `lui t8, 0x0` + `lbu t8, 0x426(t8)`, `lui t7, 0x0` + `lw t7, 0x18(t7)`, and yet another `lui`/`lw`
pair for the fourth argument. The target reads every one of them as an offset off the single base
register it built in the prologue (`lbu v0, 0x426(a1)`, `lw t7, 0x18(a1)`, `lw a3, 0x410(a1)`).

**Fix:** address the struct through the **global name** for the field reads, keeping the local pointer
only where the address itself is passed as an argument:

```c
if (D_800E6AD8.unk18 == 0) { return; }
func_8000CF4C_DB4C(temp, ptr, D_8009E4C8_186588[D_800E6AD8.unk426][D_800E6AD8.unk425].unkC, ...);
```

Measured **2470 -> 100** on that function (3 redundant `lui` + their dependent loads removed, giving
31 = 31 instructions against the target). Note the two intermediate steps that also mattered, both
measured: loading `temp` once and testing `temp` (not re-reading the field) removes a duplicated `lw`;
and passing `*(s32 *)&D_800E6AD8.unk410` (the field is `f32`, the prototype takes `s32`) replaces
`lwc1` + `trunc.w.s` + `mfc1` with the target's single `lw`.

**Do not re-tread:** hoisting the array element into a `Unk8009E4C8 *entry` local measured **1100**, and
reading the two subscripts through the local pointer (`ptr->unk426`) instead of the global measured
**1510** — both reintroduce the rematerialisation.
