`incorrect ASM`: In `func_800C0678_CF628`, the last unmatched instructions materialize the state address before the callback address:

```asm
lui     at,0x8014
lui     a0,0x800c
sh      a1,-0x2504(at)
jal     func_800074BC_80BC
addiu   a0,a0,0x678
```

-> `code changed`: Keep the signed-halfword state value in the store, but form a discarded all-ones mask from the callback address using 64-bit arithmetic:

```c
var_a1 |= -1;
D_8013DAFC_14CAAC[0] = (s16)(((u64)(u32)func_800C0678_CF628 | ~(u64)0) & (u64)(s64)var_a1);
func_800074BC_80BC(func_800C0678_CF628);
```

The OR is always all ones, so the store preserves `var_a1`. The address expression gives the callback producer an earlier lifetime. All wide arithmetic disappears from the final assembly. This fixes the address order but changes the final counter-decrement scratch register from the target T4 to T7. Narrow that final operand through a signed 64-bit conversion:

```c
D_8013D9C0_14C970[0] = (s16)(s64)remaining - 1;
```

The final destination is a signed halfword; narrowing before decrement preserves its stored low 16 bits. The intermediate conversion changes the compiler's temporary lifetimes without adding instructions.

-> `correct ASM`: The callback address precedes the state address, and the final decrement uses T4:

```asm
lui     a0,0x800c
lui     at,0x8014
sh      a1,-0x2504(at)
jal     func_800074BC_80BC
addiu   a0,a0,0x678
/* ... */
beqz    v0,end
addiu   t4,v0,-1
sh      t4,0(t1)
```

All 425 instructions and the 0x40-byte frame match. The `NON_MATCHING` wrapper and its assembly fallback are removed; the native US ROM checksum passes with the canonical callback API.
