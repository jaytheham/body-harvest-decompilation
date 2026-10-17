# Comet particle return declaration and state register

Incorrect ASM: after `jal func_800D16BC_E066C`, `func_802DE7C4_322914` loads the animation counter into `v0` and compares it there. The target uses `v1` at ROM offsets 0x323030, 0x32303C, 0x3230A8, and 0x3230AC.

Code changed: remove the Comet translation unit's `COMET_PARTICLE_VOID_RETURN` override and the conditional void declaration in `include/functions.us.h`. Use the existing `s32` return declaration, consistent with the implementation in `src.us/overlay_gameplay/outside/CFE30.c` and callers that consume its return value.

Correct ASM: `jal func_800D16BC_E066C; sw t6,0x14(sp); lbu v1,0x36(s0); ...; slti at,v1,6`. The second load/comparison also uses `v1`. Full native-ROM comparison reduces the current function from 50 to 46 differing bytes, with zero differences outside it. The function is not yet fully matched; this correction resolves the state-test register mismatch without source-level dead reads or extra locals.
