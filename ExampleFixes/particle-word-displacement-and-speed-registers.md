# Word displacement and word speed replace an operand-order dead end

Incorrect ASM (`func_800E2830_F17E0`): casting a short displacement only at the coordinate store leaves its eliminated mask after the X load. Reversing an explicit addition through a particle pointer fixes that load but reverses the final `addu` operands instead.

```asm
lh   t4,0(s0)
addu t6,t4,a0
/* Pointer-based alternative: */
lh   t5,0(s0)
addu t6,a0,t5
```

-> Code changed:

```c
u8 i;
s16 value;
s32 velocity;
s16 didShrink;
s32 xOffset;
u8 *timer;

/* Siberia branch: */
value = sins((u16)(i + D_80052A8C) << 11);
velocity = (u16)D_80153BD0[i].unk4;
xOffset = (s16)((((f32)value / 32768.0) * (D_80154300 / 5 + 0x10)) +
                 ((D_80154080 * velocity * 2) >> 4));
/* Both drift branches assign xOffset, then: */
xOffset &= 0xFFFF;
D_80153BD0[i].unk0 += xOffset;
D_80153BD0[i].unk2 += velocity;
```

With only a word displacement, optimizer diagnostics gave it and the indirect speed expression equal priority (`25`), choosing `v1` for displacement and `a0` for speed. A separate word speed local ahead of the displacement gives the target speed/displacement registers. Reusing a short scratch for the timer and sine result fits the word speed into the original local layout: the shrink flag remains at `sp+0x4E`, and the frame remains `0x58`. A short speed local or a word sine scratch changed the allocation and scheduling.

-> Correct ASM:

```asm
lhu  v1,4(s0)
...
mfc1 a0,$f10
...
lh   t5,0(s0)
addu t6,t5,a0
```
