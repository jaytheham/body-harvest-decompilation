### A nested one-liner `return` diverts IDO's temp bank; sequence the same expression through a named local

When a short accessor is written as a single nested `return` expression, IDO keeps every intermediate
in one expression tree and allocates its temporaries from a bank that starts one register lower than
the target's (the base pointer lands in `v1` instead of `a0`, and every later temp shifts with it).
Rewriting the *same* computation as sequential statements through a named `s32` local allocates the
bank on the target's ladder (`a0, t7, t8, v1, t9, t0`) and the function matches. The opcodes,
instruction count and frame are identical in both versions - only the register bank differs, so the
score symptom is a small constant (here 55) with no structural difference at all.

```c
// WRONG - nested return; base in $v1, byte load in $t9 (score 55):
s16 func_802DFF84_3240D4(u8 arg0) {
    return D_8014DD50[D_8014DD50[func_802DFF04_324054(arg0)].unkC].unkD;
}

// RIGHT - the matched twin's shape; base in $a0, byte load in $v1 (score 0):
s16 func_802DFF84_3240D4(u8 arg0) {
    s32 chain;

    chain = func_802DFF04_324054(arg0);
    chain = D_8014DD50[chain].unkC;
    return D_8014DD50[chain].unkD;
}
```

The lever is the twin's **statement shape**, not its literals: the sibling `func_802DFFC8_324118` in
the same file (already matched, same call, a longer `.unkD` chain) has exactly this shape, and its
`.s` shows the same `a0` base / `v1` byte allocation the target needs. When a short function with a
`jal` + global-array chain lands in the wrong caller-saved bank with everything else identical, copy
the matched sibling's statement sequencing rather than iterating on the expression.

Contrast `named-s32-temp-vs-direct-cse-regalloc.md`, where *removing* a named local is what fixes the
bank: the rule is that the C shape selects the bank, and the twin's `.s` tells you which shape it is.
