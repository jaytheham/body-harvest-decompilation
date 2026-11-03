incorrect ASM
```asm
div     zero,t6,v1
addiu   a0,a0,-0x64
lh      t8,2(s0)
sll     t7,a0,0x10
sra     t9,t7,0x10
mfhi    t7
addu    a1,t8,t7
```
-> code changed
```c
/* func_802DB1D4_31F324: keep a typed actor pointer for the random-effect block. */
inst = &alienInstances[arg0];
sp66 = func_800038E0_44E0();
sp68 = func_800038E0_44E0();
sp6A = func_800038E0_44E0();
func_800DF038_EDFE8(sp66 % 200 + inst->unk0 - 100,
                  sp68 % 200 + inst->unk2 - 100,
                  sp6A % 400 + inst->unk4 - 200,
                  func_800038E0_44E0() % 40 + 30, 0, 0);
```
-> correct ASM
```asm
div     zero,t9,v1
addiu   a0,a0,-0x64
sll     t7,a0,0x10
sra     t8,t7,0x10
lh      t7,2(s0)
mfhi    t6
move    a0,t8
bnez    v1,31f508
nop
break   0x7
```
