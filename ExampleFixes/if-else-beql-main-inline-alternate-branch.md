### if/else with `!= 0` matches `beql` — main path inline, alternate in `else`

When the target assembly uses `beql` (branch likely) to branch to an alternate path while keeping the main path inline, use `if (cond != 0)` with the **main path** in the if body and the **alternate path** in the `else` body. This matches the compiler's natural code generation: the branch is taken to the else body (alternate), and the main path falls through inline.

If a shared setup is performed before the if/else (e.g. a conditional decrement), combine the conditions to avoid an extra branch:

**Wrong (goto-based — precomputes addresses, wrong branch targets):**
```c
if (D_80157590 == 3) {
    goto alternate;
}
if (D_8004DC60 != 0) {
    D_8004DC60--;
}
if (D_8004DC60 == 0) {
    goto alternate;
}
// main path: FillRects + scissor
goto end;
alternate:
// alternate scissor
end:
gSPDisplayList(...);
```

**Correct (if/else with != 0 — no address precomputation, matches beql):**
```c
if (D_80157590 != 3 && D_8004DC60 != 0) {
    D_8004DC60--;
}

if (D_8004DC60 != 0) {
    // main path: FillRects + scissor
} else {
    // alternate scissor
}

gSPDisplayList(...);
```

**Rule:** When the target has `beql` branching to an alternate and the main path follows inline:
1. Use `if (cond != 0)` for the main/alternate split
2. Merge preceding conditions into a single compound condition
3. Put the shared code (e.g. final gSPDisplayList) OUTSIDE the if/else to avoid duplication
4. This prevents the compiler from precomputing global addresses before the branch boundary

### Counter-case (earned park): a plain `bnez` where the ROM uses `bnel`

In `func_80071F08_159FC8` (`overlay_gameplay/inside/158330.c`) the second `if (D_80047B70.unk0 == 0) { ... } else { ... }` compiles, with our current source, to `bnez t8,<else>` with the *then-path* constant (`li t9,0x40`) in the delay slot. The ROM instead uses `bnel t8,zero,<else>` with the *else-path* constant (`addiu t6,zero,1`) in the delay slot, and hoists the check's `lui t8,%hi(D_80047B70)` into the outer `beqz`'s delay slot. Everything else in the function is byte-identical (structural delta +0, a single differing block by `allblocks.py`).

Tried and measured **neutral** (all still score 535): rewriting as `if (!D_80047B70.unk0)`, flattening the inner `else` into a fallthrough `return`, flattening the outer `else`, and reordering the then-body statements (`musicId = ...` before `D_800E65A8 = 0x40;`). Reordering the else body to `func_8007343C_15B4FC(); D_800E65A8 = 1;` made it worse (995). Do not re-tread these: the likely-vs-plain branch choice here is an IDO scheduling decision, not reachable from these source shapes.
