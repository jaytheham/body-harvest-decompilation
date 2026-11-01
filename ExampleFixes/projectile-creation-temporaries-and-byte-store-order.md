# Creation temporaries, byte narrowing and store order

Incorrect ASM in `func_801226F8_1316A8`:

```asm
addiu sp,sp,-0x88
swc1 $f0,0x68(sp)
sh v0,0x66(sp)
```

Code changed: reuse two named `s16` trigonometry results for launch and player velocity. Save the default-branch square root in the same magnitude local. Declare magnitude before the negative-X scratch, and the two short results afterward. Assign the absolute-Z ternary to that scratch as a discarded comma operand before testing it:

```c
if ((absoluteX > 0) || ((scratch = (-z < z) ? z : -z), (scratch > 0))) {
    heading = atan(x, z);
}
sinPitch = sins(pitch); cosPitch = sins((u16)(0x4000 - pitch));
```

Correct ASM:

```asm
addiu sp,sp,-0x80
swc1 $f0,0x64(sp)
sh v0,0x5C(sp)
```

Incorrect ASM:

```asm
sll t1,v1,0x8
sh t1,0x72(sp)
```

Code changed: `pitch = type->launchAngle << 8` -> `pitch = (s8)type->launchAngle << 8`. The destination short discards the extra sign bits. Keep the two launch-trig assignments on the same physical source line to preserve the target ANDI/SRA schedule.

Correct ASM:

```asm
sll t7,v1,0x8
sh t7,0x72(sp)
```

Incorrect ASM:

```asm
sb t5,0x1D(s0)
swc1 $f10,0x18(s0)
lh t1,0x74(sp)
```

Code changed: write yaw byte `unk1C` before pitch byte `unk1D`, after the three velocity fields.

Correct ASM:

```asm
swc1 $f10,0x18(s0)
lh t5,0x74(sp)
sb t9,0x1D(s0)
```

All 1,022 instructions match; full US and EU ROM checks pass.
