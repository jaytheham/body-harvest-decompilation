### Inlining file-scope `const char[]` into `osSyncPrintf` keeps .rodata byte-identical

Placeholder string consts at the top of the file (used only by `osSyncPrintf`) can be replaced by the literal directly in the call. IDO emits literals per-function in source order, **before** the function's float/double constants, and does **not** deduplicate identical literals — which is exactly how the target rodata is laid out.

```c
// BEFORE - placeholder consts at the top of the file
const char D_80144260_153210[] = "ERROR: StripModelToBones array overflow, size %d, max %d\n";
const char D_8014429C_15324C[] = "Generating shadow for (%d), %s";
const char D_801442BC_15326C[] = ".";
const char D_801442C0_153270[] = ".";
const char D_801442C4_153274[] = ".OK\n";

osSyncPrintf(D_80144260_153210, count, 0x145);
osSyncPrintf(D_8014429C_15324C, vehicleType->unk18, D_800344B4_350B4[vehicleType->unk18].name);
osSyncPrintf(D_801442BC_15326C);   // in func_800E8A00_F79B0
osSyncPrintf(D_801442C0_153270);   // in func_800E8A00_F79B0
osSyncPrintf(D_801442C4_153274);   // in func_800E8A00_F79B0

// AFTER - literals inline, consts deleted; same rodata at the same addresses
osSyncPrintf("ERROR: StripModelToBones array overflow, size %d, max %d\n", count, 0x145);
osSyncPrintf("Generating shadow for (%d), %s", vehicleType->unk18, D_800344B4_350B4[vehicleType->unk18].name);
osSyncPrintf(".");
osSyncPrintf(".");
osSyncPrintf(".OK\n");
```

Resulting target rodata order is preserved: `"ERROR: ..."`, `"Generating shadow ..."`, `"."`, `"."`, `".OK\n"`, then `.float 10000`, then the `0.55`/`0` doubles.

Verified on `src.us/overlay_gameplay/outside/F7870.c` (`build/bh.us.z64: OK` and `build.eu/bh.eu.z64: OK`, the file being shared with the EU build).
