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

## Variant: copy pointer args first, then recycle the arg regs

If the function starts by copying `arg0`/`arg1` into local pointer variables, the
original argument registers become available for later loop state. Reusing the dead
parameter variables can be the difference between a persistent register-only diff
and a match:

```c
// BAD — fresh locals push the loop state into a0/a1/a3/t regs differently
void func(s16 *arg0, s16 *arg1) {
    s16 *src = arg0;
    s16 *dst = arg1;
    s32 middle;
    s32 temp;
    ...
}

// GOOD — copy the pointers out, then reuse arg0/arg1 as the counters/temps
void func(s32 arg0, s32 arg1) {
    s16 *src = (s16 *)arg0;
    s16 *dst = (s16 *)arg1;
    ...
    arg1 = 9;
    do {
        ...
        arg0 = tile;
        *dst++ = *src++;
        ...
    } while (arg0 != 0);
}
```

This was needed in `func_8000DC30_E830`: keeping the source/destination pointers in
`v0`/`v1` and recycling `arg0`/`arg1` after that let IDO place the nested counters
in `a0`/`a1`/`a3`/`t0`, matching the target exactly.

## Example

`func_800F375C_10270C` in `src.us/overlay_gameplay/outside/F9230.c`
