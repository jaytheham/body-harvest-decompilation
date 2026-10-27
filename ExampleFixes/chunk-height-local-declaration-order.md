# Chunk collision-height stack slot

incorrect ASM:
```asm
sh t0, 0x9c(sp)
lh t0, 0x9c(sp)
```

code changed:
```c
s16 effectIdx;
s16 linkedIndex;
ChunkEffectState *entrySub;
s16 motionIndex;
s16 hitY;
s32 nextIndex;
ChunkMotionState *motion;
Unk80052B40_fp sp84;
```

correct ASM:
```asm
sh t0, 0x98(sp)
lh t0, 0x98(sp)
```
