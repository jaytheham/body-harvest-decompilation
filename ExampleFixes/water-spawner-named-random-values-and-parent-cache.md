## Incorrect ASM

`func_800CA1B0_D9160` used an extra shared CFE word for inline random-return expressions. The original particle base spilled at `sp+0x2C` instead of `sp+0x30`. After naming every random return in an existing word, the new-particle pointer instead spilled at `sp+0x2C` instead of `sp+0x28`:

```asm
sw      v1,0x2C(sp)
lw      t8,0x2C(sp)
addu    t7,v1,t6
```

## Code changed

Give the mode/random word and the short-lived parent pointer one union. Give the source-position pointer and the later parent pointer a second union; these lifetimes do not overlap. Place the word union after the three short indices so the two vectors and saved parent index retain their original homes. Assign each random return to `cache.value` before its remainder expression.

Capture the typed parent pointer **before** assigning the new-particle pointer, then transfer it after the three source-coordinate copies:

```c
cache.parent = (SpurtEmitterState *)(s32)D_80154318[parentIdx].payload;
newUnit = &D_80154318[newUnitIdx];
newUnit->unk8 = pointers.effectUnit->unk0;
newUnit->unkA = pointers.effectUnit->unk2;
newUnit->unkC = pointers.effectUnit->unk4;
pointers.parent = cache.parent;
newUnit->unk11 = pointers.parent->alpha;
cache.value = func_800038E0_44E0();
newUnit->unk2 = D_80154318[originalIndex].unk2
             + (cache.value % (D_80154318[originalIndex].unk2 * 2));
```

The early typed-pointer capture changes the otherwise unused conversion spill request to precede the new-particle cache. Moving the capture after the new-particle assignment leaves the pointer at `sp+0x2C`. Reversing the two source operands of the final addition also restores the target's instruction operand order.

## Correct ASM

```asm
sw      t9,0x30(sp)
...
sw      v1,0x28(sp)
...
lw      t4,0x30(sp)
lw      t8,0x28(sp)
...
addu    t7,t6,v1
```

The frame remains `0x60`; vectors remain at `sp+0x44` and `sp+0x38`, and the parent index remains at `sp+0x58`. Complete US and EU ROM comparisons pass.
