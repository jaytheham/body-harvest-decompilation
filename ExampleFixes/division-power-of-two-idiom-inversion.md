# Decompiled `>> 2` + negative fixup = IDO's signed `/4` idiom, spelled inside-out

Symptom
-------

A function scores in the high hundreds with `ins_diff` reporting a **small non-zero delta** (here
`+3` on 192 instructions) and the first real INSERT/DELETE sitting in a short division block. The
differ table shows rows like:

```
bgez   s2,LBL
sra    s1,s2,0x2      <- the positive case, in the branch's delay slot
addiu  s2,s1,3
move   s2,t8
subu   a0,s2,s4
```

where the target has

```
bgez   s2,LBL
 sra   t8,s2,0x2      <- delay slot: the positive-case result
addiu at,s2,0x3
sra    t8,at,0x2      <- negative case overwrites the same temp
subu  a0,t8,s4
```

Cause
-----

The source wrote the *expanded* form of a signed power-of-two division:

```c
var_s0 = var_s2 >> 2;
if (var_s2 < 0) {
    var_s0 = (var_s2 + 3) >> 2;
}
```

But that expansion **is** what IDO emits for `var_s2 / 4`; it is not a shape the compiler
reproduces from the two-statement spelling. Writing it as a division makes IDO emit the target's
exact sequence, with the positive-case `sra` in the `bgez` delay slot and the negative case
overwriting the **same** temporary.

```c
var_s0 = var_s2 / 4;          /* -> bgez / sra(delay) / addiu at,src,3 / sra */
```

Measured on `func_8009EE30_ADDE0` (`src.us/overlay_gameplay/outside/AAA70.c`, 192 instr):
**823 -> 13 in one edit**. Closing the 3-instruction count deficit also realigns the whole TU
tail, so the score falls far more than the instruction count suggests.

How to spot it
--------------

`grep -nE ">> [0-9]+;" <file>.c` next to an `if (x < 0)` whose body shifts `(x + k)` by the same
amount, with `k == (1 << shift) - 1`. Any such trio is a division written out longhand. The
target's own `.s` confirms it: the positive-case `sra` appears in the branch's **delay slot**.

Related forms seen in this repo (same class, check the target before rewriting):
`/ 2` -> `sra` + `addiu 1`; `/ 8` -> `addiu 7`. Also applies to unsigned cases (`srl`), where the
fixup block should be **absent** — if the target has no fixup, the operand is unsigned.

Do not re-tread
---------------

Once the division is fixed the residual here was only 2 rows (a single `f32` local home, ours
`0x80` vs the target's `0x78`); do **not** chase it with declaration permutations — measured
worse: swapping the two `f32` declarations **18**, `s16` first **18**, a phantom pad first **36**,
last **44**, mid **44**, floats moved last **26** (baseline 13).
