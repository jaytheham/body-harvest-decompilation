# An extra naked `jr ra; nop` at the end of a function means an explicit `return;` in the source

**Symptom.** `bh.sh check` reports a mid-size score (here **505**) on a function whose two columns
read *identically* for every row in the function's own range - the documented "useless table, real
score" trap. `ins_diff -noregs` gives **delta -2** (ours short by two instructions), so the score is
inflated by the shifted TU tail (`check-score-charges-shipped-tail-on-instr-count-deficit.md`).

**The two missing instructions are a duplicate epilogue, and they are a source statement.**
Aligning the target `.s` against `objdump -d` of the `.o` shows ours ends with the normal
`lw ra / addiu sp / jr ra / nop` while the target ends with **two** `jr ra / nop` pairs - the second
one **naked** (no `lw ra`, no `addiu sp`). IDO emits exactly that shape when the source has an
explicit `return;` at the end of the *conditional* block:

```c
void f(void) {
    if (cond) {
        ...body...
        return;      /* -> the function's real epilogue */
    }
    ...tail...       /* the natural end: a naked jr ra / nop */
}
```

Adding the `return;` (nothing else - same statements, same literals) took `check` **505 -> 0** and the
gate passed. Without it the function is two instructions short, every later symbol in the TU shifts,
and the score is a tail artifact.

**Triage rule.** When a target's `.s` ends with two consecutive `jr ra` (the second without
a preceding `lw ra`) and `ins_diff` reports a small negative delta, add `return;` at the end of the
conditional block that the `jr ra` belongs to. Do **not** chase the score with declaration or
register permutations - it is one statement. (A trailing `return;` at *function* scope measured
neutral here; the placement inside the `if` is what matters.)

Observed on `func_802D5BF8_1EE908` (`overlay_level/java/1ED9E0.c`, 123 instr, no marker), 2026-10-08:
a clean hand-written guess 2 instructions short, 505 -> 0 on the one edit.
