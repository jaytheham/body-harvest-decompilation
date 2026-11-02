# Alien draw template copies and type widths

`func_8007C044_8AFF4` remains NON_MATCHING.

Incorrect ASM: local aggregate initializers introduced additional data templates and changed the source addresses of the initial copy instructions. -> Code changed: assign the existing typed global rotation and scale templates to the local structures. -> Correct ASM: initial copies use the existing template symbols with the target LW/LHU copy sequence.

Incorrect ASM: caching the alien type in a word and its later copy in a byte introduced an ANDI and lost the target word temporary across visibility calls. -> Code changed: declare the first type cache as u8 and its later copy as s32. -> Correct ASM: the word temporary survives the visibility calls through the target SW/LW sequence without the extra ANDI.

Incorrect ASM: static light commands use `0x03840010` / `0x03820010`, texture swaps load `0x0707F400`, and the second draw pass emits `0xC8112078`. -> Code changed: use `gSPLight` slots 1 and 2, load 511 texels with DXT 512 in both swaps, and use `G_RM_AA_ZB_XLU_SURF` / `G_RM_AA_ZB_XLU_SURF2` in the second pass. -> Correct ASM: the corresponding words are `0x03860010` / `0x03880010`, `0x071FF200`, and `0x005049D8`.

Incorrect ASM: the final pass has no retained drawing-index copies, assigns its scale after `sins`, and uses `$f14` for the scale. -> Code changed: read that pass's list index through a scoped `u8 drawIndex`, preserve a separate word `drawId` for the draw helper, initialize the reused `distance` float to 1 before the color-offset branches, and apply the type-32 scale after saving/updating rotation. -> Correct ASM: each color-offset branch retains a drawing-index copy; scale uses `$f0`, including its store/reload across `sins`, and the type-32 scale follows the rotation stores. Register choices and stack offsets elsewhere remain unmatched.

Incorrect ASM: rotation restoration uses signed `lh` loads. -> Code changed: expose `u16 unsignedComponents[3]` alongside the existing signed vector components and restore rotation through that typed view. -> Correct ASM: all three restoration loads use `lhu`. This partial renderer checkpoint remains wrapped in `NON_MATCHING`; complete US and EU ROM checks pass with the target assembly selected.
