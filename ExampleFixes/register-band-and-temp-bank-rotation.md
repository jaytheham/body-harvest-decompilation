# Code changes that corrected register allocation

## Reuse a parameter for the loop condition

In `func_80076FE0_47490` (`overlay_gameplay/frontend/40720.c`), `do { ... } while (counter--);` put four dead exit copies in `t1` instead of the target's `a0`. Reusing the expired `arg0` parameter as the old-counter holder reproduced those copies:

```c
counter = N;
do {
    arg0 = counter;
    *dst++ = *src++;
    counter -= 1;
} while (arg0 != 0);
```

The parameter assignment places the copy in `a0`; IDO folds the exit test into `bnez counter` with the decrement in its delay slot. This matched all 27 instructions.

## Batch field loads and remove the entry pointer

In `func_80088B9C_170C5C`, replacing the named entry pointer with direct `D_800FB7B0[effect]` accesses and reading its five fields into locals before storing them corrected the saved-register roles. The target's field loads were then batched before the conversions and stores, removing four extra `nop` instructions.

## Hoist a scalar assignment before coordinate stores

In `func_800EF9F0_FE9A0`, moving the scalar assignment ahead of the three shifted-coordinate stores corrected every temporary-register operand:

```c
sp5C.unk2 = (s16)D_80157A48.unkC;
sp48.unk0 = D_80157A48.unk2 << 3;
sp48.unk2 = D_80157A48.unk4 << 3;
sp48.unk4 = D_80157A48.unk0 << 3;
```

## Name only the texture-image packet

In `func_800970C0_A6070`, naming the texture-image packet (`dl = D_8005BB2C++;` followed by `gDPSetTextureImage(dl, ...)`) while leaving the other graphics macros on `D_8005BB2C++` assigned the column counter to `s0` and the vertex-buffer global address to `t5`, matching both target roles.

## Copy the initialized scale value

In `func_80097994_A6944`, replacing `scale[0] = scale[1] = scale[2] = 0x100;` with the following assignments matched every instruction before the scale transform and all three stack-store offsets:

```c
scale[2] = 0x100;
scale[1] = scale[2];
scale[0] = scale[2];
```
