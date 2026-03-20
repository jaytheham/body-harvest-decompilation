### Global reload after function call

When a global variable is loaded before a function call and used after, the compiler may reload it fresh or keep the cached value depending on the code structure:

**Original pattern (reloads):**

\\\c
temp_t0 = D_8014D2EC;
if (temp_t0 == 8) {
func_800769A8_85958(0);
temp_t0 = D_8014D2EC; // Explicit reload
}
// Use temp_t0...
\\\

Without the explicit reload, the compiler might cache D_8014D2EC's address and reuse it, changing the instruction pattern from \lui/lw\ to \lw (cached_reg)\.
