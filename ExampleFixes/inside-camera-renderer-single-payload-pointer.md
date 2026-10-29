# Camera renderer: one typed payload pointer

## Incorrect ASM

In `func_80087E3C_16FEFC`, keeping a full effect pointer for texture selection and camera subtraction, then deriving a payload pointer after normalization, folded every payload access into that full pointer. The required `addiu v0,s1,8` disappeared, and the effect and display-list saved registers were exchanged.

## Code changed

Following the matched outside renderer `func_800CCD54_DBD04`, initialize one `Unk84EECEffectPositionView *pos` from `&D_800FB7B0[effect].unk8` before texture selection. Access the texture phase and coordinates through `pos`; keep size and next-link accesses as indexed effect-array fields. Use the existing graphics macros throughout.

## Correct ASM

IDO keeps the full effect address in `s1` across normalization, materializes the payload with `addiu v0,s1,8` afterward, and assigns the display-list pointer to `s0`. All 225 instructions and the complete ROM match.
