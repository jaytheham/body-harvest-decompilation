# Incorrect ASM

The camera initialization in the still-unmatched `func_8009811C_A70CC`
used a dedicated counter while its startup flag reused the later integer
scratch. Separating only the startup flag then assigned the global address
and camera counter to the wrong registers:

```asm
lui     s0,0x8015
addiu   s0,s0,-0x1300
li      a2,1
```

# Code changed

Use the existing integer scratch as the camera counter. Replace the old
counter declaration with a separate startup flag, preserving the local
layout. Keep the stage pointer and advance its indexed source after
incrementing the counter:

```c
s32 startupFlags;
/* ... */
startupFlags = 0;
/* ... */
sp2E8[0] = startupFlags;
for (var_t4 = 0; var_t4 < 5; stage = &scratch.entries[++var_t4 - 5]) {
    cams340[var_t4].distance = stage->unk8;
    cams340[var_t4].pitch = 0x384;
    cams340[var_t4].yaw = -0x4000;
    cams340[var_t4].targetX = stage->unk0;
    cams340[var_t4].targetY = stage->unk2;
    cams340[var_t4].targetZ = 0.0f;
}
```

Unlike reusing the later frame-state counter, reusing this scratch still
allows IDO to unroll the five cameras. Advancing the index inside the stage
assignment also retains source-pointer adjustments that direct indexed
field accesses fold into load offsets.

# Correct ASM

The global address and peeled-loop counter now use the target registers:

```asm
lui     s1,0x8015
addiu   s1,s1,-0x1300
li      s0,1
```

This is a partial correction. The function retains its `NON_MATCHING`
wrapper; its native diff score improved from 43918 to 43143 and its text
size grew from `0x3960` to `0x3970`, toward the target `0x39a4`.
