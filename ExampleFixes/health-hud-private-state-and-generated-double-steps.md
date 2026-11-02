Incorrect ASM: `func_8009E994_AD944` caches external state addresses in `a0/a1/v1`, omits the target's repeated interpolation writebacks, and branches to a different early-return epilogue.

-> Code changed: make the slide factor an initialized function-local static and use it directly. Make the seven private interpolation/history fields uninitialized function-local statics. Preserve their BSS positions with the existing four-byte prefix, halfword gap, and two-word gap, anchored at US `0x8014F6A0` / EU `0x8014F6D0`. Move subsequent initialized data definitions after the function so the slide factor remains before the menu data. Reset the slide factor before the mode branch.

-> Correct ASM: private values use self-clobbering loads and `$at` stores; the reset begins `mtc1 zero,f0; lui at; bnez v1; mov.s f2,f0`, and the slide state is written back before the final comparisons and draw call without volatile pointers or explicit redundant stores.

Incorrect ASM: retaining the two explicit `0.2` rodata placeholders leaves the complete function structurally correct but swaps `f2` and `f12` throughout.

-> Code changed: remove those final two placeholders and initialize a branch-local `f64 step = 0.2` in each animation branch. Cache the increment before computing the two interpolated values, add the old length before its product, and initialize the zero working value separately in each interpolation arm.

-> Correct ASM: the compiler generates the original two double constants; the slide factor remains in `f2`, each double step loads into `f12`, and `mul.s; add.d; cvt.s.d; add.s; cvt.d.s; trunc.w.s` has the target order. The complete function diff is empty and the normal US and EU ROM builds both report `OK`.
