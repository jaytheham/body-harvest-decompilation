incorrect ASM (`func_80088154_97104`, original-type checks):

```asm
lbu     a3,0x1a(a0)
...
move    t0,a3
...
bne     a3,at,not_human
sw      a3,saved_type(sp)
...
sb      a3,0x3b(sp)
```

-> code changed:

```c
scratch = arg0->typeIndex;
originalTypeIndex = scratch;
scratch |= 0;
```

The identity operation emits no instruction, but separates the working type
from the original-type copy in IDO's propagation. The initial load and move
retain their target registers, and the human check and saves now use `t0`.
Applying the identity to the original-type local instead moves or reverses
the copies and does not reproduce the target. This is compiler shaping;
the final function passes the complete US ROM checksum.

-> correct ASM for the original-type register uses:

```asm
lbu     a3,0x1a(a0)
...
move    t0,a3
...
bne     t0,at,not_human
sw      t0,saved_type(sp)
...
sb      t0,0x3b(sp)
```

incorrect ASM (the two later comparisons against the reused constant `0xD`):

```asm
li      v1,0xd
...
beq     t4,v1,save_angle
...
beq     t1,v1,test_damage
```

-> code changed:

```c
/* In both existing OR chains, replace (savedTypeIndex == 0xD) with: */
((savedTypeIndex | 0) == 0xD)
```

Reversing the C equality operands was inert. The identity expression changes
which side IDO treats as a propagated variable, without adding instructions
or changing the other comparisons. Verified in the fully matched function.

-> correct ASM:

```asm
li      v1,0xd
...
beq     v1,t4,save_angle
...
beq     v1,t1,test_damage
```
