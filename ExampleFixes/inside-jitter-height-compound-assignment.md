`incorrect ASM`: In `func_80085F28_16DFE8`, `entry8->pad2 = entry8->pad2 + (func_800038E0_44E0() % 4) + 5` emits `lh t8,2(s1)` and assigns the remainder to `t7`, reversing the target operands' temporary registers.

-> `code changed`: Use `entry8->pad2 += (func_800038E0_44E0() % 4) + 5;`.

-> `correct ASM`: IDO emits `lh t7,2(s1)`, the signed remainder sequence with `andi t8,v0,3`, then `addu t9,t7,t8` and `addiu t1,t9,5`.

`incorrect ASM`: Replacing the addressable snapshots in `func_80085F28_16DFE8` with ordinary scalar pointers enlarges the stack frame to `0x80`; the target frame is `0x58`.

-> `code changed`: Use `UnkFB6F8Entry *savedSlot[1]; Vec3s *rootPosition; Unk84EECEffectBytes *emitterHeader[1];` in that declaration order, with the existing word-sized `rootIndex` immediately before `savedSlot`. These typed snapshots replace the three-element `void *` array and its unused middle element. Access the size through `s16 *effectSize = &root->unk2` and coordinates through `Vec3s *rootPosition = (Vec3s *)&root->unk8`.

-> `correct ASM`: The frame remains `0x58`, the metadata header is stored at `sp+0x30`, and the slot pointer at `sp+0x38`.

`incorrect ASM`: The opening root and emitter indices occupy `v1` and `a1`, while the emitter header occupies `v0`.

-> `code changed`: Keep word-sized indices and apply `rootIndex &= -1;` and `emitterIndex &= -1;` after their halfword loads, as in the matched frontend particle allocator.

-> `correct ASM`: The root index occupies `v0`, the emitter index `v1`, and the emitter header `a1`.

`incorrect ASM`: Casting the effect array through an integer leaves the `s1` save and counter-limit load late: `sw ra,0x2c(sp)` appears at ROM `0x16E024` and `li at,16` at `0x16E038`.

-> `code changed`: Index the existing `Unk84EECEffectBytes` record view for both the payload address and cached emitter header instead of casting the array through `s32`.

-> `correct ASM`: `sw s1,0x1c(sp)` appears at `0x16E024`, followed by `li at,16` at `0x16E028`. The entire function matches.
