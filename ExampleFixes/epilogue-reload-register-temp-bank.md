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

**Matched resolution (`func_800702C0_7F270`).** Declare the one-element reference array first,
calculate the unsigned 32-bit difference, then overwrite the array with the current timestamp
before calling the 64-bit helpers. Reuse the difference local for the helper result. The array's
cached value gives the final reload its `$t0` destination and preserves the spill at `sp+0x1C`.

Naming the difference removes the expression temporary that the original inline subtraction
allocated. Restore the temporary allocation phase by applying three `arg0 &= 0xFFFF;` operations
to the signed 16-bit parameter **before** `osGetCount()`. These leave the parameter unchanged.
IDO's assembler removes their instructions while their intermediate allocations remain effective.
One or two masks still shift the later registers; three produce the exact 60-instruction target.
Keep a short comment beside these deliberately redundant operations.

Inspect a diagnostic `cc -S` listing when the final object hides these effects. The scalar version
reloads into an uncoloured scratch register; the reused array reloads into its cached `$t0`.
The named difference uses `$v0`, whereas the inline subtraction draws `$t8` before its destination
is folded into `$a1`. Widening and narrowing the difference to restore that draw also allocates
an extra register pair and shifts the millisecond arithmetic, so it is not an equivalent fix.

Validation: full ROM build `build/bh.us.z64: OK`, function diff score **0**.
