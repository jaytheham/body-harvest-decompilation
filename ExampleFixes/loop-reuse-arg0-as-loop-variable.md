# Loop: Reuse arg0 as loop variable for correct register allocation

## Problem

When a loop that uses the parameter reg (`$a1` / `$a0`) as its counter is compiled,
m2c often introduces a fresh local variable (e.g. `s8 i`). This causes the compiler
to alloc a new register (`$v0`, `$v1`) for `i`, while the target uses the original
arg register (`$a1`).

## Symptom

Diff shows register-only differences in the loop body — same instructions but using
`$v0`/`$v1` where the target uses `$a1`:

```
1027b0:   move  a1,zero        (target — loop var reuses arg0 in $a1)
1027b0:   move  v0,zero        (current — fresh variable in $v0)
```

## Fix

Replace the fresh loop variable with the parameter itself. If `arg0` is no longer
needed after the bounds check, reuse it as the loop counter:

```c
// BAD — introduces a new variable
s8 i;
for (i = 0; i < 8; i++) {
    D_80157FF0[i] = i;
}

// GOOD — reuses arg0, keeps $a1 as the loop register
for (arg0 = 0; arg0 < 8; arg0++) {
    D_80157FF0[arg0] = arg0;
}
```

## Why it works

IDO assigns registers to variables in declaration order. By reusing the parameter
variable, the compiler keeps the argument register (`$a1`) live for the loop, which
matches the target. Declaring a separate `s8 i` forces the allocator to pick a
fresh temp register instead.

## Example

`func_800F375C_10270C` in `src.us/overlay_gameplay/outside/F9230.c`
