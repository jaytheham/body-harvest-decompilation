## Incorrect ASM

In `func_8012B26C_13A21C`, relying only on `alive = 0` to end the vehicle and alien scans kept their induction variables live through hit handling. The resulting loop tail reloaded `alive` and updated the index after a confirmed hit. With scalar motion values, IDO also saved six floating-point register pairs:

```asm
sdc1    $f30,0x68($sp)
sdc1    $f28,0x60($sp)
sdc1    $f26,0x58($sp)
sdc1    $f24,0x50($sp)
sdc1    $f22,0x48($sp)
sdc1    $f20,0x40($sp)
```

## Code changed

Exit each scan explicitly after processing a confirmed hit:

```c
while (alive && index--) {
    /* Test the current vehicle or alien. */
    if (hit) {
        alive = 0;
        /* Apply the hit and damage. */
        break;
    }
}
```

This shortens the index live range before the geometry calls. It also allows the ordinary scalar displacement variables and their implicit float conversions to replace the integer and float arrays previously used to suppress unwanted register retention.

## Correct ASM

The confirmed-hit paths now branch directly out of their scans, as in the target:

```asm
jal     func_80124C40_133BF0
 ...
b       scan_end
 nop
```

The scalar version saves the same four floating-point register pairs as the target:

```asm
sdc1    $f26,0x58($sp)
sdc1    $f24,0x50($sp)
sdc1    $f22,0x48($sp)
sdc1    $f20,0x40($sp)
```
