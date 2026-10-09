# Guarded do-loop and indexed pointer induction

`func_8007D424_8C3D4` matches with an index guard before the initial instance address and a `do` loop. An inner `do { ... } while (0)` uses `break` for skipped updates so all paths share the index increment. A guarded `for` loop retained a second initial condition check.

After `idx += 4`, write `inst = &alienInstances[idx]`. IDO recognizes the induction and emits the target constant pointer increment. Writing `inst = &inst[4]` emitted the same loop body but reversed the type-table `addiu` and initial instance `addu`; the indexed assignment corrected their order. This also removes raw byte-pointer arithmetic.

Keep the saved flag word across the death helpers, but reread instance flags for the later movement test. The callback lookup belongs inside the active-area update block; distance bookkeeping runs after that block. Declare the called update helper with its actual void return and unsigned byte argument. The complete ROM checksum verified OK.
