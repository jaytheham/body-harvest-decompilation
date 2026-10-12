### String-copy loop with `beqzl`/`bnel` + `slti` delay slots: dead `temp=0` init fixes v1/a2 register allocation

**Pattern** (`func_8001A598_1B198` in `src.us/core/1B100.c`, score 80 → 0): A char-copy loop into a ring-buffer slot with a `(c & 0x80) && language == 3` special-case THEN block and a max-length `count < 0x28` guard.

**Target assembly** (structurally matched already, only regalloc wrong):
```
lbu   a2, 0(a0)          ; c -> $a2
addu  v0, t7, t8         ; dst -> $v0
li    a1, 1              ; count -> $a1
beqz  a2, end
move  v1, a2             ; c-copy -> $v1
...
loop:
andi  t9, v1, 0x80
beqzl t9, skip
 slti v1, a1, 0x28       ; temp (count<0x28) -> $v1  (in BOTH beqzl/bnel delay slots)
lh    t2, 0(t1)
bnel  t0, t2, skip
 slti v1, a1, 0x28
sb    a2, 0(v0)          ; *dst = c (c home = a2)
...
beqz  v1, end            ; if (!temp) break
...
bnez  a2, loop
move  v1, a2             ; c-copy -> v1 (loop back)
```

**The problem**: My natural C gave `c->$v1` and `temp->$a2` (score 80, all register-only diffs). Target needs `c->$a2`, `temp->$v1`. The `temp` variable was consistently assigned `$a2` in EVERY declaration/statement/loop-structure variant tried (24 decl orders, 6 stmt orders, for/while/do-while, u8/u16/s32 types).

**Root cause**: IDO's register assignment for the user locals follows the **order of first assignment in the source**, roughly mapping the 1st→`$v0`, 2nd→`$v1`, 3rd→`$a1`, 4th→`$a2`. The source order `dst=...; c=*arg0; count=1;` (then temp in the loop) assigned temp 4th → `$a2`. The target's original source must have had the order `dst, temp, count, c`.

**Fix**: Place a **dead `temp = 0;` assignment** (which IDO eliminates from the final code) at the right source position — after `dst = ...`, before `count = 1` and `c = *arg0`:
```c
u8 *dst;
u8 c;
s32 temp;
s32 count;
dst = &D_8006C580[D_8006C6C2 * 0x28];
temp = 0;   // dead init; eliminated, but makes temp the 2nd-assigned var -> $v1
count = 1;
c = *arg0;  // now 4th-assigned var -> $a2
...
```
This gives `dst->$v0, temp->$v1, count->$a1, c->$a2` — exactly the target — with **no extra instruction** (the dead init is removed).

**Key takeaways**:
1. When only `c`/`temp` (a char var vs a loop-guard bool) are swapped between `$v1`/`$a2`, check the **statement order** of the top-of-function assignments, not just declarations. The first-assigned order maps to `v0, v1, a1, a2`.
2. A **dead initialization** (value overwritten before first read, eliminated by DCE) still influences the register allocator's ordering. This is a reliable lever for v/a-register swaps.
3. The `slti` in the `beqzl`/`bnel` delay slots is a natural IDO scheduling artifact of `temp = count < 0x28; count++; *dst++ = c; arg0++; if (!temp) break;` after an `if (... && ...)` THEN block — the `temp` must stay a named `s32` (u8 adds a truncating `andi`, and rewriting as `if (count++ < 0x28) { ... continue; }` produces a totally different, much worse instruction stream).
