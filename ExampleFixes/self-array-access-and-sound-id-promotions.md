incorrect ASM (`func_8007F0E8_8E098`, self fields read through the named instance pointer):

```asm
lbu     t6,type_index_slot(sp)
lui     t8,0x8025
addiu   t8,t8,0x6680
/* Type-address arithmetic and cache store precede both X loads. */
/* ... */
lh      t1,0(s1)
lh      t0,0x2e(s1)
```

-> code changed:

Use `alienInstances[selfIndex].field` for self-field reads and writes, retaining the instance pointer only for helper arguments. Known array provenance fixes both the recursion-error message schedule and the movement-check load order. Direct access only in the coordinate comparisons does not produce the same result; the other self-field accesses matter to alias analysis.

```c
typeIndex = alienInstances[selfIndex].typeIndex;
/* Other self fields also use direct array access. */
if ((alienInstances[selfIndex].unk0 != alienInstances[selfIndex].unk2E) ||
    (alienInstances[selfIndex].unk2 != alienInstances[selfIndex].unk30) ||
    (alienInstances[selfIndex].unk4 != alienInstances[selfIndex].unk32) ||
    (arg2 == 0)) {
    /* ... */
}
```

-> correct ASM order (the complete function remains unmatched):

```asm
lbu     t6,type_index_slot(sp)
lh      t0,0(s1)
lh      t1,0x2e(s1)
sll     t7,t6,2
subu    t7,t7,t6
sll     t7,t7,2
lui     t8,0x8025
addu    t7,t7,t6
sll     t7,t7,3
addiu   t8,t8,0x6680
addu    t9,t7,t8
bne     t0,t1,movement_changed
sw      t9,type_pointer_slot(sp)
```

incorrect ASM (`func_8007F0E8_8E098`, both sound guards use ordinary promoted byte comparisons):

```asm
lbu     a0,sound_id_slot(sp)
/* Test against 0xff, then calculate volume while retaining a0. */
/* The second sound-ID load is missing. */
beqzl   a0,zero,no_sound
lw      t1,collision_slot(sp)
jal     func_8011BEA0_12AE50
nop
```

-> code changed:

Use explicit unsigned word promotion in both sound-ID guards, while leaving the playback function's signed word argument unchanged. Changing only the sentinel literal to `0xFFU` is insufficient.

```c
if ((u32)soundId != 0xFF) {
    absSpeed = BH_ABS(alienInstances[selfIndex].unk12);
    absSpeed = ((alienTypes[alienInstances[selfIndex].typeIndex].unk52 *
                 (absSpeed + 1)) / 200) >> 5;
    if ((u32)soundId != 0) {
        func_8011BEA0_12AE50(soundId, absSpeed);
    }
}
```

-> correct ASM load and call sequence (the complete function still has register, stack and other instruction differences):

```asm
lbu     t5,sound_id_slot(sp)
/* Test against 0xff and calculate volume. */
lbu     t2,sound_id_slot(sp)
/* Multiply, divide by 200, then shift right five. */
beqzl   t2,zero,no_sound
lw      t1,collision_slot(sp)
jal     func_8011BEA0_12AE50
move    a0,t2
```
