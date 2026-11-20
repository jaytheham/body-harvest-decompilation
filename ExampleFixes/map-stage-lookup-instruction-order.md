# Incorrect ASM

In `func_8009811C_A70CC`, IDO completed the level-table base address before finishing the stage-index scaling. Sharing the table pointer with the texture and vehicle scratch also colored it `v0`.

```asm
addu    t7,t7,t9
addu    v0,t6,t8
sll     t7,t7,0x1
addu    a3,t7,v0
```

# Code changed

Give the table base its own typed pointer. Use the base assignment as the array operand, with the stage's final index. Reuse the old startup-flag slot for the pointer, and hold the startup flag in the existing word temporary before saving it. Use a different word temporary for the loop index.

```c
const Unk14C280Entry *stageTable;
/* ... */
stage = &(stageTable = &D_8013D2D0_14C280[currentLevel * 5])[D_80047F94 - 5];
/* ... */
sp2E8[0] = temp_v0;
for (var_a1 = 0; var_a1 < 5; stage = &stageTable[++var_a1 - 5]) {
    /* Initialize the camera. */
}
```

# Correct ASM

The scaling shift precedes both address additions. This pointer and counter arrangement produced exact bytes during the stage-lookup check at ROM offsets `0xA71A0` through `0xA71BF`. Later changes to the marker-pulse calculation moved the startup flag and stage pointer to different registers. The address calculation retains this instruction order.

```asm
addu    t7,t7,t9
sll     t7,t7,0x1
addu    t2,t6,t8
addu    a3,t2,t7
```
