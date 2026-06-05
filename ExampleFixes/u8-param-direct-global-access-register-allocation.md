### `u8` parameter + direct global access fixes register allocation in else branch

When a function takes a `u8` index argument, accesses a struct array, and uses two `u8` globals (count and next), the register allocation in the else branch depends on whether the globals are assigned to local variables or accessed directly.

#### Problem

Using local variables for the globals causes the compiler to allocate `a`/`v` registers instead of the `v`/`t` registers the target expects:

```c
// ❌ WRONG – local variables force a1/a2/a3/v0/v1 register allocation
void func(u8 arg0) {
    u8 count;
    u8 next;
    if (D_800FB6F8[arg0].unk0 == 0xFA) {
        osSyncPrintf(...);
    } else {
        count = D_800FB7AC;          // → loaded into v0
        next = D_800FB7AD;           // → loaded into v1
        D_800FB6F8[arg0].unk0 = 0xFA;
        D_800FB7AC = count - 1;      // → uses v0/t1
        if (arg0 < next) {           // → uses v1
            D_800FB7AD = arg0;
        }
    }
}
```

This generates:
- `addu a1, t7, t8` (array ptr in a1 instead of v0)
- `lui a2, ...` / `lui a3, ...` instead of `lui v1, ...` / `lui a1, ...`
- `lbu v0, ...` / `lbu v1, ...` instead of `lbu t1, ...` / `lbu t3, ...`

#### Fix: access globals directly (no intermediate local variables)

```c
// ✅ CORRECT – direct global access uses t-registers matching target
void func(u8 arg0) {
    if (D_800FB6F8[arg0].unk0 == 0xFA) {
        osSyncPrintf(...);
    } else {
        D_800FB6F8[arg0].unk0 = 0xFA;
        D_800FB7AC = D_800FB7AC - 1;      // → lbu t1; addiu t2; sb t2
        if (arg0 < D_800FB7AD) {           // → lbu t3; slt at, a0, t3
            D_800FB7AD = arg0;
        }
    }
}
```

This generates the correct register allocation:
- `addu v0, t7, t8` (array ptr in v0 ✓)
- `lui v1, ...` / `lui a1, ...` (global addresses ✓)
- `lbu t1, ...` / `lbu t3, ...` (loaded values in t-registers ✓)
- `addiu t2, t1, -1` (count-1 in t2 ✓)

#### Key rules

1. Use `u8 arg0` parameter type (not `s32` with `arg0 &= 0xFF`) to generate the `sw a0, 0x18(sp)` home save and `move a0, t6` instruction.
2. Access `u8` globals **directly** without local variables to let the compiler use `t` registers (temporaries) instead of `v`/`a` registers.
3. The `D_800FB7AC = D_800FB7AC - 1` form (load-modify-store) keeps the loaded value in a `t` register because the compiler treats it as an ephemeral temporary, not a named variable.
4. Update the function declaration in `functions.us.h` to match (`u8 arg0` instead of `s32 arg0`).
5. Use proper symbols (`&D_800A4FD8_18D098`) instead of computed addresses to get `addiu` instead of `ori`.
