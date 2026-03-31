### Read-compare-conditional-write extern symbol: split read/write symbols to prevent address CSE

When a function reads an extern `s16` global, compares it, and conditionally writes back to the same variable, IDO at -O2 CSEs the address computation into `lui + addiu + lh/sh(0)` instead of using separate folded `lui + lh(%lo)` / `lui + sh(%lo)` pairs for each access.

**Symptom:** The target uses separate `lui reg, %hi(sym); lh reg, %lo(sym)(reg)` for the read and `lui at, %hi(sym); sh v0, %lo(sym)(at)` for the write. The current code generates `lui v1, %hi(sym); addiu v1, v1, %lo(sym); lh t8, 0(v1); ... sh v0, 0(v1)`.

This also prevents the compiler from filling branch delay slots with useful `lui` instructions from the next basic block.

**Fix:** Define a separate write-alias symbol at the same address in `undefined_syms_auto.txt`, declare it as a separate `extern s16` in the header, and use the alias for the store:

```c
// undefined_syms_auto.txt:
// D_8013E3F4_14D3A4 = 0x8013E3F4;
// D_8013E3F4_W = 0x8013E3F4;

// variables.us.h:
// extern s16 D_8013E3F4_14D3A4;
// extern s16 D_8013E3F4_W;

// C code:
if (D_8013E3F4_14D3A4 < (s32)D_80154304) {
    D_8013E3F4_W = D_80154304;  // write through alias
}
```

The compiler treats the read (`D_8013E3F4_14D3A4`) and write (`D_8013E3F4_W`) as different symbols, preventing CSE. At link time, both resolve to the same address, producing correct code with separate `lui` instructions for each access.

**When to apply:** Non-leaf functions where an overlay extern `s16`/`u8` is read, compared, and conditionally written — and the target assembly shows separate `lui+load(%lo)` / `lui+store(%lo)` pairs without `addiu`.
