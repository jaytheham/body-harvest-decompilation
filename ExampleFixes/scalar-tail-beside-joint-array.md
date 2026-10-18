incorrect ASM (`func_802DCA14_2BEE44`, final leaf held separately and copied twice):

```asm
sw      t8,0x78(sp)       # redundant local home
sh      t8,0x72(sp)
jal     func_80081F18_90EC8
 sh     t8,0x70(sp)
```

-> code changed:

```c
s16 joint9;
s16 joint10;
s16 joints[11];
/* Traverse all the joints before filling the array. */
joint9 = D_8014DD50[joint8].unkC;
joint10 = D_8014DD50[joint9].unkC;
/* ... joints[0] through joints[8] ... */
joints[9] = joint9;
joints[10] = joint10;
animationResult = func_80081F18_90EC8(arg0, 11, 2, joints,
    &D_802E2408_2C4838);
```

Keep the final leaf as the scalar halfword immediately before the array
in declaration order. Its own store supplies the extra halfword at 0x72;
an extra twelfth array element plus a separate leaf produces a redundant
third store. Read both earlier sibling C fields before traversing their D
branch to reproduce the target register allocation and avoid temporary
stack growth.

-> correct ASM:

```asm
sh      t6,0x6e(sp)
sh      t8,0x72(sp)
jal     func_80081F18_90EC8
 sh     t8,0x70(sp)
```
