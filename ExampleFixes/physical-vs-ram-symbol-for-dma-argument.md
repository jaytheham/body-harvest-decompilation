# A DMA-bound data argument takes the symbol at its *physical* address

**Symptom.** A near-matched function whose only remaining difference is the **`%hi` half of one
`lui`** that materialises a data pointer passed to a display-list macro (here `gSPViewport`), i.e. a
small odd score (13 here) with the pointer's `%lo` and every other row already agreeing:

    TARGET:  lui a0,%hi(D_314D0)     ; addiu a0,a0,%lo(D_314D0)   -> 0x000314D0
    OURS:    lui a0,0x8003           ; addiu a0,a0,0x14D0         -> 0x800314D0

Measured on `func_80071854_159914` (`overlay_gameplay/inside/158330.c`, 336 instr). The C passed the
RAM symbol `D_800314D0_320D0` (declared `extern Vp D_800314D0_320D0[];`, **defined with an
initialiser** in `core/320D0.c`, i.e. it really does live at `0x800314D0`). The ROM instead names a
symbol at the *physical* address: `asm/nonmatchings/.../158330/func_80071854_159914.s` reads
`%hi(D_314D0)`, and `undefined_syms_auto.txt` defines `D_314D0 = 0x314D0`. Referencing
`extern Vp D_314D0[];` emits `lui a0,0x3; addiu a0,a0,0x14D0` - the target exactly.

**Why.** Display lists carry *physical* addresses (the RSP DMAs from them), so the original source
referenced the segment/physical spelling of the datum, not the KSEG0 one. Do **not** reach for
`K0_TO_PHYS(D_800314D0_320D0)`: that emits the `& 0x1FFFFFFF` mask as a real `lui $at,0x1fff;
ori $at,$at,0xffff; and t7,t6,at` sequence and measured **1963** (the ROM has no mask here - proof
the original baked the physical address into the symbol). This mirrors the existing repo idiom
`extern Gfx D_13E440[];` (`F7870.c:113`) and `(u32)D_140A80` (`buildings.c:3276`): declare the
physical symbol in `include/variables.us.h` and let `undefined_syms_auto.txt` give it its value.
Tells: the target `.s` names a symbol *without* the `800` prefix and its `%hi` is small (< 0x100).

## Companion: one phantom 4-byte local moves a spilled temp slot within an unchanged frame

Same function, after the symbol fix, still scored **8/13** because the sole spilled value (the
viewport pointer, stored in the delay slot of the first `jal` and reloaded for the second
`gSPViewport`) homed at `0x24($sp)` where the target has `0x20($sp)`:

    OURS:    sw a0,36(sp) ... lw t7,36(sp)     frame -0xA8
    TARGET:  sw a0,32(sp) ... lw t7,32(sp)     frame -0xA8

Adding one **unused** 4-byte local (`s32 pad;`, or `u8`/`s16`/`u32`/pointer) moved the temp to
`0x20` and the function to **0**; the frame stayed `0xA8` (a local of any *larger* size -
`Vp`/`Mtx`/two `s32`/`f64` - grew the frame to `0xB0`-`0xE8` and measured **23**). So the missing
declaration is a single 4-byte local that consumes the slack at `0x20`, not a frame-size lever:
check the *number* of 4-byte locals, not the frame. This is the temp-pool-base sibling of
`phantom-s32-frame-inflation-gfx-timing-bars.md` (there the pad inflates the frame; here it does
not) and of `epilogue-reload-register-temp-bank.md`.

**Do not re-tread:** naming the pointer (`Vp *vp = D_314D0;`, `void *vp`, `u32 vp = (u32)D_314D0`)
all measured 1325-3035 - the named local is charged a home and breaks the map.
