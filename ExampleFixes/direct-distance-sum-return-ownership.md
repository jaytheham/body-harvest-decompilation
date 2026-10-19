## Incorrect ASM

In the vehicle and alien scans of `func_8012B26C_13A21C`, initializing distance from the first square-helper call and then accumulating the second result keeps both values in the same variable:

```asm
move    s0,v0
jal     func_800047FC_53FC
 ...
addu    s0,s0,v0
```

## Code changed

Use one sum expression for the two horizontal square-helper calls. Share the resulting distance variable between the disjoint homing, vehicle, and alien calculations.

```c
distance = func_800047FC_53FC((s16)(vehicle->unk0 - projectile->unk0))
         + func_800047FC_53FC((s16)(vehicle->unk4 - projectile->unk8));
```

The first return value is then an intermediate, rather than the initial definition of distance. Keep the conditional vertical contribution as `distance += ...`.

## Correct ASM

```asm
move    s0,v0
jal     func_800047FC_53FC
 ...
addu    s1,v0,s0
```

The homing and both scan sums now have the target ownership. This also frees the weapon-entry pointer to use its target stack home and assigns the main projectile pointer to s6. The enclosing function still requires further matching.
