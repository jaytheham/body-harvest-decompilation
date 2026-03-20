### Non-leaf abs/max: avoid phantom stack slots by using fully inline CSE expressions

When a non-leaf function (with a `jal`) computes `max(abs(dx), abs(dy))` using named declared variables (`s32 dx, abs_dx, dy, abs_dy`), IDO allocates phantom stack slots for those declared locals even though they never get written to the stack. This increases the frame size by 8 bytes (0x30 → 0x38).

**Fix**: Write the abs/max computation as a fully inline expression with no declared intermediate variables. IDO's CSE pass will cache `dx` and `dy` as compiler-generated temps (no phantom slots), keeping the frame at the minimum 0x30.

The comparison operator and branch order matter for matching the assembly. Use `(ABS_DX_INLINE) > (ABS_DY_INLINE)` with TRUE branch = `MAX_DX_INLINE` and FALSE branch = `MAX_DY_INLINE`. This generates:
- DX evaluated first (left operand of `>`) → stored in `t1` as abs_dx
- DY evaluated second → stored in `a1` as abs_dy
- `slt at, a1, t1` (at = abs_dy < abs_dx = abs_dx > abs_dy) matching target's `slt at, a1, t1`
- `beqz at, DY_PATH` when abs_dx is NOT greater (abs_dy branch)

Pattern (func_8009179C_A074C):
```c
s32 func(u8 arg0, s32 arg1) {
    if (((-(alienInstances[arg0].unk0 - D_80052B34->unk0) <
            (alienInstances[arg0].unk0 - D_80052B34->unk0)
            ? (alienInstances[arg0].unk0 - D_80052B34->unk0)
            : -(alienInstances[arg0].unk0 - D_80052B34->unk0))
        > (-(alienInstances[arg0].unk4 - D_80052B34->unk4) <
            (alienInstances[arg0].unk4 - D_80052B34->unk4)
            ? (alienInstances[arg0].unk4 - D_80052B34->unk4)
            : -(alienInstances[arg0].unk4 - D_80052B34->unk4))
        ? (-(alienInstances[arg0].unk0 - D_80052B34->unk0) <
            (alienInstances[arg0].unk0 - D_80052B34->unk0)
            ? (alienInstances[arg0].unk0 - D_80052B34->unk0)
            : -(alienInstances[arg0].unk0 - D_80052B34->unk0))
        : (-(alienInstances[arg0].unk4 - D_80052B34->unk4) <
            (alienInstances[arg0].unk4 - D_80052B34->unk4)
            ? (alienInstances[arg0].unk4 - D_80052B34->unk4)
            : -(alienInstances[arg0].unk4 - D_80052B34->unk4))) < (arg1 << 8)) {
        ...
    }
}
```
Compare to the equivalent named-variable form (score 50, frame 0x38 — does NOT match):
```c
s32 dx = alienInstances[arg0].unk0 - D_80052B34->unk0;
s32 abs_dx = -dx < dx ? dx : -dx;
s32 dy = alienInstances[arg0].unk4 - D_80052B34->unk4;
s32 abs_dy = -dy < dy ? dy : -dy;
s32 max = abs_dy < abs_dx ? ... : ...;
if (max < (arg1 << 8)) { ... }
```
Named variables like `dx`, `abs_dx`, `dy`, `abs_dy`, `max` cause phantom stack slots in non-leaf functions. The inline CSE form avoids them.
