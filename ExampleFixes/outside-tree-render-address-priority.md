incorrect ASM (`func_8007764C_865FC`, address and invariant allocation):

```asm
lui     s2,0x8003
addiu   s2,s2,0x1160
and     t7,s2,at
move    s2,t7
...
lui     s0,0x1fff
ori     s0,s0,0xffff
```

-> code changed:

Retain the memory-defined `Gfx* phasePacket` from the first camera command through the model pass. Observe it twice after the model display-list packet, once at the bridge, and once before the final camera macro:

```c
gSPDisplayList(D_8005BB2C++, obj->unk8);
if (phasePacket) {}
if (phasePacket) {}
/* After the model loop: */
if (obj < &D_80259D90[150]) {}
if ((u32)phasePacket == 0x01020040U) {}
/* Immediately before the final camera gSPMatrix: */
if (phasePacket) {}
```

These observations emit no instructions. The packet pointer's saving density is below the tile-size command's 2.5 but above the texture-mode command's approximately 1.67. It takes `s0`, preserving the target camera and mode colors instead of caching the physical-address mask there. Additional observations can cross the tile-size threshold and produce a different allocation.

Give the two passes distinct symbolic endpoints. Keep the first pass's typed array bound; terminate the second, nonempty `do` loop with the existing linker symbol `D_8025CC70`, declared as `extern Unk80259D90 D_8025CC70[];`. This symbol is exactly `&D_80259D90[150]` in both region link maps. The distinct name prevents unwanted cross-pass endpoint commoning:

```c
for (obj = D_80259D90; obj < &D_80259D90[150]; obj++) {
    /* Model pass. */
}
value = -1;
obj = D_80259D90; do {
    /* Billboard pass. */
} while (++obj != D_8025CC70);
```

-> correct ASM:

```asm
lui     s3,0x8003
addiu   s3,s3,0x1160
and     t7,s3,at
move    s3,t7
...
lui     s0,0x755
ori     s0,s0,0xc000
```

The endpoint uses caller register `t1`, the physical mask is rematerialized where required, the frame remains `0x128`, and the complete function matches the ROM.
