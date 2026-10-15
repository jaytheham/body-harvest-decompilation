# Two unused words place the argument spill

**What works (score ~845):**
Two phantom `s32` variables (sp54, sp50) in declaration order AFTER the big struct ensure the
correct frame size (0x90) and place the compiler's AUTO-GENERATED spill at sp+0x4C. The
pre-jal `sw v1, 0x4c(sp)` IS generated correctly.

**Stack layout with two-phantom approach (frame 0x90):**
- sp+0x00..0x3F: outgoing call region
- sp+0x44: saved $ra
- sp+0x4C: compiler-auto-spill for v1 (= arg0)
- sp+0x50..0x53: sp50 phantom (unused s32)
- sp+0x54..0x57: sp54 phantom (unused s32)
- sp+0x58..0x8F: Unk8006AA80Node struct (first declared = highest)

**Field initialization ordering matters:**
1. First: `unk0 = arg0` (src: v1 from spill, uses `sh v1, unk0_offset`)
2. Second: `unk6 = -1; unk0C = 0; unk8 = 0; unk0E = -1` (zero/minus-one batch)
3. Third: array results (unk2, unk24, unk20)
4. Fourth: load unk28 = D_8006AB18[0]->unk1C
5. Last: `unk22 = 0x40; unk0F = -1` (these two li's come as a LATE PAIR after array stores)

**Note on unk0F field type:** The struct field at offset 0x0F must be `s8 unk0F` (not `u8`).
If it's `u8`, the compiler generates `li reg, 0xff` (literal 255). With `s8`, it generates
`li reg, -1` (signed -1), matching the target's pattern where both unk0E and unk0F use the
same immediate value of -1.
