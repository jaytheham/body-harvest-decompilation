### Linked list removal: check `*arg1` after store to avoid double-load of `arg0->unk34`

**Pattern:** In a doubly-linked list removal function, when updating the head pointer (`*arg1 = node->next`), checking the stored value via `*arg1` (not re-reading `node->next`) prevents a redundant reload.

**Symptom:** Score ~495 with `sw t8,0(a1)` followed by `lw v0,0x34(a3); beqz v0` instead of target's `beqz t8; sw t8,0(a1)` (delay slot).

**Root cause:** After `*arg1 = arg0->unk34`, the compiler cannot prove that `arg0->unk34` is unchanged (if `arg1` could alias `&arg0->unk34`), so it reloads `arg0->unk34` into `v0` for the subsequent NULL check. This causes a double-load and uses `v0` instead of `t8`.

**Fix:** Replace the re-read `arg0->unk34` with `*arg1` for the NULL check and subsequent dereference:

```c
// Wrong (double-load: store then re-read arg0->unk34):
*arg1 = arg0->unk34;
if (arg0->unk34 != NULL) {
    arg0->unk34->unk30 = NULL;
    return;
}

// Correct (use *arg1 which compiler folds back to t8):
*arg1 = arg0->unk34;
if (*arg1 != NULL) {
    (*arg1)->unk30 = NULL;
    return;
}
```

**Why this works:** IDO recognizes that `*arg1` was just assigned from `t8`, so it reuses `t8` for the `beqz` check and the `(*arg1)->unk30` dereference — without reloading. The compiler then schedules `sw t8, 0(a1)` into the delay slot of `beqz t8`.

**Also required:** The function parameter for `arg0->unk34->unk30` callback only takes one argument (`s16`). The second argument that m2c may suggest (the node pointer) is often unused. Verify with the callee's assembly.

**Example:** `func_800123A4_12FA4_12FA4` — doubly-linked list removal with head/tail pointer update.
