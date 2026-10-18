# Masking building rotation before shifting

Incorrect ASM:
```asm
lw v0,0xae0(v0)
sll t2,v0,14
andi s0,t2,0xffff
```

Code changed:
```c
/* Before */
angle = (buildingInstances[index].unk8 << 14) & 0xFFFF;
/* After */
angle = (buildingInstances[index].unk8 & 3) << 14;
```

Correct ASM:
```asm
lw t1,0xae0(v0)
sll t2,t1,14
andi s0,t2,0xffff
```

In `func_802D6A70_2B8EA0`, IDO folds the two-bit mask into the
post-shift mask, while allocating the loaded value separately from its address.
