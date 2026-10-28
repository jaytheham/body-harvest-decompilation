# Comet heading coordinate temporaries

## Incorrect ASM

Inlining both coordinate differences into `func_80003824_4424` evaluated the Z loads first and used temporary registers for the differences:

```asm
subu t3,t1,t2
subu t0,t8,t9
mtc1 t0,f4
mtc1 t3,f6
```

## Code changed

```c
dx = inst->unk0 - D_80052B34->unk0;
dz = inst->unk4 - D_80052B34->unk4;
inst->unk6 = func_80003824_4424((f32)dx, (f32)dz) + 0x8000;
```

## Correct ASM

In `func_802DBF88_3200D8`, naming the integer differences produces the target load order and argument registers:

```asm
subu a1,t8,t9
subu a2,t1,t2
mtc1 a2,f6
mtc1 a1,f4
cvt.s.w f14,f6
jal func_80003824_4424
cvt.s.w f12,f4
```
