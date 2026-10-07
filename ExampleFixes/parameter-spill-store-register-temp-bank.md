### Parameter-spill store register is a cfe temp-bank choice, not a source shape

**Function:** `func_80086E90_16EF50` (`src.us/overlay_gameplay/inside/16AF30.c`, `overlay_gameplay` area),
37 instructions, marker `// CURRENT(15)`.

**Measured score 5** (re-measured after `make extract`), and the entire 5 is **one row** — the
delay-slot store of the spilled `u8` parameter:

```
TARGET:  16ef98:  sb t6,0x23(sp)      <- the masked parameter, in t6, spilled into the
OURS:    16ef98:  sb a0,0x23(sp)         outgoing-arg scratch (reloaded as lbu a0,0x23(sp))
```

Every other one of the 37 instructions agrees byte-for-byte: the entry `andi t6,a0,0xFF`,
`sw a0,0x20(sp)`, `slti at,t6,0xF`, the early `move a0,t6` argument setup, the
`sll/subu/sll/addu` array-pointer chain, the `bnezl` guard, the pointer spill at `0x1c`, both `jal`s,
the `li at,0xFB` / `li t0,0xF1` case, the `sh` store, and the `ra`/`sp` epilogue. Frame is `0x20` in
both.

**Why the single register differs.** At the store (the first `jal`'s delay slot) **both `t6` and `a0`
hold `arg0 & 0xFF`** — `a0` because the function already did `move a0,t6` for the call argument
(instruction 5, present in both builds). The compiler picks whichever register it assigned to the
spilled parameter temporary: the target picked the masked temp `t6`, ours picked the parameter's own
register `a0`. Nothing in the source differentiates them.

**Measured levers, all neutral-or-worse (do not re-tread):**

| lever | result |
|---|---|
| `pattern_probe.py` — `pad1`, `pad2`, `swap-last-decls`, `cast-u8-consts`, `cast-s16-consts` | **5** (all neutral) |
| named `u8 slot = arg0;` used in the index and both calls | **5** |
| pass `arg0 & 0xFF` explicitly at both call sites | **1901** (adds instructions) |
| drop `volatile` from `sp1C` | **42** (changes the pointer reload shape) |
| permuter, `-j4 --stack-diffs --stop-on-zero`, ~12 400 iterations | base 15, **never went below base** |

**Rule:** when a diff row is the same opcode at the same address with a different **register name**,
and both registers provably hold the same value at that point, it is a cfe temp-bank choice — the same
family as `epilogue-reload-register-temp-bank.md` (Run 11) and `func_80000730_1330`. Treat "identical
stream, one-row score" as evidence for a temp-bank difference, and do not spend the attempt budget on
declaration/pad permutations or a literal-suffix mask.
