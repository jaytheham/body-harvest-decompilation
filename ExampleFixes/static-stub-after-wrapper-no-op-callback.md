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

### The stub need not be referenced - IDO emits an unreferenced static leaf anyway

The `base + 0xN` reference above is a *good detector*, not a precondition. Measured on
`func_800787E8_1608A8` (`overlay_gameplay/inside/158330.c`, 109 instr, marker `CURRENT(240)`,
re-measured **465**): the target ends with the shared epilogue then a bare `jr $ra; nop` at
`0x80078994` = wrapper + `0x1AC` (107 instructions). **Nothing in the tree references
`0x80078994`** - not the source, not any `.data` word (`grep -rn 78994 src.us/ include/ asm/` finds
only the instruction itself). The next named function `func_8007899C_160A5C` sits at `0x8007899C`,
so the 8-byte no-op occupies the tail of the *preceding* symbol's range precisely because the stub
has no name.

Adding `static void func_80078994_stub(void) {}` immediately after the wrapper took `check`
**465 -> 0** and `gate` PASSED, and `objdump` of the `.o` shows IDO **emitted the unreferenced
static** as its own symbol (`jr ra; nop`) instead of eliminating it. So IDO 5.3 keeps an unreferenced
static leaf no-op: emit the stub whenever the `.s` tail shows the extra naked `jr $ra; nop`, even
when no `base + 0xN` reference can be found. (The `return;` placements were measured neutral on the
same function - end of the outer `if` block, end of the `else if`, and function scope all left the
body at 107 instructions.)
