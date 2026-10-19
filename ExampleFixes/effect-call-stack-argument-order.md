## Incorrect ASM

The randomized effect calls in `func_8012B26C_13A21C` initially put the second random velocity at `sp+0x10`, `-8` at `sp+0x14`, and `0x3C` at `sp+0x18`. The target instead puts `0x3C`, that velocity, and `0x32` in those three argument slots.

## Code changed

Read each outgoing stack slot through the `jal`, including stores scheduled around division checks. Correct the calls to `func_800CA5EC_D959C` to use this argument order:

```c
func_800CA5EC_D959C(x, y, z,
    randomX, 0x3C, randomZ, 0x32, 8,
    randomSize, randomRed, alpha, randomGreen, randomBlue, randomLife);
```

Use `alpha = 0` in case `0x59` and `alpha = 0xA0` in case `0x65`. The following `func_800DEA08_ED9B8` calls also require their scale and color arguments in the target order:

```c
/* case 0x59 */
func_800DEA08_ED9B8(x, y, z, 0x12C, -8, 1, 0x10, 0xC0, 0, 0xBE, 0x1E);
/* case 0x65 */
func_800DEA08_ED9B8(x, y, z, 0x12C, -8, 1, 0x10, 0xC0, 0xA0, 0xA0, 0x1E);
```

## Correct ASM

The first call now supplies `0x3C` at `sp+0x10`, random Z velocity at `sp+0x14`, `0x32` at `sp+0x18`, `8` at `sp+0x1C`, random size at `sp+0x20`, random red at `sp+0x24`, and the case-specific alpha at `sp+0x28`. The following call supplies `0x10` at `sp+0x18`, `0xC0` at `sp+0x1C`, and the final lifetime `0x1E` at `sp+0x28`. Correcting these values restored the target instruction count before register-allocation work.
