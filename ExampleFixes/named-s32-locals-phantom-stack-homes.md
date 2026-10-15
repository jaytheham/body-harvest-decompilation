### Named `s32` local preload fixes `beqzl` → `beqz` and arg sign-extend order

When a function loads two fields from a struct array and one field (`offset`) is used ONLY in a JAL call argument AFTER an intermediate `if`, IDO generates `beqzl` (branch-likely) with the field load in the delay slot — causing the wrong argument to be sign-extended first with `sll/sra`, and the field being unloaded in the branch-taken path (wrong register state at JAL).

**Symptom**: `beqzl tX, label; lw a0, 4(v0)` in delay — a0 is NOT set when branch is taken.

**Fix**: Preload the offset field into a named `s32` local BEFORE accessing the len field:

```c
s32 devAddr;
s16 var_a2;

if (D_8006AB88 != 0) {
    devAddr = D_8006AB44->seqArray[arg0].offset;   // preloaded first
    var_a2 = D_8006AB44->seqArray[arg0].len;
    if (var_a2 & 1) { var_a2 += 1; }
    func_8000F5A8_101A8(devAddr, D_8006AB30[arg1], var_a2);
}
```

Without the named `devAddr`, IDO defers the load of `offset` and uses `beqzl` with the load in the annulled delay slot. With the named variable:
- IDO eagerly loads `offset` (lw a0) before the inner branch
- Uses `beqz` (non-likely branch) with `sll t4, t3, 2` (arg1*4) in the delay slot
- arg0 sign-extend happens via `sll a3, a0, 24; sra t6, a3, 24` (using a3 as temp first)
- arg1 sign-extend happens via `lb t3, 0x1f(sp)` (reload from stack) rather than early `sll/sra`

Side effect: the named `s32 devAddr` may NOT inflate the frame if the baseline frame is small enough (e.g., 0x18 stays at 0x18). Declaration order: `s32 devAddr` before `s16 var_a2`.

### Two cached tile scalars can add eight bytes

In func_800BC5DC_CB58C, caching the halfword tile and its extracted terrain type in u16 and s32 locals inflated the frame from 0x38 to 0x40. All instructions otherwise matched. Removing both locals and reading *tilePtr directly in the comparisons and update kept IDO's cached lhu result and restored the exact frame. Keep the named map pointer: removing it changed register allocation and control flow.
