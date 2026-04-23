### Integer constant vs float constant division

**Problem:** `float_var / 2.0f` compiles to `mul.s $f, $f, 0.5f` (reciprocal multiply). But target uses `div.s $f, $f, $f_reg` where the register holds 2.0f.

**Fix:** Use `float_var / 2` (integer constant). IDO loads 2.0f into a callee-saved float register and uses `div.s`. This also allows the 2.0f to be reused across multiple divisions in the same function.

**Pattern in assembly:** Look for `lui at, 0x40000000; mtc1 at, $f22` (loading 2.0f into saved float reg) followed by `div.s $f, $f, $f22`. The original C had `/2` (integer constant), NOT `/2.0f`.
