`incorrect ASM`: In the partial `func_800FB504_10A4B4`, the projected X coordinate occupies `s0` across the remaining trig calls, while projected Y spills at `sp+0x78`. The target spills X at `sp+0x7C` and keeps Y in `s0`. The aim-clamp absolute value also emits a redundant `move v1,v0` before selecting its positive or negative arm.

`code changed`: Give the expired loop-index word a typed pointer phase, preserving the original global reload before each coordinate helper. Reuse its word member for the aim-adjustment and projected-Y scratch after the enemy scan has finished:

```c
union { s32 value; VehicleInstance *player; } work;
/* In the original index declaration position. */
work.player = D_80052B34;
if (!work.player) {
    D_80158FF4 = NULL;
    return;
}
type = &vehicleTypes[work.player->unk1A];
/* Refresh after the vehicle-type writes, before either helper call. */
work.player = D_80052B34;
func_80128504_1374B4((AlienInstance *)work.player, 1,
                    &worldX, &worldY, &worldZ);
```

Use the existing short `cosVal` for the level-four aim-clamp input and pass that same short to `coss`, rather than retaining the input in the general signed-word `diff` scratch:

```c
cosVal = D_80052B2C->unk36;
if (cosVal >= 0) {
    work.value = cosVal;
} else {
    work.value = -cosVal;
}
/* Inside the existing magnitude guard: coss(cosVal). */
```

`correct ASM`: The frame remains `0x98`; projected X ends in `mfc1 a1,...; sw a1,0x7C(sp)` and projected Y ends in `mfc1 s0,...` before the remaining two trig calls. The clamp emits `bltz; negu; b; move` without the redundant input copy. Its input register still differs from the target. The full enabled-function score improves from 3072 to 2483, but the function remains NON_MATCHING: loop-index cache placement, floating-register order, and several schedules still differ. Print-only diagnostic and native builds produced identical objects before the final default-toolchain validation.
