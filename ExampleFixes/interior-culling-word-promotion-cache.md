incorrect ASM: In `func_80074FF0_15D0B0`, the heading conversion uses `mfc1 t3,f16; andi t4,t3,0xFFFF`, and the FOV constant uses `li t5,0x238E` before the camera-X argument store. The target uses heading t5/t6 and FOV t7 after that store.

-> code changed: Use the existing first word local for the camera-Z assignment result and preserve a signed-word width round trip at that call argument: `(cameraZ = (s32)(s64)((s32)D_8008DDFC_175EBC))`. The promotion and truncation preserve every signed 32-bit value. Observational UGEN and native AS1 traces were checked against identical stock object bytes; the eliminated wide-copy requests account for the temporary order.

-> correct ASM: The heading now uses `mfc1 t5,f16; andi t6,t5,0xFFFF`. The FOV uses `li t7,0x238E`, with the camera-X store ordered first. The frame remains 0x108 and all ROM bytes outside this function are exact. This is a partial correction: camera Z still uses v0 instead of target t1, and transform initialization remains unmatched. The complete function score improves from 2118 to 1266, so its NON_MATCHING fallback is retained.

incorrect ASM: In the structurally matching renderer, separate locals for the half-dimension and catalog flags put the dimension in `v1` at ROM offsets 0x15D214, 0x15D21C, 0x15D228 and 0x15D230.

-> code changed: Reuse the catalog flag word for the half-dimension before the culling call. Replace the vacated word with padding so the three transform array offsets stay fixed.

-> correct ASM: Both dimension conversions use `v0` and the downstream register allocation stays exact. With the C version enabled and its 180.0 late-rodata placeholder removed, both ROMs differ only at `mfc1 v1,f18` and `sw v1,0x18(sp)`, which use `t1` in the target. The assembly fallback and its constant remain in the normal build.

incorrect ASM: In the room renderer, the field-of-view immediate moves ahead of the camera X store in both culling calls. Its register differs from the camera Z result, so the assembler can schedule it earlier.

-> code changed: In a diagnostic variant, pass each camera Z as `(s32)(s64)(s32)D_8008DDFC_175EBC`, capture the heading truncation in a signed word inside each call argument, then mask the low 16 bits. Apply the signed width round trip to the second culling result as well.

-> correct ASM: Both culling calls have the target argument and immediate order. The four heading-conversion words still differ because the conversion uses v1 where the target uses a temporary register.

incorrect ASM: Reusing the palette offset as the effect index shifts both draw and effect registers after the first palette selection. Keeping the scaled Z term first in the palette draw lets the swapped t4 and t9 assignments carry into later calls.

-> code changed: Keep the effect index separate from the palette offset. Declare a block-local byte selector before the LUT command, then read the selector field after the command. Promote the palette array index through two signed-width round trips. At the first palette draw, put the fixed-point Z term before the scaled Z term.

-> correct ASM: The palette read uses t2 for the selector and t3 for the offset, and the effect index and pointer use t0 and t2. Every instruction after the first palette draw matches. Enabled C differs from both reference ROMs at 39 instruction words inside this function. The assembly fallback remains active.
