### Write alias for global reload prevents address CSE

When a global variable is read before a function call, needs to be reloaded after (because the function might modify it), and also written to later in the function, IDO may precompute and cache the global's address in a temp register, generating `lui + addiu + lw 0(reg)` instead of the combined `lui + lw %lo(reg)` form.

**Symptom:** The first instruction uses `lui t1, 0x8015` instead of `lui a2, 0x8015`, with an extra `addiu t1, t1, -0x1338` before the `lw`. This cascades into pervasive register allocation differences throughout the function (all temp registers shifted by 1).

**Root cause:** Three accesses to the same global (read, read, write) trigger IDO to CSE the address computation. The compiler computes `&D_glob` into a register like `t1` and reuses it for all three accesses.

**Fix:** Use a **write alias** — a separate extern symbol at the same address — for the WRITE operation only. This breaks the pattern so the compiler sees only reads from the original symbol and a write to a different symbol, preventing address CSE.

**Also:** Moving the reload to be **unconditional** (after the if/else block rather than inside one branch) can fix instruction scheduling issues (e.g., `lbu` being interleaved between `lui` and `lw`).

**Example:**

```c
// In undefined_syms.us.txt:
D_8014ECC8_W = 0x8014ECC8;

// In variables.us.h:
extern s32 D_8014ECC8;
extern s32 D_8014ECC8_W;  // write alias at same address

// In the .c file:
activeCount = D_8014ECC8;          // 1st read
...
if (cond) {
    func_that_may_modify_glob();
}
activeCount = D_8014ECC8;          // 2nd read (unconditional reload)
...
D_8014ECC8_W = activeCount + 1;    // write via alias symbol
```

This generates the correct `lui reg; lw reg, %lo(glob)(reg)` pattern for reads and `lui at; sw reg, %lo(glob)(at)` for the write.
