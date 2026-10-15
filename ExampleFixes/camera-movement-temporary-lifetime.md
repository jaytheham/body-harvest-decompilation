# Camera movement temporary lifetime (partial match)

In `func_8009811C_A70CC`, the constrained-movement branch needs a scalar snapshot of the proposed Y coordinate after its array store. Loading `var_f12 = sp28C[0]` at that branch entry and using the scalar for both bounds comparisons and the final camera store removes repeated array reloads. Keeping the unrestricted branch unchanged preserves its X-before-Y store order. Reusing the existing float temporary retained the target frame. This is a partial improvement, not a full match.

For the Y bounds, retain one scalar lower bound through both the old-position and candidate-position checks. Refresh it explicitly after an accepted X store: load the extent into the upper-bound temporary, reload the lower bound, then add them. Explicit refresh removes that copy and preserves the target extent-before-lower-bound load order.
