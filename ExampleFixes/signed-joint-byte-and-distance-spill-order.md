incorrect ASM (`func_802DAEBC_2BD2EC`, signed byte cast to the callback's signed halfword parameter):

```asm
lbu     a3,0x4f(sp)
sll     t9,a3,0x10
sra     a3,t9,0x10
...
jal     func_800A5554_B4504
```

-> code changed:

```c
typedef union {
    s8 signedValue;
    u8 unsignedValue;
} JointIdByte;

typedef struct {
    s8 middle;
    u8 padding;
    u8 root;
    JointIdByte child;
} SavedJointIds;

SavedJointIds jointIds;
jointIds.child.signedValue = D_8014DD50[jointIds.root].unkC;
childD1 = D_8014DD50[jointIds.child.signedValue & 0xFF].unkD;
/* Preserve the signed traversal load and read its saved unsigned byte. */
func_800A5554_B4504(arg0, distSq, 0.05f, jointIds.child.unsignedValue);
```

-> correct ASM:

```asm
lb      t8,0xc(t5)
andi    t9,t8,0xff
...
sb      t8,0x4f(sp)
...
jal     func_800A5554_B4504
 lbu    a3,0x4f(sp)
```

incorrect ASM (distance assigned inside the initial flags guard):

```asm
jal     func_80084FE8_93F98
 sw     a2,0x20(sp)
...
lw      a2,0x20(sp)
```

-> code changed:

```c
/* Previously this assignment was the first statement inside the if. */
distSq = dx * dx + dz * dz;
if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKF)) {
    if (distSq >= 0x127691 && distSq < 0x1312D0 &&
        func_80084FE8_93F98(arg0, 0x400) /* ... */) {
        /* ... */
    }
}
```

The allocation trace showed an unused flags spill taking the preceding word.
Moving the distance assignment changes spill allocation order while IDO still
sinks the multiplication past the flags branch. All other instructions and
stack homes remain identical.

-> correct ASM:

```asm
jal     func_80084FE8_93F98
 sw     a2,0x24(sp)
...
lw      a2,0x24(sp)
```
