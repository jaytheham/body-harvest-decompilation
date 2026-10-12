# Byte interpolation steps and loop block boundaries

`func_800C6558_D5508` matched after changing the remaining interpolation step count from a masked `s32` to `u8`. The byte local retains the target copy between the first two divisions, which the word local loses to copy propagation.

The body then matched, but the -5 and -6 constants used the opposite `a3`/`t0` registers. Three nested `if (1)` blocks around the traversal loop recover the target allocation without adding instructions. One and two blocks did not. Preserve both sentinel checks in their original order.

A typed union payload exposes the unsigned halfword size and byte interpolation data. Put the original payload, radius, and trailing padding together in the alternate anonymous struct; including the radius alone rounds that view up and changes the entry stride. The entry must stay 0x1C bytes.

Verified with score 0 and `tools/make.ps1`: `build/bh.us.z64: OK`.
