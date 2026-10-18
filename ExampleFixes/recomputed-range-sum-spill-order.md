Incorrect ASM in `func_800836D0_92680` (all other instructions already matched):

```asm
sw      a1,0x74(sp)
sw      a2,0x70(sp)
; ...
lh      a0,0x76(sp)
lh      a1,0x72(sp)
```

Code changed in both projected-coordinate expressions:

```c
dy = range + kindRange;
dx = (s32)((((f32)coss(alienInstances[arg0].unkE)) / 32768.0) * dy);
dz = (s32)((((f32)sins(alienInstances[arg0].unkE)) / 32768.0) * dy);
```

to:

```c
dy = range + kindRange;
dx = (s32)((((f32)coss(alienInstances[arg0].unkE)) / 32768.0) * (range + kindRange));
dz = (s32)((((f32)sins(alienInstances[arg0].unkE)) / 32768.0) * (range + kindRange));
```

Correct ASM:

```asm
sw      a1,0x6c(sp)
sw      a2,0x68(sp)
; ...
lh      a0,0x6e(sp)
lh      a1,0x6a(sp)
```

With stock IDO 5.3, writing the sum again changes temporary spill allocation
without changing the instruction sequence or the 0x110-byte frame. The two
cached signed tile bases move down eight bytes. The function diff becomes
zero and the full build reports `build/bh.us.z64: OK`.
