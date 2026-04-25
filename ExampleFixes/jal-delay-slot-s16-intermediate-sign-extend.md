### jal delay-slot load via s16 intermediate + sign-extend after call

When an array entry's next-index field (`unk4 / s16`) must be read in a loop that also calls a function in one branch, the compiler can preload the field into the jal's delay slot — but only when:

1. **No named entry pointer** is declared (`Unk800DE840 *temp_v1`). A named pointer forces the compiler to save the pointer to a callee-save register (`s1`) and generate a `move s1, v1` instruction before the branch, which displaces both `li a1, imm` from its early scheduling slot and the delay-slot load.

2. **A separate `s16 var_s1`** captures the next-index value *before* the jal. The compiler schedules the load (`lh s1, 4(v1)`) into the jal delay slot. After the call returns it generates the sign-extension sequence `sll s0, s1, 0x10; sra t0, s0, 0x10; move s0, t0` to write back to the loop variable `s0`.

3. The sub-pointer (`Unk...Sub *temp_v0 = (u8 *)&array[idx] + 8`) must be computed **before** the `if` check so the compiler hoists `addiu v0, v1, 8` before the `blez`.

**Wrong** (named entry pointer → `move s1, v1` + `a1` in delay slot, wrong scheduling):
```c
Unk800DE840 *temp_v1;
Unk8008C7E4Sub *temp_v0;
...
temp_v1 = &D_800DE840[var_s0];
temp_v0 = (Unk8008C7E4Sub *)((u8 *)temp_v1 + 8);
if ((s32)temp_v1->unk18 > 0) {
    ...
    var_s0 = temp_v1->unk4;
} else {
    func_80083DBC_5426C(var_s0, 0x92);   // a1=0x92 ends up in delay slot
    var_s0 = temp_v1->unk4;              // loads from s1 (saved ptr), no sign-extend
}
```

**Correct** (no named entry pointer + s16 intermediate → `a1` early, delay-slot load, sign-extend):
```c
s16 var_s1;
Unk8008C7E4Sub *temp_v0;
...
temp_v0 = (Unk8008C7E4Sub *)((u8 *)&D_800DE840[var_s0] + 8);
if ((s32)D_800DE840[var_s0].unk18 > 0) {
    ...
    var_s0 = D_800DE840[var_s0].unk4;   // lh s0,4(v1) in b-delay-slot
} else {
    var_s1 = D_800DE840[var_s0].unk4;   // → lh s1,4(v1) in jal delay-slot
    func_80083DBC_5426C(var_s0, 0x92);  // a1=0x92 now before mflo (latency hiding)
    var_s0 = var_s1;                     // → sll/sra/move sign-extend
}
```

**Why it works:** Without the named pointer, the compiler uses a uopt temp (`v1`) for `&D_800DE840[var_s0]`. Freed from saving the pointer across the call, the scheduler fills the instruction latency window (between `multu` and `mflo`) with the argument setup (`sll/sra/or a0`, `li a1,0x92`). The `var_s1` load has no dependency on the jal result, so the scheduler moves it into the jal's delay slot. The subsequent `var_s0 = var_s1` (s16 ← s16, different registers) triggers the `sll/sra/move` sign-extension sequence.

**Reference:** `func_8008C7E4_5CC94` in `src.us/overlay_gameplay/frontend/52690.c`
