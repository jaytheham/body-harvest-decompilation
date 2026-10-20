### Incorrect ASM

```asm
lh      a1,2(a0)
sh      a1,0xd2(sp)
lh      t6,0x38(a3)
addu    t7,a1,t6
```

### Code changed

```c
/* Before */
spD2 = arg0->unk2;
topHeight.raw[0] = arg0->unk2 + vehicleType->unk38;

/* After: reuse the existing later terrain-height local. */
height = vehicleType->unk38;
spD2 = arg0->unk2;
topHeight.raw[0] = arg0->unk2 + (height & 0xFFFF);
```

### Correct ASM

```asm
lh      a1,2(a0)
lh      t6,0x38(a3)
sh      a1,0xd2(sp)
addu    t7,a1,t6
```
