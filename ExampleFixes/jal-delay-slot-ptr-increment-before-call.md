### jal delay slot: pointer increment (`addiu s1,s1,N`) before call vs after

**Problem:** When a loop calls a function with a pointer argument and then advances the pointer by a stride (e.g. `ptr += 9`), IDO sometimes schedules:

- (Wrong) `jal func; move a0, s1 (delay slot)` and `addiu s1, s1, 9` in the delay slot of a later `bnez`.
- (Target) `move a0, s1; jal func; addiu s1, s1, 9 (jal delay slot)`.

**Cause:** When the C code is `func(ptr); ptr += 9;`, IDO lazily defers argument setup into the jal delay slot (`move a0, s1`) and reschedules `ptr += 9` into a later delay slot (often the next bnez).

**Fix:** Use a temp variable to express the increment BEFORE the call:

```c
u8 *p = ptr;
ptr += 9;
func_80007A20_8620(p);
```

IDO then generates `move a0 = old ptr; addiu ptr, ptr, 9; jal` and subsequently hoists the `addiu` into the jal delay slot: `move a0, s1; jal; addiu s1, s1, 9`.

### Combined pattern: `if (i--)` guard + `while (i--)` do-while + ptr-before-inc

When walking an array in a loop guarded by a non-zero count loaded before an `osSyncPrintf` call:

```c
s32 i;
u8 *ptr;

i = arg0[3];                              // count into saved register BEFORE call
ptr = &D_8004D348[arg0[2] * 9];
osSyncPrintf(&D_80036FE4_37BE4);
if (i--) {                                // post-decrement guard → move v0,s0; beqz s0; addiu s0,s0,-1
    do {
        u8 *p = ptr;                      // temp ptr for call, increment BEFORE call
        ptr += 9;
        func_80007A20_8620(p);
        if (i >= 2) { osSyncPrintf(...); }
        if (i == 1) { osSyncPrintf(...); }
    } while (i--);                        // post-decrement → move v0,s0; bnez s0; addiu s0,s0,-1
}
osSyncPrintf(&D_80036FFC_37BFC);
```

- Load the count into a single `s32 i` BEFORE osSyncPrintf to avoid preserving `a0` (prevents compiler from allocating an extra saved register for the pointer).
- `if (i--)` (not `if (i-- != 0)`) and `while (i--)` (not `while (i-- != 0)`) produce `move v0, s0` dead stores and `bnez s0` (not `sltu v0, zero, s0; bnez v0`).
- The temp pointer + pre-increment pattern avoids misscheduling the stride increment into a bnez delay slot.
