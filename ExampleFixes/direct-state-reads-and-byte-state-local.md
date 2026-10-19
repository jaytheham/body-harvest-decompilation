incorrect ASM (`func_80080D98_8FD48`, a signed word local used for both human-state checks):

```asm
bne     v0,t1,human_state_done
beq     v0,t1,spawn_pickup
```

-> code changed:

Read `alienInstances[arg0].unk24` directly in the opening human checks. Use a `u8 humanType` local only in the later pickup check, matching the field width. Declare the byte locals on opposite sides of word locals so normal alignment preserves the existing 0x70 frame and random-value home at 0x50; no explicit padding is needed.

```c
u8 humanType;
VehicleInstance *target = &vehicleInstances[arg1];
f32 speedSq;
f32 minSpeedSq;
u8 alienType;
u32 alienFlags;
s32 randVal2;
s16 angle;
u16 randVal;

/* Opening checks use alienInstances[arg0].unk24 directly. */
/* Later, after the collision callback: */
humanType = alienInstances[arg0].unk24;
if ((humanType == 1) || (humanType == 0x1D)) {
    /* Spawn pickup. */
}
```

-> correct ASM (all function instructions and the complete US ROM match):

```asm
bne     t1,v0,human_state_done
beq     t1,v0,spawn_pickup
```
