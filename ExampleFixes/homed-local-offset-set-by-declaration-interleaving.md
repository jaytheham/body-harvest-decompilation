# An address-taken local's frame home is set by its declaration *position*, not only its order

Symptom: the whole residual is one or two rows in the stack home of an address-taken local
(`addiu s8,sp,0x80` vs the target's `0x78`, or `lwc1 $f10,0x80(sp)` vs `0x78(sp)`), with
`ins_diff -noregs` delta +0, the same frame size in both, and every other row encoding-identical.

Do **not** stop after swapping the two declarations, adding pads, or declaring the pair as an array -
all of those were measured worse on `func_8009EE30_ADDE0` (`AAA70.c`, 192 instr, 13).
The home is assigned top-down in **declaration order over the whole declaration list**, so the lever
is the *position* of each declaration, relative to the others - not the pairwise order.

The lever that converted: enumerate every placement of the address-taken declarations among the
declaration list. On `func_8009EE30_ADDE0` the pair had to sit at positions 2 and 3 (0-based) with
`sp7C` before `sp78`:

    s32 var_s0;
    s32 var_s2;     /* an unrelated declaration BETWEEN the two floats: this is the lever */
    f32 sp7C;
    f32 sp78;
    s32 var_s1;
    s32 var_v1;
    s16 var_s4;

13 -> **0** on the first compile, 192 = 192 instructions, gate PASSED. 42 other placements measured
9-38; the best non-winning shape (9) was the permuter's own output, which put the two floats at
positions 1 and 3 - a genuine 13 -> 9 step, and the one that showed the lever existed.

Cost of the sweep: 44 variants, each one `tools/asm-differ/diff.py -m <func>` run (~2 s) - a single
tool call. Do this before parking a delta-0 stack-home residual as a cfe allocation item, and run the
permuter first when the body is large: here the permuter (`-j2 --stack-diffs --stop-on-zero`, 17k
iterations) produced exactly one output, which was the first half of the answer.
