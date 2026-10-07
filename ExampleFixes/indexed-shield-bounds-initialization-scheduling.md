# Indexed shield bounds and initialization scheduling

In func_800B0F20_BFED0, use base[idx].sub[subIdx] in a two-element for loop. IDO lowers the inner index to a byte offset advancing by eight, with comparisons against eight and sixteen. A manually maintained byte counter and advancing pointer produced the same control flow but different registers.

Keep a separate level index and initialize the outer index before the pointers. A separate named minimum-X value in the equality condition puts that load in v0, while the maximum-X load uses t2. Reusing the level variable for this value changes the pointer and loop-counter allocation.

The initialization must share one source line:

    level = currentLevel - 1;
    idx = 0; base = D_80147C30_156BE0[level]; cur = base;

Putting these three statements on separate lines exchanges the move a3,a2 and move v1,zero instructions. The same-line version gives an exact ROM match without pointer arithmetic.