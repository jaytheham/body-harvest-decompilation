# Named call result removes a compiler temporary below locals

In `func_802D775C_19026C`, the instruction sequence and registers matched,
but four pointer spill slots were four bytes too low. The frame size and
all coordinate and random-array offsets were already correct.

The fourth random call was nested in an effect argument:

```c
(func_800038E0_44E0() % 20) + 0x14
```

Moving that call into a named `s32 randomSize` local removed a compiler
temporary below the declared locals. Replace one existing padding word
with the new local to preserve the coordinate and array positions:

```c
s32 sp68;
s32 sp64;
s32 sp60;
s32 randomSize;
s32 pad1[2]; /* Previously pad1[3], without randomSize. */
u16 randomOffset[3];

/* After the three randomOffset assignments: */
randomSize = func_800038E0_44E0();
/* Effect argument: (randomSize % 20) + 0x14 */
```

This moved the pointer spills from `0x40/0x3C/0x38/0x30` to
`0x44/0x40/0x3C/0x34`, kept the `0x78` frame, and preserved every
instruction and register. The assembly diff scored zero and the full ROM
checksum passed. Reducing padding alone moved the random array instead;
the named result was necessary to remove the compiler temporary.

## Sparkle creator: replace the payload pointer home with the named result

`func_800CC7B0_DB760` in `src.us/overlay_gameplay/outside/CFE30.c` had identical instructions and registers, but its entry pointer spilled at `sp+0x50` instead of `sp+0x54`, and its cached half-width spilled at `sp+0x48` instead of `sp+0x4C`. The frame and live scalar offsets already matched.

Remove the named `EffectSparkState *spark` and access the payload through the typed converted array expression:

```c
((EffectSparkState *)(s32)D_80154318[unitId].payload)->x =
    (func_800038E0_44E0() % arg1) + arg3 - (arg1 / 2);
```

Declare `s32 randomSize` in the former pointer declaration position. After the two named random halfword assignments, evaluate the last random call into `randomSize`, then pass `(randomSize % 4) + 4` to `func_800C541C_D43CC`. This replaces the pointer home with a word of the same size and removes the nested call temporary. Both spills move up four bytes, while the `0x68` frame and every other instruction and offset remain unchanged. Keep the half-width calculation inline: naming it changed the spill allocation and left an extra four-byte mismatch.

The integer conversion in the typed payload expression preserves the separate entry and payload bases required by the target. The byte view of the word lifetime parameter also preserves its target byte load and scheduling. The final whole-ROM comparison passed.
