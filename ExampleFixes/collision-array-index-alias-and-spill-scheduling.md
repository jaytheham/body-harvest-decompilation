## Incorrect ASM

`func_8012E258_13D208`: manually decrementing `entry` made the index spill precede every coordinate load:

```asm
sw      v1,0xb8(sp)
lw      a3,4(s6)
lw      t4,0(s6)
lw      t3,8(s6)
sra     t9,a3,16
sll     t5,t9,16
sra     a3,t5,16
```

## Code changed

Derive the entry from the array index each iteration, and keep the three coordinate assignments on separate lines. Keep the index initialization and entry address on the same physical line. The discarded assignment in the inactive branch preserves the index's allocation across the loop join.

```c
i = 0x18; do { entry = &D_8015FAD0[i];
    if ((entry->unk2C != 0) && (entry->unk2C < 4)) {
        x = entry->unk0 >> 16;
        y = entry->unk4 >> 16;
        z = entry->unk8 >> 16;
        /* Collision handling. */
    } else {
        top = i;
    }
} while (i--);
```

The stock assembler dependency report showed the original stack store ordered before all loads through `entry`. Array indexing preserves alias information that allows the loads to precede the spill; separate coordinate lines resolve the final scheduling tie.

## Correct ASM

```asm
lw      a3,4(s6)
lw      t4,0(s6)
lw      t3,8(s6)
sra     t9,a3,16
sll     t5,t9,16
sw      v1,0xb8(sp)
sra     a3,t5,16
```

## Incorrect ASM

Naming the maximum extent `top` and leaving the Z absolute value anonymous assigned the radius to `a1`, the maximum to `v1`, and the Z absolute value to `a1`.

```asm
lh      a1,0xc(t1)
move    v1,t2
addu    a0,v1,a1
```

## Code changed

Inline the maximum, put the vehicle radius first in the sum, and use `top` for the Z absolute value before reusing it for the collision ceiling.

```c
minY = vehicleTypes[vehicle->unk1A].unkC + ((halfZ < halfX) ? halfX : halfZ) + 0x64;
/* X range check. */
top = (vehicle->unk4 - z >= 0) ? vehicle->unk4 - z : -(vehicle->unk4 - z);
if (top < minY) {
    /* Y range check and collision handling. */
}
```

## Correct ASM

```asm
lh      v1,0xc(t1)
move    a1,t2
addu    a0,a1,v1
```

The final US ROM comparison reports `build/bh.us.z64: OK`.
