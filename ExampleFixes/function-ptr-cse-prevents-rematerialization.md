### Function pointer address CSE prevents rematerialization (score ~1295)

When a function pointer symbol (e.g. `func_80070270`) is used as:
1. First arg to `osInvalICache(&func_80070270, ...)` (as `void*`)
2. In the size computation `(u8*)&end - (u8*)&func_80070270`
3. First arg to `func_800101F0_10DF0((s32)&func_80070270, ...)`

IDO 5.3 CSEs the address across all three call sites into one `a3` register, then spills
it to `sp+0x1C` across the intermediate function calls, and reloads it for the third call.
This adds 1 extra instruction (27 vs target 26), enlarges the frame (-0x20 vs -0x18),
and changes the jal delay slot from `subu a1, t6, a0` to `sw a3, 0x1c(sp)`.

**Target wants**: a0 = &func_80070270 computed just before each jal (two independent
`lui a0; addiu a0` sequences), with the size in the delay slot (`subu a1, t6, a0`).

**What was tried**:
- `(u8*)` casts for sizes: 1 spill (best, score 1295, function 1 instr too large)
- `(s32)` casts for sizes: 2 spills (worse, function 4 instr too large)
- local variable `void *start = &func_80070270`: extra spill slot (worse)
- `if(1)` basic block separation: more spills (worse)
- `func_80070270` without `&` vs `&func_80070270` mix: same as (u8*) approach
- `(0, expr)` comma trick for third call: same score, different stack offset

**Root cause**: IDO sees `&func_80070270` (void*), `(u8*)&func_80070270`, and
`(s32)&func_80070270` as the same address value and lifts it to an early `a3` register.
The cost model apparently prefers spilling over rematerialization when 3+ uses span
multiple function calls.

**Best form** (score 1295, `#ifdef NON_MATCHING` required):
```c
void func_NAME(void) {
    osInvalICache(&func_80070270, (u8 *)&D_CODE_END - (u8 *)&func_80070270);
    osInvalDCache(&D_CODE_END, (u8 *)&D_DATA_END - (u8 *)&D_CODE_END);
    func_800101F0_10DF0((s32)&func_80070270, (s32)D_ROM_SRC, D_ROM_END - D_ROM_SRC);
}
```

**Pattern context**: applies to overlay-loading functions (`func_80011674_12274`,
`loadFrontendData`, `func_800117D8_123D8`) that:
1. Invalidate instruction cache: `osInvalICache(overlay_start, code_size)`
2. Invalidate data cache: `osInvalDCache(data_start, data_size)`
3. DMA from ROM: `func_800101F0_10DF0(overlay_start, rom_src, rom_size)`
