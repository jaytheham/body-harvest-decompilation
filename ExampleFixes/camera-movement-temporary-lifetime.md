# Camera movement temporary lifetime (partial match)

In `func_8009811C_A70CC`, a dedicated scalar for the proposed X coordinate let IDO sink and duplicate its arithmetic into the mode branches. Storing X in an array kept the arithmetic before the branch, but introduced a spill and subsequent reloads absent from the target.

Reusing the later vehicle-scale float (`var_f28`) kept the X calculation before the branch and allocated the result to `$f16`, matching the target computation and avoiding the array spill. This is not a complete solution: IDO also copies the value into a saved float register because the reused variable can remain live into later drawing paths. Check the later assignments and actual lifetimes before treating such reuse as final.

The experiment confirms that a temporary's later lifetime can affect whether IDO speculates or duplicates earlier floating-point arithmetic. Compare structural changes separately from the aggregate diff score.

The constrained-movement branch also needs a scalar snapshot of the proposed Y coordinate after its array store. Loading `var_f12 = sp28C[0]` at that branch entry and using the scalar for both bounds comparisons and the final camera store removes repeated array reloads. Keeping the unrestricted branch unchanged preserves its X-before-Y store order. A fresh block-local scalar increased the frame by eight bytes; the existing float temporary retained the target frame. This is a partial improvement, not a full match.

For the Y bounds, retain one scalar lower bound through both the old-position and candidate-position checks. Refresh it explicitly after an accepted X store: load the extent into the upper-bound temporary, reload the lower bound, then add them. Using `stage->unk2` again in the final MIN/MAX while retaining the earlier scalar made IDO keep two copies and emit an extra move. Explicit refresh removes that copy and preserves the target extent-before-lower-bound load order. Aggregate register scores can worsen while this structural sequence improves.
