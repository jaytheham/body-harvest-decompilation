### Static no-op stub after wrapper produces dead `jr $ra; nop`

**Pattern:** A wrapper function that calls one other function appears to have dead `jr $ra; nop` instructions at the end of its assembly, beyond the normal epilogue.

**Example target assembly (func_802D60DC_1EEDEC):**
```
addiu sp, sp, -0x18
sw    ra, 0x14(sp)
jal   func_802D5FE4_1EECF4
nop
lw    ra, 0x14(sp)
addiu sp, sp, 0x18
jr    ra
nop
jr    ra          ← "dead"
nop               ← "dead"
```

**Cause:** The "dead" `jr $ra; nop` is NOT dead code within the wrapper. It is a **static no-op callback stub** placed immediately after the wrapper in the C source. Because the stub is `static` (no exported symbol), the linker cannot name it directly. The *next* function references it via `func_802D60DC_1EEDEC + 0x20` (base symbol + byte offset).

**Detection:** Look at the function immediately following – if it passes `&previous_function + 0xN` as a `void*` callback argument, the preceding function likely has an embedded stub at that offset.

**Fix:**
```c
void func_802D60DC_1EEDEC(void) {
    func_802D5FE4_1EECF4();
}

static void func_802D60FC_stub(void) {
    /* no-op callback; address passed as func_802D60DC_1EEDEC + 0x20 */
}
```

An empty static void function compiles to exactly `jr $ra; nop` (2 instructions, 8 bytes). Placing it immediately after the wrapper matches the target bit-for-bit and the ROM checksum will pass.

**Key rule:** `static void empty_func(void) {}` compiles to `jr $ra; nop` with IDO -O2 (leaf function, no saved registers, no body).
