# Effect scheduler: unsigned timer stores and remaining operand allocation

Still unmatched: func_800E74DC_F648C in CFE30.c. Best score remains 180. This continuation tested 65 variants in addition to earlier experiments; no candidate passed the complete ROM checksum while enabled.

The target has 49 instructions. The straightforward C using s32 count and minimum, the original byte parameters, and D_80157533 = arg4 / minimum followed by D_80157534 = D_80157533 reproduces the instruction count and the timer narrowing. D_80157533 needs an unsigned byte declaration for the second store to use ANDI rather than signed narrowing. The existing matched update function already reads that symbol through a byte view.

Remaining differences include arg4 in t0 rather than t3, count in t3 rather than t2, the placement of the a3 argument-home store, a minimum-copy register, and the numerator/address allocation around DIV. Thus matching instruction count does not constitute a match.

Named numerators are copy-propagated when assigned after the conditional. Assigning them before the conditional, adding if (1) boundaries, returning arg4, wide parameter byte views, conditional-expression minima, mutable byte-parameter division, and a named timer pointer did not improve the best candidate. Empty tests of the numerator also made the result worse. Preserve the guarded best source and its typed timer declaration for further work.

Separately, eight while/for variants of func_800CDDE4_DCD94 did not improve its retained score-2143 candidate. Moving the index update into the for increment changed its loop scheduling and increased the score.
