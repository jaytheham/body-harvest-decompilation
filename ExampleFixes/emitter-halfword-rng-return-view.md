`incorrect ASM`: In `func_800E24B8_F1468`, named random, absolute-speed, pointer, divisor and halfword-sample locals leave an extra eight bytes in the frame (`addiu sp,sp,-0x38` instead of `-0x30`). Inlining the word-returning RNG calls stores each sample with `sw`, then reads its low half with `lhu` at offset `+2`. Casting those calls to `u16` still leaves word-sized call-result temporaries.

-> `code changed`: The RNG implementation returns `(((u32)seed) >> 16) & 0xFFFF`. Give its existing implementation a halfword-return view using the same weak-alias mechanism used by the SDK:

```c
/* include/functions.us.h */
u16 func_800038E0_44E0_U16(void);

/* Beside the RNG definition in src.us/core/1050.c. */
#pragma weak func_800038E0_44E0_U16 = func_800038E0_44E0
```

Use that view directly in the condition and particle arguments. IDO can recycle its expression temporaries between the condition and spawn call. Write the coordinate additions with the position on the left:

```c
alienInstances[arg0].unk0 + (func_800038E0_44E0_U16() % 30) - 15
alienInstances[arg0].unk4 + (func_800038E0_44E0_U16() % 30) - 15
```

The height argument uses `alienTypes[alienInstances[arg0].typeIndex].unkC / 2 + (func_800038E0_44E0_U16() % 20)`. Putting a random offset on the left of a coordinate addition makes CFE evaluate the coordinate load first and rotates the temporary registers.

-> `correct ASM`: The frame is `0x30`; the initial argument store/load uses `sp+0x30`/`sp+0x33`; the cached alien pointer uses `sp+0x20`; the three random samples use `sh v0,0x24(sp)`, `sh v0,0x26(sp)` and `sh v0,0x28(sp)`. The first coordinate sequence uses `lhu t3`, `mfhi t4`, `lh t5` and `addu a0,t4,t5`; the second uses `lhu t1`, `mfhi t2`, `lh t3` and `addu a2,t2,t3`. All 108 instructions match, and both full US and EU ROM checksums pass.