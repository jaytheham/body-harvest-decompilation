# `check`'s score charges the shifted tail when our body's instruction count differs

**Symptom.** `bh.sh check <func>` reports a large score (here **4252** on a 171-instruction
function) whose table spans far more rows than the function has instructions - the printed TARGET
column ran `f856c` -> `f9568`, i.e. **945 rows**, while the function's own `.s` is 171 instructions
(`f856c..f8814`). The skill flags "target rows outside the function's own range" as the signature of
a **stale `asm/`**, but here that diagnosis is wrong: `make extract` + re-measure reproduces 4252 and
the same 945-row span. So do not burn a tick on `refresh` for this signature.

**Cause (proven from the linker map, not inferred).** Our compiled function is **163 instructions to
the target's 171** (`ins_diff -noregs` delta -8). Within one translation unit the linker packs
functions sequentially, so an 8-instruction (32-byte) deficit moves every *later* symbol in that
TU's segment: `build/bh.us.map` puts our `func_800E9868_F8818` at `0x800E9848` where the ROM has
`0x800E9868`. `asm-differ` scores the whole affected window, so the number is dominated by the
downstream shift rather than by this function's own divergence.

**Rule.** When `ins_diff` shows a non-zero delta, treat `check`'s score as uninformative for
judging how close the body is - read the **aligned blocks** instead. Collapsing the pseudo-op forms
as well (`or r,r,$zero` <-> `move`, `addiu r,$zero,N` <-> `li`) on a hand-align of the target `.s`
against `objdump -d build/src.us/<rel>.c.o` gave **~33 differing rows** here, concentrated in:
the frame (`0x48` vs `0x38`) plus the missing `sw $a1,0x4C($sp)` argument home; an early
`or s0,$a2,$zero` + `sll t3,s0,8` copy in the deltaZ computation; and two scheduling spots. A score
of 4252 for ~33 real rows is the shift, not 33 x 5.

**Corollary for the budget.** A function whose count is short by N still needs those N instructions
found exactly - the count is not cosmetic, because it sets the addresses of everything after it in
the TU. Judge progress by `ins_diff`'s delta reaching 0 and its blocks emptying, not by the score
falling.

Observed on `func_800E95BC_F856C` (`overlay_gameplay/outside/F7870.c`, 171 instr, port
*Draw distance*), 2026-10-07.
