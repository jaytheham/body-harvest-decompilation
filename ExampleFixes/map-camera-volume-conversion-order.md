# Incorrect ASM

In `func_8009811C_A70CC`, calculating the camera volume inside
the sound call scheduled the angle store before the division.

```asm
mtc1    v1,$f4
lui     at,%hi(D_8014ED2E)
sh      v1,%lo(D_8014ED2E)(at)
...
div.s   $f10,$f6,$f8
```

# Code changed

Calculate the volume in a signed halfword local before writing the
angle. An empty test keeps the conversion early through IDO's
optimizer.

```c
temp_a1 = (s32) (((f32) temp_a2_2 / 16384) * 500.0);
if (temp_a1 < 0) {}
D_8014ED2E = temp_a2_2;
func_80014208_14E08(D_8014ED38, temp_a1, 0x40);
```

# Correct ASM

```asm
div.s   $f10,$f6,$f8
ldc1    $f6,0x24f0(at)
lui     at,%hi(D_8014ED2E)
sh      v1,%lo(D_8014ED2E)(at)
cvt.d.s $f4,$f10
```
