`incorrect ASM`: `duration = ch->unk20 - ch->unk1C; t = arg5 / duration;` loaded `unk20` before `unk1C`, used f12/f14 for the ratio, and rotated the floating temporary registers through the interpolation.

-> `code changed`: In `func_8000D8DC_E4DC`, load `elapsed = ch->unk1C; duration = ch->unk20; t = arg5 / (duration - elapsed);`. At frame completion, assign `unk8`, `unkC`, `unk10`, then the three rotation shorts, then increment `unk18` directly. Compare `if (ch->unk14 == ch->unk18)` without a separate increment-result temporary.

-> `correct ASM`: `lwc1 f18,0x1c(a2); lwc1 f20,0x20(a2); sub.s f4,f20,f18; div.s f16,f22,f4`; completion uses `lw t0,0x14(a2)` and `bne t8,t0`. The function diff score is zero and the full US ROM checksum passes.
