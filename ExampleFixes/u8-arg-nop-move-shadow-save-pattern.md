### u8 parameter type generates prologue shadow save + NOP move pattern

#### Pattern

When a function parameter is type `u8` (unsigned char), IDO generates a specific prologue pattern:
- `sw a2, 8(sp)` — save to shadow area before any modification
- `move t5, a2` — copy to temp register (IDO plans zero-extension but value already valid)
- `move a2, t5` — restore (NOP, since u8 is already zero-extended by caller per ABI)

This appears **without** any `andi` (zero-extension) or `sll/sra` instructions, as IDO recognizes
the caller has already zero-extended the `u8` argument per ABI.

#### Wrong: s8, s32, int

- `s8 arg2` → generates `sll t6, a2, 0x18; sra t7, t6, 0x18` (sign-extension, score ~5000)
- `int arg2` → no extension, no NOP moves, no shadow save → missing 6 prologue instructions (score ~2342)
- `s8 arg2` with `(u8)` cast at use site → still generates sign extension (score ~4800)
- `s8 arg2` with `n.n[0]` (s8 field) access → still generates sign extension (score ~3900)

#### Correct: u8

`u8 arg2, u8 arg3` → IDO generates the NOP move pattern correctly:
- No sign/zero extension code
- Shadow saves for all argument registers
- NOP `move t5, a2; move a2, t5` pair
- Direct `sb a2, offset(base)` for stores

#### Context

This was found for function `func_80005110_5D10` which sets up a 4-vertex textured quad. The
parameters arg2 and arg3 are color components (r, g) stored to `Vtx.v.cn[0]` and `Vtx.v.cn[1]`
(both `unsigned char`). The `gSPVertex` high-bit pattern uses `(Vtx *)((s32)ptr + 0x80000000)`
(addition, not OR) to generate `addu` not `or`.

#### Also note

- `gSPVertex` with physical address: use `(Vtx *)((s32)D_8005BB34 + 0x80000000)` (addition)
  to get `addu` instruction matching target; OR (`| 0x80000000`) generates `or` instruction.
- `u8 alpha = 0xFF` as local variable causes IDO to precompute `li t4, 0xff` once and reuse.
- `extern s16 D_800313E4_31FE4;` needed in `include/variables.us.h`.
