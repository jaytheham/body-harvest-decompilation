### goto-loop switch: forcing v0=array_base and v1=constant for loop invariants

When a function uses a `goto`-based loop with a switch dispatch and has two pre-loaded loop
invariants in `v0` and `v1`, IDO's register allocator assigns priorities based on the expression
form in the loop body.

**Symptom:** Prologue shows `lui v1 (array_base); li v0, constant` — registers v0 and v1 are SWAPPED
from the target `lui v0 (array_base); li v1, constant`.

**Pattern:** The loop body in case 0xAF (or equivalent) computes `arg0 = array_base + arg0[1] * 3`.
IDO sees the multiply constant `3` as "used first" (inner multiply before outer add) and gives it
v0 (first allocation). The array base `D_8004D180` gets v1 (second allocation).

**Fix:** Use array subscript form `&D_8004D180[arg0[1] * 3]` instead of `D_8004D180 + arg0[1] * 3`.
The `&array[...]` notation causes IDO to treat the array base as the "loop counter" (primary
invariant → v0) while the stride constant becomes secondary (v1).

```c
/* WRONG — gives v0=3, v1=D_8004D180 */
arg0 = D_8004D180 + arg0[1] * 3;

/* CORRECT — gives v0=D_8004D180, v1=3 */
arg0 = &D_8004D180[arg0[1] * 3];
```

**Cascade effects:** Fixing v0/v1 ordering cascades through all cases. In case 0x99 (building instance
access), using v1 as element pointer (reusing v1=3 which is dead in that case's return path) and t3
for the building base requires an explicit named pointer variable:

```c
/* WRONG — uses v0 for both base and element ptr, missing addiu t3,t3,0xad8 */
return (s8)buildingInstances[arg0[1]].hitPoints < 1;

/* CORRECT — uses t3 for base (lui+addiu), v1 for element ptr */
BuildingInstance *bi = buildingInstances + arg0[1];
return (s8)bi->hitPoints < 1;
```

**Loop structure:** Use `goto loop` label at the switch statement (not an `if` wrapper) to avoid
generating a double range-check. The switch's own range check is the sole gating condition:

```c
s32 func(...) {
loop:
    switch (arg0[0]) {
    case 0x98: return ...;
    case 0xAF:
        arg0 = &D_8004D180[arg0[1] * 3];
        goto loop;
    }
    /* falls off: implicit return with v0 = D_8004D180 (default path) */
}
```

**No named type variable:** Use `switch(arg0[0])` directly (not `type = arg0[0]; switch(type)`)
to get `lbu t6, 0(a0)` as the pre-loop load (not in v0). The `goto loop` will have `lbu t6, 0(a0)`
in the delay slot of the branch.

Applied in `func_80007F60_8B60` (53F0.c) and pattern also present in `func_80007DE0_89E0`.
