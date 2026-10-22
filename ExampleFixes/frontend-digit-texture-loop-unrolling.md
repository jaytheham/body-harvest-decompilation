## Incorrect ASM

In `func_800829E4_52E94`, writing out the four texture loads separately kept their shared constants in caller registers and omitted the target's saved registers:

```asm
lui     a0,0x8006
lui     a1,0xe800
lui     t2,0xf300
lui     t3,0x73f
```

A plain four-iteration decoding loop also unrolled into four divisions instead of the target's pointer-controlled loop.

## Code changed

Use one indexed loop for decoding and a second indexed loop for the four texture loads. Keep the decoding loop rolled with the increment/decrement control described in `DecompHints.md`. Put its index initialization on the loop-header line, and update the index before dividing the divisor.

```c
digitIndex = 0; while (digitIndex < 4) {
    digits[digitIndex] = arg0 / divisor;
    arg0 -= digits[digitIndex] * divisor;
    digitIndex++;
    digitIndex--;
    digitIndex++;
    divisor /= divisorStep;
}

for (digitIndex = 0; digitIndex < 4; digitIndex++) {
    /* Load glyph digits[3 - digitIndex] into TMEM at digitIndex * 0x80. */
    /* gDPTileSync, gDPSetTextureImage, gDPSetTile, gDPLoadSync, gDPLoadBlock */
}
```

Declare `divisor` and `divisorStep` before `digits[4]` instead of reserving two unused padding words there.

## Correct ASM

The decoding loop remains rolled, with the original synthesized pointer/end-pointer comparison and retained index initialization. The texture loop unrolls into four loads, sharing the target's constants and saved registers:

```asm
addiu   sp,sp,-0x48
sw      s1,0xc(sp)
sw      s0,8(sp)
li      v0,0x3e8
addiu   a1,sp,0x30
addiu   a3,sp,0x40
move    v1,zero
li      a2,0xa
```

```asm
lui     t0,0x8006
lui     t1,0xe800
lui     s1,0x73f
ori     s1,s1,0xf200
lui     s0,0xf300
```
