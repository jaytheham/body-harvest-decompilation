### AlienInstance flag-clear (AND~) / flag-set (OR) across parent+children: register allocation

Functions that clear (or set) flag bits on an alien AND on its four "children" (the first 4 bytes of the parent alien treated as child indices) share a common pattern:

```c
void func_800A9820_B87D0(u8 arg0, s32 arg1) {
    AlienInstance *parent;
    alienInstances[arg0].unk20 &= ~arg1;
    parent = &alienInstances[alienInstances[arg0].unk25];
    if (alienInstances[((u8 *)parent)[0]].specIndex != 0) {
        alienInstances[((u8 *)parent)[0]].unk20 &= ~arg1;
    }
    // ... repeat for [1], [2], [3]
}
```

#### AND version (clear flags: `arg1` negated via `nor`)

Target register layout:
- `t0` = 0x50 stride (single copy used throughout)
- `a3` = `alienInstances` base
- `v1` = `~arg1` (from `nor v1, a1, zero`)
- `v0` = self ptr → reused for child[0-3] indices
- `a1` = parent ptr (reuses freed arg1 register)
- `a0` = child ptr (reuses freed arg0 register)

The decompilation with `AlienInstance *parent` produces **score 435** (registers only, not instructions). The mismatch is:
- IDO eagerly allocates `parent` → a2 (user-declared variable, a0/a1 still live at declaration time)
- Target lazily allocates parent (uopt temp) → a1 (freed after `nor v1, a1, zero`)

The declarations-vs-uopt-temp difference causes parent=a2 vs parent=a1, and cascades:
- `a2` = parent (mine) vs `a1` (target)
- `a3` = first child ptr (mine) vs `a0` (target)
- stride → t1 (mine) vs t0 (target)

#### OR version (set flags: `arg1` used directly)

Target uses TWO copies of stripe because `a2` is hijacked for parent:
- First `addiu a2, zero, 0x50` (stride → a2, used for first 2 multiplies)
- Later `addiu t0, zero, 0x50` (second stride → t0, used for child multiplies)
- `a2` reused for parent (overwrites stride)
- `a0` = child ptr (same as AND version)

Since arg1 is never freed in the OR version (used directly in `or` instructions), a1 stays arg1 and parent must land in a2 via stride-reuse.

#### The child-byte access pattern

The first 4 bytes of an AlienInstance (which the struct defines as `s16 unk0, s16 unk2`) are used as 4 u8 child indices. Access via cast:
```c
((u8 *)parent)[0]   // child 0 index at byte offset 0
((u8 *)parent)[1]   // child 1 index at byte offset 1
// etc.
```
This produces `lbu` from offsets 0, 1, 2, 3 which then feed into `multu` with the 0x50 stride.

#### beqzl delay slot pattern

Children 0-2 use `beqzl` (branch-likely) with the NEXT child's byte index preloaded in the delay slot. Child 3 uses plain `beqz` + `nop`. This is natural IDO output from sequential `if` blocks accessing `specIndex`.
