# Incorrect ASM

```asm
beq       t7,v0,...
 sub.s    $f2,$f8,$f6
mul.s     $f10,$f0,$f0
nop
mul.s     $f4,$f2,$f2
add.s     $f8,$f10,$f4
trunc.w.s $f6,$f8
mfc1      v1,$f6
```

# Code changed

The conversion in the nearest-vehicle scan had no use before the
player comparison, so IDO moved it into the fallthrough path. Add
an empty comparison before the player check. Using the pipe-sync
word in this comparison also preserves its existing register.

```c
temp_v1 = (s32) ((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
if (temp_v1 == _SHIFTL(G_RDPPIPESYNC, 24, 8)) {}
```

# Correct ASM

```asm
sub.s     $f2,$f8,$f6
mul.s     $f10,$f0,$f0
nop
mul.s     $f4,$f2,$f2
add.s     $f8,$f10,$f4
trunc.w.s $f6,$f8
mfc1      v1,$f6
beq       t2,v0,...
 nop
```
