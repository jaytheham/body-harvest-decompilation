incorrect ASM (`func_8007F0E8_8E098`, reset of the recursion marker followed immediately by its equality test):

```asm
li      t1,-1
lui     at,0x8015
sw      t1,-0x132c(at)
li      at,-1
bne     t2,at,recursion_ok
```

-> code changed:

Keep an empty check of the current alien index after resetting the marker. The conditional creates the value/control-flow boundary IDO needs to retain the target's memory read instead of forwarding the reset constant. It emits no branch or extra index load. The index local `i` is initialized and reused from the earlier vehicle traversal.

```c
D_8014ECD4 = -1;
if (i) { }
if (D_8014ECD4 == i) {
    osSyncPrintf(&D_80141D30_150CE0, otherType->unk18, type->unk18);
    inst->unk47 |= 0x80;
}
```

-> correct ASM structure (the complete function still has separate register, stack, and scheduling differences):

```asm
li      t2,-1
lui     at,0x8015
sw      t2,-0x132c(at)
lui     t3,0x8015
lw      t3,-0x132c(t3)
lw      t4,0x40(sp)
lui     a0,0x8014
addiu   a0,a0,message_offset
bne     t3,t4,recursion_ok
lw      t5,type_pointer_slot(sp)
```
