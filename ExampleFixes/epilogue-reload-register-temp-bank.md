### Epilogue reload register: one register off is a temp-bank difference

**Symptom.** Every opcode, stack home, frame size and instruction count matches; the *only*
differing rows are the reload of a value spilled earlier and the store that consumes it:

```
TARGET:   lw  $t0,0x1C($sp)      sw $t0,%lo(<global>)($at)
CURRENT:  lw  $t6,0x1C($sp)      sw $t6,%lo(<global>)($at)
```

asm-differ scores this **10** (two rows x 5). It is *not* a liveness or declaration-order problem -
the value is spilled to the correct home (`0x1C($sp)`) at the correct point and every register
before the epilogue is identical.

**Measured on `func_800702C0_7F270` (`overlay_gameplay/outside/7F220.c`, 60 instr, marker 10):**

- `pattern_probe.py` learned transforms all neutral (`pad1`/`pad2`/`swap-last-decls`/`cast-u8-consts`/
  `cast-s16-consts` -> 10).
- Declaration order, scalar signedness, chaining the initial assignments, reusing the other local for
  the final store, and local scopes: **all 10** (also recorded by the previous author in the function's
  own comment).
- A one-element array holding the timestamp makes the reload land in the target's `$t0`, **but** shifts
  the gameplay-mode load and the millisecond-arithmetic temps down one -> **60**.

**Conclusion.** The register is chosen from cfe's temp free-stack, so the lever is whichever C shape
changes *which temp the final reload allocates* without disturbing the earlier temps - not the
declaration list. The near-match (array variant) proves the target register is reachable; the work
left is holding the earlier temps still. Do not re-tread declaration permutations on this family.
