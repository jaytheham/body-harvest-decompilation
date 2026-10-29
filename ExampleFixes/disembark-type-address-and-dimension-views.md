`incorrect ASM`: In the unmatched `func_800FDEA8_10CE58`, the initial vehicle index occupies `v0`, and the computed type address occupies `v1`.

```asm
lbu   v0,0x1A(s4)
sll   t6,v0,3
subu  t6,t6,v0
sll   t6,t6,4
addu  v1,t6,t7
lh    t8,0x36(v1)
lh    t0,0x34(v1)
```

-> `code changed`: Keep the persistent type pointer's conversion through `s32`, but read the two initial dimensions directly through the indexed type array. Neither change alone produced this register sequence.

```c
type = (VehicleType *)(s32)&vehicleTypes[i];
halfTypeUnk36 = vehicleTypes[i].unk36 >> 1;
halfTypeUnk34 = vehicleTypes[i].unk34 >> 1;
```

-> `correct ASM`: The index and address use the target registers. This fixes that sequence; the pointer spill and the complete function remain unmatched.

```asm
lbu   v1,0x1A(s4)
sll   t6,v1,3
subu  t6,t6,v1
sll   t6,t6,4
addu  v0,t6,t7
lh    t8,0x36(v0)
lh    t0,0x34(v0)
```
