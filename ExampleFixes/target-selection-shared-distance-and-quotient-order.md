## Incorrect ASM

`func_800AC2FC_BB2AC` had the correct instructions but a 0x58 frame and widespread caller-register differences. Caching the state byte and signed target field in separate locals placed the raw target in a2 and the array base in a3. An anonymous squared-distance sum also left the initial distance constant in t6 instead of t0.

After those issues were corrected, 13 register operands still differed: the random-yaw shift used t7, the old yaw used t9, and the divide result used t8. The target uses t8, t7, and t9 respectively, with further t7/t8 differences in later blocks.

## Code changed

Read the unchanged state and target fields directly. Keep a word target index, and preserve `(s32)arg0` in the current-alien array accesses: removing those casts replaces the target MULTU by shifts and additions.

Reuse the address-taken `distanceSq` for the later squared-distance sum:

```c
distanceSq = 0x3D0900;
/* nearest-object search receives &distanceSq */
...
distanceSq = dx * dx + dz * dz;
if (distanceSq >= 0x1DE841) { ... }
```

On the successful-building path, update the flags before assigning speed, as in matched `func_8008D634_9C5E4`:

```c
alienInstances[(s32)arg0].unk20 |= ALIEN_FLAG_TARGET_PT;
alienInstances[(s32)arg0].unk48 = 0xA0;
```

Use the existing dead word scratch for the random quotient before adding it to the old yaw:

```c
temp = (func_800038E0_44E0() << 11) / 65535;
alienInstances[(s32)arg0].unkE = alienInstances[(s32)arg0].unkE + temp - 0x400;
```

## Correct ASM

The frame is 0x50. The initial distance value, search-result load, and later squared-distance sum use t0; the masked index, raw target, array base, and stride use a2, a3, t1, and t2.

```asm
sll   t8,v0,11
div   zero,t8,at
lh    t7,0xe(s0)
mflo  t9
...
addu  t3,t7,t9
```

The quotient temporary changes front-end operand visitation and fixes both later register cycles as well. All instructions match, and complete native US and EU ROM checks return OK.
