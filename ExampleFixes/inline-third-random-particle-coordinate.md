# Inline the final random coordinate call

Incorrect ASM:
```asm
lh t5,0x136a(s0)
div zero,t8,v1
mfhi t9
lh t0,0x1368(s0)
# later: Y addition precedes X addition
```

Code changed:
```c
/* Before */
s32 randomZ;
randomZ = func_800038E0_44E0();
func_800DEA08_ED9B8(vehicleInstances[54].unk0 + random[1] % 25 + 80,
    vehicleInstances[54].unk2 + random[2] % 25 + 100,
    vehicleInstances[54].unk4 + randomZ % 25 + 20, /* remaining arguments */);
/* After: retain an unused word declaration in place of randomZ */
s32 pad;
func_800DEA08_ED9B8(vehicleInstances[54].unk0 + random[1] % 25 + 80,
    vehicleInstances[54].unk2 + random[2] % 25 + 100,
    vehicleInstances[54].unk4 + func_800038E0_44E0() % 25 + 20,
    /* remaining arguments */);
```

Correct ASM:
```asm
lh t0,0x1368(s0)
div zero,t8,v1
mfhi t9
lh t5,0x136a(s0)
# later: X addition precedes Y addition
```

In `func_802D5C24_2B8054`, this changes the instruction schedule without
changing the random-call order. The unused word keeps the first two random
halfwords at sp+0x42 and sp+0x44 instead of sp+0x46 and sp+0x48.
