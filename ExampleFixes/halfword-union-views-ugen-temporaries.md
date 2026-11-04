`incorrect ASM`

In `func_800CDDE4_DCD94`, all instructions match except the uniform scale in the first branch:

```asm
li t9,0x96
sh t9,0x8a(sp)
sh t9,0x88(sp)
sh t9,0x8c(sp)
```

-> `code changed`

Use the existing `Unk80052B40` union for rotation and scale. Initialize rotation Z through its unsigned halfword view to retain positive `0x8000`. Chain the signed scale assignments, but normalize the first branch through the unsigned view. In the second branch keep the signed normalization followed by an unsigned-view assignment. Keep these expressions on the same physical source lines as shown:

```c
rotation.unsignedComponents[2] = 0x8000;
scale.components[0] = scale.components[1] = scale.components[2] = 0x96; scale.unsignedComponents[2] &= 0xFFFF;
/* Other branch: */
scale.components[0] = scale.components[1] = scale.components[2] = 0x46; scale.components[2] &= 0xFFFF; scale.unsignedComponents[2] = scale.components[2];
```

The first branch no longer needs the final signed truncation. The unsigned assignment in the second branch preserves the temporary-register sequence for subsequent code. Native and diagnostic UGEN produce identical objects; the final native US ROM checksum passes.

-> `correct ASM`

```asm
li t6,0x96
sh t6,0x8a(sp)
sh t6,0x88(sp)
sh t6,0x8c(sp)
```

All 151 instructions match, including the `0x98` frame and every register and stack offset.
