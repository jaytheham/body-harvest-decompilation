### Named pointer + named temp variable cause 8-byte frame growth (frame 0x40 vs 0x38)

When the target frame is 0x38 but the compiled code generates 0x40, check if you have:
1. A named `AlienWaveInstance *wave` (or similar) local pointer to a global array entry
2. A named `u8 waveCheck` (or similar) temporary for a combined if-condition + second if check

Each of these user-declared variables pushes the frame up by ~4 bytes because IDO reserves spill slots for them even when they end up staying in registers. The `&tmp` taken in the trailing call (func_800AE454_BD404) triggers "full stack height" allocation, causing ALL declared variables to get stack slots.

**Wrong (frame 0x40, waveCheck in $a0, wave in named pointer slot):**
```c
Unk80222A78 tmp;
u8 waveIdx;
AlienWaveInstance *wave;
u8 waveCheck;

waveIdx = arg0->unk9;
wave = &D_80223780[waveIdx];
func_800AF1F8_BE1A8(wave->xPosition, wave->yPosition, wave->waveSpecId, arg0);
// ...
if (arg0->unk0 == 1 && (waveCheck = *(&D_8003BCC6 + (s8)wave->waveSpecId * 0x60)) != 0x19) {
    tmp.unk1 = arg0->unk1;
    // ...
} else {
    tmp.pad3 = 0;
    waveCheck = *(&D_8003BCC6 + (s8)wave->waveSpecId * 0x60);
}
if (waveCheck == 0x19) { ... }
```

**Correct (frame 0x38, waveCheck in $v1 as compiler temp, wave as uopt temp at sp+0x20):**
```c
Unk80222A78 tmp;
u8 waveIdx;

waveIdx = arg0->unk9;
func_800AF1F8_BE1A8(D_80223780[waveIdx].xPosition, D_80223780[waveIdx].yPosition, D_80223780[waveIdx].waveSpecId, arg0);
// ...
if (arg0->unk0 == 1 && *(&D_8003BCC6 + (s8)D_80223780[waveIdx].waveSpecId * 0x60) != 0x19) {
    tmp.unk1 = arg0->unk1;
    // ...
} else {
    tmp.pad3 = 0;
}
if (*(&D_8003BCC6 + (s8)D_80223780[waveIdx].waveSpecId * 0x60) == 0x19) { ... }
```

**Why this works:**
- Removing the named `wave` pointer lets IDO create a uopt temp at sp+0x20 (with the natural 8-byte gap above ra at sp+0x14). A user-declared pointer would instead land at sp+0x18 (wrong offset).
- Removing the named `waveCheck` lets IDO use $v1 (naturally freed after writing waveIdx to tmp.unk9) as a compiler temp for the D_8003BCC6 result. IDO at -O2 does cross-if-else value propagation: the D_8003BCC6 value in $v1 from the first if condition evaluation persists through the if-true body (which only stores to tmp fields, never touching v1), so the second if can naturally reuse it. For the else path, IDO generates the recomputation at the L800AFE18 label.
- Two separate `if (*(...) == 0x19)` conditions (rather than a named variable capturing the result) lets IDO's optimizer decide whether to reuse the existing $v1 value or recompute — it naturally does the right thing.

**Also note:** If the function uses `void *arg0` in the declaration (e.g., to match a `void (*unkC)(void *)` callback), changing to `Unk80222A78 *arg0` may be needed for correct register allocation. IDO 5.3 produces an "Unacceptable operand of == or !=" error when comparing a `Unk80222A78 *` function to a `void (*)(void *)` field. Fix by casting at comparison sites: `unkC == (void (*)(void *))func_name`.
