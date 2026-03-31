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
