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
