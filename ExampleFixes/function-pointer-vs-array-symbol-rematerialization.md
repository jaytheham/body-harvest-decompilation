### Function pointer vs. u8 array symbol prevents cross-call CSE rematerialization

When a symbol (e.g. `func_80070270`) is used as **both** a cache-invaliation base address and the first argument to a DMA copy call like `func_800101F0_10DF0`, IDO's CSE will keep the address live across intervening function calls — spilling it to the stack — if the symbol is declared as `extern void func_80070270(void)` (a function pointer).

**Symptom (wrong):** frame grows from 0x18 to 0x20; address loaded into `a3` with `lui/addiu`, then `move a0, a3`, then `sw a3, XX(sp)` in the JAL delay slot, and `lw a0, XX(sp)` later.

**Root cause:** IDO CSEs the address of a function-typed symbol across the two usages (`osInvalICache` and `func_800101F0_10DF0`), because both take the same underlying address. Declaring it as a function causes IDO to treat the derived address as a reusable value (not a rematerializable integer constant), which it spills across the intervening `jal` calls.

**Fix:** Redeclare the symbol as `extern u8 func_80070270[]` in `variables.us.h` (remove the function declaration from `functions.us.h`). Then use `func_80070270` (no `&` needed — array decays to `u8*`) directly as arguments:

```c
// Wrong (function pointer form — CSE spills to stack, frame 0x20):
osInvalICache(&func_80070270, (u8 *)&D_800909B0 - (u8 *)&func_80070270);
func_800101F0_10DF0(&func_80070270, D_40720, D_7F220 - D_40720);

// Correct (array form — two independent lui/addiu rematerializations, frame 0x18):
osInvalICache(func_80070270, (u8 *)&D_800909B0 - func_80070270);
func_800101F0_10DF0(func_80070270, D_40720, D_7F220 - D_40720);
```

With the `u8[]` declaration, IDO treats each occurrence as an independent `(u8 *)` address constant and generates a fresh `lui/addiu` pair for each use — no spill slot, no stack frame growth.

**Context:** applies to loader functions that:
1. Call `osInvalICache(codeBase, codeRegionSize)` — invalidates I-cache for loaded code
2. Call `osInvalDCache(dataBase, dataRegionSize)` — invalidates D-cache for loaded data
3. Call `func_800101F0_10DF0(codeBase, romStart, romSize)` — DMA copy from ROM to RAM
4. Call `bzero(bssBase, bssSize)` — zero-initialize BSS region

The `codeBase` symbol (`func_80070270`) is a linker-defined boundary marker (a ROM-segment start address), not an actual callable function — so the `u8[]` declaration is semantically correct.
