`incorrect ASM`

In `func_8009811C_A70CC`, the compiler leaves a NOP after moving the last stage coordinate to the FPU during startup. It emits the angle load later between the distance conversion and the Y subtraction. That adds one word before the map loop:

```asm
a7518: mtc1   t7,$f8
a751c: nop
...
a7580: cvt.s.w $f0,$f4
a7584: li     v0,0x3fff
a7588: sub.s  $f8,$f6,$f0
```

-> `code changed`

Retain the existing comparison with the stage extent. Add a comparison with the saved camera distance immediately after initializing `D_8014ED0C` and before converting the distance to float:

```c
D_8014ED0C = 0.0f;
if (0x3FFF == cam3CC.distance) {}
temp_f0 = cam3CC.distance;
```

-> `correct ASM`

The distance conversion, subtraction and addition recover their original positions. The two constant loads still need their target registers and relative order.

```asm
a7580: cvt.s.w $f0,$f4
a7584: sub.s   $f8,$f6,$f0
a7588: add.s   $f10,$f0,$f24
```
