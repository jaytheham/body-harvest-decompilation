incorrect ASM (`func_8007FDD8_8ED88`, after the first three passes and frame already match):

```asm
/* Final-pass preheader: */
lui     s4,0x8014
addiu   s4,s4,message_offset
li      s3,0x50
/* Entity address inside the loop: */
multu   v0,s3
mflo    t9
addu    s0,s5,t9
/* Failure message: */
jal     osSyncPrintf
move    a0,s4
```

-> code changed:

Retain an empty type-flags check at the end of the final loop, using the current entity's actual type index. The check emits no instructions. It keeps the existing type-table base and 0x68 stride live during allocation, so IDO cannot reuse their registers for the final pass's 0x50 stride and message address. A discarded field expression without the empty condition does not preserve the same allocation.

```c
/* At the end of the final active-list loop: */
if (alienTypes[alienInstances[finalIndex].typeIndex].unk54) { }
```

-> correct ASM (function score 0 and complete US ROM OK):

```asm
/* Entity address inside the loop: */
sll     t9,v0,2
addu    t9,t9,v0
sll     t9,t9,4
addu    s0,s5,t9
/* Failure-message address now fits the branch/call delay slots: */
beqz    v0,deletion_failed
lui     a0,0x8014
/* Successful deletion refreshes the active count before decrementing. */
lui     a2,0x8015
lw      a2,-0x1334(a2)
addiu   s1,s1,-1
b       deletion_done
addiu   s2,s2,-1
/* deletion_failed: */
jal     osSyncPrintf
addiu   a0,a0,0x1d50
```
