# Alien draw template copies and type widths

`func_8007C044_8AFF4` remains NON_MATCHING.

Incorrect ASM: local aggregate initializers introduced additional data templates and changed the source addresses of the initial copy instructions. -> Code changed: assign the existing typed global rotation and scale templates to the local structures. -> Correct ASM: initial copies use the existing template symbols with the target LW/LHU copy sequence.

Incorrect ASM: caching the alien type in a word and its later copy in a byte introduced an ANDI and lost the target word temporary across visibility calls. -> Code changed: declare the first type cache as u8 and its later copy as s32. -> Correct ASM: the word temporary survives the visibility calls through the target SW/LW sequence without the extra ANDI.
