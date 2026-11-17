`incorrect ASM` -> The glyph delay spills to `0x88(sp)` as expected, but the glyph threshold uses `sw ra,0x80(sp)` and `lw ra,0x80(sp)` around calls.

`code changed` -> Use a separate linker symbol for the first glyph width calculation and its bounds check. The symbol reads the same width word in both versions. In the width scan, repeat the discarded threshold test after the delay test so IDO reserves the two spill slots in the target order.

```c
charIndex = 0;
if (((charIndex + charIndex) * 5) + 0x5A) {}
if (charIndex * 10) {}
if (((charIndex + charIndex) * 5) + 0x5A) {}
```

`correct ASM` -> The threshold spills and reloads use `0x84(sp)`. The glyph delay still uses `0x88(sp)`, and IDO emits no instructions for the discarded tests.
