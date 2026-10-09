# Trigonometric coordinate expression order

Matched example: `func_80086A34_959E4` in `884C0.c`.

For IDO 5.3, separate a cosine call into a float temporary before converting a short distance to double. Putting the distance into a double local before the call adds conversion and spill instructions. Repeated implicit conversions in the coordinate expressions let IDO retain the common double value in f0 and spill it at stack 0x28.

A separate integer angle assignment after the cosine coordinate expression is scheduled early while the floating arithmetic runs, but gives its integer temporaries the correct numbering. Assigning that angle before the coordinate expression produces the same instruction order with different temporary registers.

Commutative floating operations still need the correct operand order for a byte-for-byte match. In this example the angle scale expression places the constant before the converted type angle, and the sine coordinate expression places the product before the base coordinate.

Named pointer locals reserve stack homes even when they compile into saved registers. Direct array expressions allow IDO to build the same common pointers without those local homes. The remaining register locals can be interleaved with spilled numeric locals in declaration order to reproduce the target stack offsets without dummy padding.
