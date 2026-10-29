`incorrect ASM`: In `func_800CDDE4_DCD94`, a plain `scale[2] = 0x46;` loses the initial halfword store. The first graphics-pointer increment uses `t6`, and the function is two instructions shorter than the target.

```asm
addiu t6,v0,8
...
sw    t6,0(s0)
```

-> `code changed`: Read the initialized array component back before the graphics setup. Keep the array and its existing stack placement.

```c
scale[2] = 0x46;
scale[2] = scale[2];
index = D_8015426A;
gDPPipeSync(D_8005BB2C++);
```

-> `correct ASM`: The initial value and store survive, and the first graphics-pointer increment uses `t7`. The prologue through the cycle-type command matches, including the `0x98` frame. The complete renderer still has register and store-order differences.

```asm
li    t6,0x46
addiu t7,v0,8
...
sh    t6,0x8c(sp)
sw    t7,0(s0)
```
