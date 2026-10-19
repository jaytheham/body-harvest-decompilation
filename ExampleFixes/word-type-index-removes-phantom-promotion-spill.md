Incorrect ASM in `func_80113CEC_122C9C`: all instructions and registers agree,
but a byte-sized cached vehicle type creates an anonymous word-promotion spill.
The resulting frame rounds up by eight bytes:

```asm
addiu     sp,sp,-0xe0
sw        t6,0x68(sp)
...
sh        v0,0x80(sp)
...
sh        v0,0x82(sp)
```

→ Code changed: replace the unused word local with `s32 typeIndex` and remove
the old `u8 typeIndex` declaration. Alignment before `flags` preserves the
earlier local homes. Keep the initial vehicle reference's raw word view;
that separate load web places the radius conversion and loop cursor in their
required relative slots.

```c
u8 playerType;
u8 destroyedType;
s32 flags;
/* Other existing locals retain their order. */
s32 waterHeight;
s32 typeIndex;
s16 oldSine;

/* At the vehicle-loop header: */
typeIndex = vehicle->unk1A;
```

→ Correct ASM: the cached type no longer needs the synthetic byte-to-word
promotion spill. The frame shrinks to `0xD8`, restoring every local offset:

```asm
addiu     sp,sp,-0xd8
sw        t6,0x60(sp)
...
sh        v0,0x78(sp)
...
sh        v0,0x7a(sp)
```

The complete US ROM checksum passed with the C function enabled.
