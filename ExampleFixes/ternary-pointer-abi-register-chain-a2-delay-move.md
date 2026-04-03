### Ternary expression + named pointer + s32 return forces a2 for final lookup with delay-slot move

**Pattern**: A function loads a `u16` value from a computed pointer, tests bit 15 of it, returns 0 early if set, or uses the value plus a complex table lookup for the normal return.

**Target assembly tail**: `lbu a2, offset(a2); jr ra; move v0, a2` (loads byte into a2, returns via delay-slot move).

#### Key insights:

1. **Named `u16 *p` pointer** (not `u16 temp_v1 = ...` named value) gives the pointer `v0` and loads `*p` CSE'd into `v1`. Without the pointer variable, the intermediate goes into `t6`.

2. **Ternary expression** (`return cond ? early : expr`) keeps `p` (v0) alive across the branch evaluation, forcing IDO to use a fresh register (`a2`) for the final lookup chain rather than recycling `v0`.

3. **`s32` return type** (not `u8`): With `u8` return + ternary, IDO generates `andi v0, reg, 0xFF` in the delay slot. With `s32` return, it generates the clean `move v0, a2` that the target has.

4. **`(u32)*p << 0x16) >> 0x1C` bit-field extraction**: The `(u32)` cast is essential to produce `srl` (unsigned) instead of `sra` (signed) at the shift-right instruction.

5. **`|` operand order**: Put the bit-field extraction `(u32)*p << 22 >> 28` on the **LEFT** of `|` and the complex index expression on the **RIGHT**. IDO evaluates left-to-right: LEFT is computed first, RIGHT last. The most-recently computed value becomes RS in the `or` instruction. Result: target's `or t1, index_reg, bitextract_reg`.

#### Pattern template:
```c
s32 func(s16 arg0, s16 arg1) {
    u16 *p;

    p = (u16 *)((u8 *)TABLE_PTR + ((arg1 >> 8) << 9) + ((arg0 >> 8) << 1));
    return ((u32)*p >> 0xF) ? 0 : RESULT_TABLE[(((u32)*p << 0x16) >> 0x1C) | (((SMALL_TABLE[...] & 0xF) + level_scale - base) << 4)];
}
```

#### What NOT to do:
- `u16 temp_v1 = D_struct[...].field` → pointer goes into t6 instead of v0; final lookup into v0.
- `if (cond) return 0; return expr;` (if/else) → p becomes free before final lookup, IDO recycles v0 for the lookup instead of using fresh a2.
- `u8` return type with ternary → generates `andi v0, a2, 0xff` in delay slot instead of `move v0, a2`.
