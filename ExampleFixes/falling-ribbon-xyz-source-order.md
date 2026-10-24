`incorrect ASM`: Writing the position updates in X, Z, Y order gives the Z operands `t1/t2` and the Y operands `t4/t5`. The Y addition uses `t6` and is scheduled after the coordinate shifts for `func_8011D260_12C210`. The target stores X, Z, Y too, but its Y operands are `t1/t2` and its Y sum is `t3`.

-> `code changed`: Write the three compound assignments in the natural X, Y, Z source order. Keep the visibility/building lookup after all three updates.

-> `correct ASM`: IDO still schedules the stores in X, Z, Y order, but allocates the target scratch registers. It emits `lh t1,2(s0); lh t2,8(s0)` before the argument-coordinate loads and `addu t3,t1,t2` before the shifts, followed by `sh t3,2(s0)`. All 330 instructions match after local packing; both complete ROM checksums pass.
