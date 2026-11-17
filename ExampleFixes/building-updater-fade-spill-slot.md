Incorrect ASM:
```asm
sw    t5,0x78(sp)
sw    zero,0xc0(sp)
lw    t6,0x78(sp)
```

-> Code changed: In `func_8011A604_1295B4`, compare the fade progress as
`(f64) D_8015EA2C` at each test instead of storing it in a local `f64`.
Keep the empty null branch after the fade callback so IDO emits the same
control flow. Move the two final word-sized locals (`randomZ` and
`compactIndex`) into the former double declaration's position. This
reduces the front end's stack reservation by eight bytes while keeping
the loop index and the particle coordinates at their original offsets.

-> Correct ASM:
```asm
sw    t5,0x80(sp)
sw    zero,0xc0(sp)
lw    t6,0x80(sp)
```
