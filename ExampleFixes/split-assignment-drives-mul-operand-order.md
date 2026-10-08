# Split assignment drives the operand order of a commutative FP op

**Symptom.** Function is otherwise instruction-for-instruction identical, but `asm-differ` will not
go below a small score. The differences are individual `mul.s`/`add.s` rows where the two source
registers are the other way round:

```
TARGET:  mul.s $f0, $f2, $f4
OURS:    mul.s $f0, $f4, $f2
```

For a commutative operation the value is the same, but the encoding is not, so the sha1 still fails.

**What does NOT work.** Swapping the operands inside the expression (`a * b` -> `b * a`) changed
nothing: IDO emitted the same instruction either way. The lever is the *statement*, not the operand
text.

**What works.** Write the product as a split assignment, with the scalar as the accumulator:

```c
/* scores 30 - one mul.s per component, operands reversed */
temp_f0 = D_800FB6E0 * D_800FB6A8[0];

/* scores 0 */
temp_f0 = D_800FB6E0;
temp_f0 *= D_800FB6A8[0];
```

**Evidence.** `func_8008A1D8_172298` (`overlay_gameplay/inside/16AF30.c`, 241 instructions) sat at
**30** with all three products written directly; the three differing rows were exactly the three
`mul.s` operand pairs. Splitting all three into scalar-then-`*=` reached **0**, with no other change.

**Related.** `assignment-reordering-commutative-order.md` covers the neighbouring case where the
*order of statements* matters; this one is about a single expression's shape. Note also that the
matched **twin** is not authority on this detail: the greece twin of this function
(`func_800DB350_EA300`) writes the first three products directly and matches *there*, while the java
original needs the split form. Copy the twin's register-level shape, not its statement breakdown,
and be ready to try both forms.
