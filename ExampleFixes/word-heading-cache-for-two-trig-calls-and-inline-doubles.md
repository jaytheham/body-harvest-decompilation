# Word heading cache for two trig calls and inline double constants

Matched Siberia `func_802DEDE4_2C1214` (ROM `0x2C1214`).

A signed-short heading local plus explicit `& 0xFFFF` masks loaded the heading into `a0`, normalized it into `t9`, and inserted an extra move into the first trig call's delay slot. Use a signed word local and let the `u16` trig parameters truncate it implicitly:

```c
s32 orientation;
orientation = parent->unk6;
child->unkE = orientation;
child->unk6 = orientation;
child->unk14 = (s16)((f32)coss(orientation) / 32768.0 * 1000.0 + parent->unk0);
child->unk16 = D_80052B34->unk2;
child->unk18 = (s16)((f32)sins(orientation) / 32768.0 * 1000.0 + parent->unk4);
```

This loads the signed heading into the target `v0`, creates one normalized value in `a0`, and caches that word across `coss` for reuse by `sins`. The first call's delay slot then saves the child pointer, matching the target.

Inline both `1000.0` literals and remove their two obsolete external constant placeholders. IDO emits two constants at the target rodata addresses, gives each double multiplication the target operand order, and aligns the subsequent floating-point registers. Retain `(f32)` on the trig results to generate `cvt.s.w` followed by `cvt.d.s`; the extra `(f64)` casts are unnecessary.

After these changes only stack offsets differed. An unused leading `s32 pad5C` before the spawn byte puts that byte at 0x5B, the output words at 0x54/0x50/0x4C, the normalized heading spill at 0x34, and the child-pointer spill at 0x38, with a 0x60 frame.

The function diff was zero and `build/bh.us.z64: OK` remained true after removing redundant coordinate casts and renaming the locals.
