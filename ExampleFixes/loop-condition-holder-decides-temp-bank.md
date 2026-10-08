### The holder of the loop condition decides the cfe temp bank

**Symptom.** A small function whose opcode stream, strides, homes and frame all match, and whose *only*
differing rows are the copies made at each loop exit:

```
TARGET:   or $a0,$t0,$zero   or $a0,$a3,$zero   or $a0,$a1,$zero   or $a0,$a2,$zero
OURS:     or $t1,$t0,$zero   or $t1,$a3,$zero   or $t1,$a1,$zero   or $t1,$a2,$zero
```

asm-differ scores this **20** (four rows x 5). The copies are provably dead (the destination is never
read), so this presents as the documented cfe temp-bank family.

**Cause.** The guess spelled each loop as `} while (counter--);`. The post-decrement value is a *dead
temporary* in cfe's temp bank. The original source instead keeps the counter's value in a variable and
tests **that**:

```c
counter = N;
do {
    arg0 = counter;        /* arg0 is a dead parameter, reused as the holder */
    *dst++ = *src++;
    counter -= 1;
} while (arg0 != 0);       /* IDO folds arg0 == counter: bnez counter; addiu counter,-1 */
```

The observed `or $a0,...` is that assignment, and because the destination is a *parameter*, the copy
lands in the parameter's own register (`$a0`) instead of a fresh temp.

**Measured on `func_80076FE0_47490`** (`overlay_gameplay/frontend/40720.c`, 27 instructions) - a
near-copy of the matched `core/E830.c` `func_8000DC30_E830`, differing only in constants (`0x6`->`0x7`,
innermost `0x1F`->`0xF`) and element width (`lh`/`sh` stride 2 -> `lw`/`sw` stride 4). Adopting the
donor's statement shape **verbatim, including its reuse of the two parameters as loop counters and the
`arg0 = <counter>` assignments at each loop exit**, reached `check` **0 on the first compile**:
20 -> 0. Instruction counts agree (27 = 27). The committed guess differed only in `while (counter--)`
and an `if (!arg0) {}` no-op.

Two corollaries:

- **Do not try to reproduce this with a no-op that keeps the parameter live.** The previously recorded
  reasoning for this function (an `if (!arg0) {}` inside the body "pins the counter band"; remove it and
  the counters take `$a0` and the score goes to 95) is a dead end: what is wanted is not `arg0` staying
  live, it is an **assignment to** `arg0`, which puts the copy in `arg0`'s own register.
- **A good recorded marker does not rule the donor out.** The seam rule "a good marker means the guess
  already beats the donor's body" is about transplanting the donor's *whole body*. When the donor is a
  near-copy differing only in literals and element width, copying its **statement shape** can still
  convert - here 0.74 points/instruction looked "already closer". Diff the two `.s` files and read the
  donor's C before believing the marker.
- Returning the parameters to `s32` and casting to the pointer type inside the body is free when the
  prototype is unprototyped (`include/functions.us.h` declares `void func_80076FE0_47490();`), so the
  donor's C can be adopted literally without touching any header.
