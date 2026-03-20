### `lw $at / sw $at` pattern for float-field copies: use `*(Vec3f*)` struct cast

When target assembly shows `lw $at, offset1(a0); ... sw $at, offset2(a0)` for copying f32 struct fields INTEGER-wise (bit-for-bit), use a `Vec3f` struct copy cast rather than individual `*(s32*)` field casts.

**Problem**: `*(s32*)&arg0->unk24 = *(s32*)&arg0->unk30;` generates `lw $t0` (wrong register).

**Fix**: `*(Vec3f*)&arg0->unk24 = *(Vec3f*)&arg0->unk30;` generates the correct `lw $at / $t1 / $at` alternating pattern that matches IDO's struct copy register allocation.

**Why it works**: IDO uses `$at` for the first and third words, `$t1` for the second word when doing struct (multi-word) copies. The -O2 scheduler also interleaves these struct copy instructions with adjacent float computations correctly.

**Full pattern** (computing floats then doing 3-word copy):
```c
VehicleInstance *veh = D_80052B34;
arg0->unk30 = (f32) veh->unk0;
arg0->unk34 = (f32) veh->unk2 + (f32) D_80160188;
arg0->unk38 = (f32) veh->unk4;
*(Vec3f*)&arg0->unk24 = *(Vec3f*)&arg0->unk30;  // NOT *(s32*)& three times
```
