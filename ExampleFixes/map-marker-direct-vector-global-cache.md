Incorrect ASM: binding the first animated position through `MapMarkerScratch *scratch` left the vector address uncached and delayed the second `a0` address load until after the absolute-value branch.

Code changed: write the animated X coordinate directly through `D_80052B40.unk0`, then use the same global structure for the remaining vector fields and transform argument.

Correct ASM: the second vector address load appears immediately after `sins`, before the absolute-value branch; every animated calculation and transform instruction matches. The function remains NON_MATCHING because its default-case temporary registers and matrix cursor address register differ.
