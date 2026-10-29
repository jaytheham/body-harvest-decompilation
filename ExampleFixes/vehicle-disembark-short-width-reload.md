`incorrect ASM`: In `func_800FDEA8_10CE58`, the second width-sign check shares one load with the negation. This example concerns that instruction sequence; the whole function remains unmatched.

```asm
lh    t4,0x104(sp)
bgez  t4,continue
negu  t5,t4
sh    t5,0x104(sp)
```

-> `code changed`: Keep the signed-short width local, and add a discarded read inside the negative branch.

```c
if ((currentControllerStates[0].stick_x >= 0) && (halfTypeUnk34 < 0)) {
    if (halfTypeUnk34) {}
    halfTypeUnk34 = -halfTypeUnk34;
}
```

-> `correct ASM`: IDO retains the target's two halfword loads and subsequent temporary-register order without adding a conditional branch for the discarded read.

```asm
lh    t4,0x104(sp)
lh    t5,0x104(sp)
bgez  t4,continue
negu  t6,t5
sh    t6,0x104(sp)
```
