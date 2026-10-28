Incorrect ASM:

`func_802DD750_3218A0` used t4 for the root joint and t3 for its child instead of t3/t4. An explicit cached instance ID enlarged the frame from 0x88 to 0x90. Negating the cosine after conversion produced `neg.s`; the double-array multiplier reversed the final `mul.d` operands.

Code changed:

Use `s16 joints[14]`. Declare `s16 root` after the existing type-index halfword, initialize it from `arg4` before filling the array, and assign `joints[2] = root` after all traversal assignments. Read the type index before the flag guard. Pass the original instance ID to both sound calls, allowing IDO to create its shared word spill. Let the trig prototypes perform the unsigned-halfword angle conversion. Negate the cosine ratio before converting it to float. Represent the existing 150.0 constant as `ShadowGeometryConstant` and access `.value`.

Correct ASM:

```asm
lh      t3,0x9a(sp)
lb      t4,0xc(v1)
sh      t3,0x70(sp)
sh      t4,0x72(sp)
```

```asm
neg.d   f18,f16
cvt.s.d f4,f18
```

```asm
mul.d   f10,f6,f8
```

The frame is 0x88, the complete function matches, and the full US ROM checksum passes.
