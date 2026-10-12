# Laser wrapper coordinate word views

`func_800E4CEC_F3C9C` reads positions as both words and low halfwords. Separate scalar locals falsely model the halfword accesses as uninitialized values. `SignedWord` locals expose `.word` for helper outputs and `.halves.low` for effect positions, retaining the target LW and LH instructions.

The matrix helper receives a whole `Unk80052B40` position. Three independent halfwords let IDO remove stores that the helper actually needs. A typed vector preserves all three stores. The display list is the address of `D_50332A0`, not the scalar stored there. These changes reproduce the full instruction stream.

The remaining stack layout follows declaration order: position vector, unused word, three color bytes, unused word, six coordinate words. It places the position at sp+0x80, colors at sp+0x7B through 0x79, and coordinate words at sp+0x70 through 0x5C in the target 0x88 frame.

Verified with `tools/make.ps1`: `build/bh.us.z64: OK`.
