### Switch case with `bnezl + lw ra` early return from bit-field check

**Context:** Non-leaf switch function where one case checks two bit positions from
a bitfield word, and early-returns 1 if the first bit condition is met.

**Target pattern:**
```asm
srl  t0, v1, 0xC       # t0 = word >> 12  (shared shift result)
andi v0, t0, 0x10      # v0 = bit16 test
xori t1, v0, 0x10      # t1 = (v0 ^ 0x10) = bit16_check
sltu v0, zero, t1      # v0 = (bit16_check != 0) = !bit16_set
bnezl v0, 906c         # if !bit16_set, return 1 (branch to addiu sp epilogue)
lw   ra, 0x14(sp)      # delay slot: restore ra (only executed when branch taken)
andi v0, t0, 0x1       # bit12 check (reuses t0!)
xori t2, v0, 0x1       # bit12_inv
b    9068
sltu v0, zero, t2      # delay: v0 = (bit12_inv != 0)
```

**Working C form that achieves score 1185 (not perfect due to other non-matched TU functions):**
```c
case 0xB1: {
    u32 v = *(u32 *)(D_80050AE0 + arg0[1] * 24);
    u32 vr = v >> 12;
    u32 bit16_check = (vr & 0x10) ^ 0x10;  // explicit XOR forces xori instruction
    u32 bit12_inv;
    if (bit16_check != 0) {
        return 1;
    }
    bit12_inv = (vr & 1) ^ 1;  // explicit XOR forces xori+sltu pattern
    return bit12_inv != 0;
}
```

**Key patterns:**
- Use `(vr & 0x10) ^ 0x10` explicitly (NOT `!(vr & 0x10)`) to force the `xori+sltu`
  pattern. `!(vr & 0x10)` generates `andi; beqz` directly without the extra instructions.
- Use `(vr & 1) ^ 1` explicitly (NOT `!(vr & 1)`) to force `xori t2, v0, 0x1` then
  `sltu v0, zero, t2` pattern in the delay slot.
- The `bnezl` (branch-likely) with `lw ra` in the delay slot is a scheduler optimization
  for non-leaf early returns. It fires when the branch goes to the epilogue directly past
  the `lw ra` instruction, loading ra in the delay slot instead.
- The `bnezl v0, 906c; lw ra` pattern requires `sltu v0, zero, ...` to put the condition
  in v0 so that `bnezl v0` directly uses the return register as the branch condition.

**Companion case 0xB5 (check if bit16 IS set):**
```c
case 0xB5: {
    u32 v = *(u32 *)(D_80050AE0 + arg0[1] * 24);
    return ((v >> 12) & 0x10) == 0x10;  // generates xori; sltiu pattern
}
```

**Remaining differences at 1185:**
- Jump table address mismatch (other non-matched functions in same TU shift rodata)
- Register renames v0↔v1 in B5/B1 from load register allocation
- Case A7: `slt a0` instead of target's `slt v0` for `!()` comparison (register cascade
  from A6's different temp register choices)
