# Road-entry byte parameters, shift temporaries, and collision checks

`func_800B5EE4_C4E94` matches with a `u8 *` vertex-buffer view and `u8` column/row parameters. Remove the manually masked word column and the extra arguments to the warning-only `osSyncPrintf` calls. A byte parameter used only for addressing generates the target incoming home store and early mask; passing it as an unused printf argument instead makes IDO reload it later.

Represent the address through nested byte-array indexing: the row byte index is `(row * 9) << 5`, and the column byte index is `column * 16`. The explicit multiply followed by shift generates a new final temporary (`sll t5, t4, 5`). Multiplying by 288 directly, or using an implicit 288-byte row stride, reuses `t4` and rotates later temporary registers. A `Vtx *` parameter converted to bytes reverses the two row-base `addu` operands; retain the direct byte-buffer parameter and explicitly convert the caller's vertex pointer.

The two collision checks need different source forms:

```c
backIndex--;
if (frontIndex == backIndex) { /* warning */ }

if (backIndex == ++frontIndex) { /* warning */ }
```

The first form stores the vertex pointer before loading the other counter and gives the target temporary reuse. Predecrement inside that comparison hoists the other counter load before the pointer store, even with the comparison operands reversed. Separate decrement followed by `backIndex == frontIndex` also misses that order. The second form matches with preincrement inside the comparison.

Verified with `build/bh.us.z64: OK` and `CURRENT (0)`.
