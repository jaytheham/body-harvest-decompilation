incorrect ASM: In `func_80074FF0_15D0B0`, the heading conversion uses `mfc1 t3,f16; andi t4,t3,0xFFFF`, and the FOV constant uses `li t5,0x238E` before the camera-X argument store. The target uses heading t5/t6 and FOV t7 after that store.

-> code changed: Use the existing first word local for the camera-Z assignment result and preserve a signed-word width round trip at that call argument: `(cameraZ = (s32)(s64)((s32)D_8008DDFC_175EBC))`. The promotion and truncation preserve every signed 32-bit value. Observational UGEN and native AS1 traces were checked against identical stock object bytes; the eliminated wide-copy requests account for the temporary order.

-> correct ASM: The heading now uses `mfc1 t5,f16; andi t6,t5,0xFFFF`. The FOV uses `li t7,0x238E`, with the camera-X store ordered first. The frame remains 0x108 and all ROM bytes outside this function are exact. This is a partial correction: camera Z still uses v0 instead of target t1, and transform initialization remains unmatched. The complete function score improves from 2118 to 1266, so its NON_MATCHING fallback is retained.

incorrect ASM: In the structurally matching renderer, separate locals for the half-dimension and catalog flags put the dimension in `v1` at ROM offsets 0x15D214, 0x15D21C, 0x15D228 and 0x15D230.

-> code changed: Reuse the catalog flag word for the half-dimension before the culling call. Replace the vacated word with padding so the three transform array offsets stay fixed.

-> correct ASM: Both dimension conversions use `v0` and the downstream register allocation stays exact. With the C version enabled and its 180.0 late-rodata placeholder removed, both ROMs differ only at `mfc1 v1,f18` and `sw v1,0x18(sp)`, which use `t1` in the target. The assembly fallback and its constant remain in the normal build.
