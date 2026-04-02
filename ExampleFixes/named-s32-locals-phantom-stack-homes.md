### Named `s32` locals cause phantom stack homes (like pointer locals)

Named `s32` local variables (not just pointer types) can cause IDO to allocate a 4-byte "home" slot on the stack. With 8-byte frame alignment, even ONE named `s32` phantom can inflate the frame by 8 bytes (0x3C → 0x40). Two named `s32` phantoms together are exactly 8 bytes extra (0x38 → 0x40).

When a function uses `s32 flags = struct->unk20 & 0x600` followed by `s32 spec_idx = struct->specIndex` as the first two local declarations, this causes:
- Each variable creates a 4-byte phantom slot
- Frame inflates from 0x38 to 0x40
- v0/t0 spill offsets shift away from target positions

The phantom locals ALSO cause IDO to eagerly commit the computed value (`move a1, t8`) BEFORE the beqz branch, whereas without named locals IDO lazily commits it in the beqz delay slot.

**Trade-off**: Declaring `flags` and `spec_idx` as named `s32` gives the correct register assignment (`a2=index`, `a1=unk20/flags`, `a3=specIndex` early load), which enables `beq`/`bne` (not likely branches) and correct instruction patterns — DESPITE the phantom slots.

Without the named variables (inlining everything), the frame is correct (0x38) but register assignment is wrong (`a1=index` instead of `a2`) AND `beql`/`bnel` (branch-likely) instructions appear instead of `beq`/`bne`.

When you see this trade-off, using named locals with wrong frame is often preferred (fewer total differences) over inline with wrong registers and likely branches.

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
