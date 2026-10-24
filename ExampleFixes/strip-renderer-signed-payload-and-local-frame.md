## Incorrect ASM

`func_800CC090_DB040` initially used unsigned phase loads, signed color loads, and a narrowed 16-bit absolute value. After correcting those types and matching the control flow, named coefficient constants and redundant header/load locals still left the exact instruction sequence in a 0x108-byte frame, with the coordinate pair at sp+0xE4:

```asm
addiu sp, sp, -0x108
addiu a0, sp, 0xe4
sh    t6, 0xe4(sp)
sh    t7, 0xe6(sp)
addiu sp, sp, 0x108
```

## Code changed

Use `EffectStripState` with unsigned color bytes and a signed phase byte. Compute the full-width absolute value separately in each size branch using explicit if/else:

```c
if (D_80154318[index].unk2 >= 0) {
    magnitude = D_80154318[index].unk2;
} else {
    magnitude = -D_80154318[index].unk2;
}
```

Replace the five coefficient locals with `2.5f`, `25.0f`, `1.6666666f`, `20.0f`, and `10000.0f` at their uses. IDO hoists the same constants into the same saved FPRs. Remove the copied header pointer and signed-load temporary, using indexed entry fields directly. Declare the seven scaled basis values, the 32-bit magnitude, and then `Vec2_S16 groundPosition`; this preserves the pair's offset within the smaller frame. The next-link lookup also uses the original index instead of a cached header pointer.

Remove the two obsolete literal-pool placeholders when enabling the C implementation; the inline floating literals generate their replacements.

## Correct ASM

All 456 instruction words match, including signed `lb` phase loads, unsigned `lbu` color loads, both branch-local absolute values, the original saved-register allocation, and the stack homes:

```asm
addiu sp, sp, -0xe8
addiu a0, sp, 0xc4
sh    t6, 0xc4(sp)
sh    t7, 0xc6(sp)
addiu sp, sp, 0xe8
```
