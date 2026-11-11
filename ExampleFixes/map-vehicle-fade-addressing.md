# Incorrect ASM

In `func_8009811C_A70CC`, IDO cached the selected vehicle's fade
address across the read and reset.

```asm
lui     v1,0x8015
addiu   v1,v1,-0x12e0
lwc1    $f12,0(v1)
...
swc1    $f24,0(v1)
```

# Code changed

Read the fade through `D_8014ED20_Transition` while retaining the
reset through `D_8014ED20`. The two symbols resolve to the same address
in the US and PAL linkers.

# Correct ASM

```asm
lui     at,%hi(D_8014ED20)
lwc1    $f12,%lo(D_8014ED20)(at)
...
lui     at,%hi(D_8014ED20)
swc1    $f24,%lo(D_8014ED20)(at)
```
