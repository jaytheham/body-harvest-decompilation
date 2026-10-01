# Byte local padding and cached array pointers

Matched `func_80091E70_A0E20` in `src.us/overlay_gameplay/outside/9BFF0.c` with IDO 5.3 -O2.

The instruction sequence and registers matched with direct `alienInstances[arg0]` and `alienTypes[specIndex]` accesses, but the attack flag and speed spilled to the wrong byte/halfword offsets. The matching declaration order is:

```c
u8 specIndex = alienInstances[arg0].typeIndex;
u8 pad0;
u8 pad1;
u8 useAttack = 0;
u8 pad2;
u8 pad3;
s16 targetSpeed;
s32 x;
s32 z;
```

The unused byte locals reserve space because they precede live locals. In the 0x38-byte frame, this puts the flag at sp+0x34, speed at sp+0x30, X at sp+0x2C, and Z at sp+0x28. IDO caches the alien and type pointers at sp+0x24 and sp+0x20. Explicit pointer locals changed spill placement; omitting the named type index also changed register allocation and instruction scheduling.

When all instructions match and only narrow local offsets differ, inspect byte-level declaration packing before changing logic or introducing explicit pointer locals. Full build verification returned `build/bh.us.z64: OK`.
