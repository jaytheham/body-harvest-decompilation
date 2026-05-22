# Inline Condition Defers Array Load After Bounds Check

## Pattern

When a bounds check on an index (`arg >= MAX`) is the first condition of an `||` chain, and the array element is also accessed inside that same `||` chain, the compiler can defer the array load until **after** the bounds check — exploiting short-circuit evaluation. If the array access is pre-assigned to a local variable *before* the `if`, the compiler must compute it eagerly (before the branch), causing wrong instruction ordering and extra register pressure.

## Symptom

- Target assembly: `slti at, t3, MAX` / `beqz at, error` **then** (in fall-through) `lui` + `addiu` + array index computation + `lbu`
- Current assembly: `lui` + `addiu` + array index computation placed **before** the `slti`/`beqz` — early, unconditional
- The delay slot `sw a3, 0x2c(sp)` appears after `beqz` in target but before it in current

## Bad (eager computation)

```c
s32 type = D_80154088[arg3].unk0;
if (arg3 >= 0x1E || type != 1 || type == 0xFA || ...) { ... }
```

Compiler must compute `D_80154088[arg3]` address and load `unk0` **before** the branch.

## Good (deferred via short-circuit)

```c
if (arg3 >= 0x1E || D_80154088[arg3].unk0 != 1 || D_80154088[arg3].unk0 == 0xFA || ...) { ... }
```

IDO's GVN/CSE merges the two identical loads into one register, and because of short-circuit evaluation the load is **only emitted on the fall-through path** — after the bounds check branch. This matches the target's instruction ordering exactly.

## Also Relevant

- Removing an intermediate `idx` variable (e.g. `s16 idx = arg3`) when the parameter is already `u8` avoids spurious sign-extension (`sll/sra` pair) and a stack store/reload. Use `arg3` directly throughout.
