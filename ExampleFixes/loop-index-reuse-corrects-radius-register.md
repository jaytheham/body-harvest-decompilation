incorrect ASM
```asm
sll     a3,a1,0x3
addiu   a3,a3,0xa
div     zero,t0,s7
mtc1    a3,$f6
```
-> code changed
```c
/* func_800D4C10_E3BC0: use the byte loop index for both expressions. */
mod = i % 3;
alpha = (i * fadeStep) + 0x64;
/* At the end of the loop: */
++i;
```
-> correct ASM
```asm
sll     t0,a1,0x3
addiu   t0,t0,0xa
div     zero,a3,s7
mtc1    t0,$f6
```

incorrect ASM
```asm
sw      t8,0x80(sp)
# Later in the texture command sequence:
sw      t9,0(v0)
move    a3,v0
lw      v0,0(s1)
```
-> code changed
```c
/* func_800D4C10_E3BC0: remove the separate fadeStep local. */
alpha = (i * (0x96 / steps)) + 0x64;
```
-> correct ASM
```asm
sw      t8,0x84(sp)
# Later in the texture command sequence:
sw      t9,0(v0)
lw      v0,0(s1)
```
