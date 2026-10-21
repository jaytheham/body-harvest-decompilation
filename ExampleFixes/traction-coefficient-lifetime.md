## Incorrect ASM

In `func_80109C84_118C34`, reusing the first raw sine component and the traction coefficient in `var_f2` let IDO split the coefficient lifetime at the absolute-sine branches. It delayed the coefficient reload until after the branches and cached its double conversion in `$f2`:

```asm
# Missing lwc1/swc1 pairs in both sine branches.
lwc1    $f8, coefficient_home($sp)
cvt.d.s $f2, $f8
```

## Code changed

Keep the first raw sine component in `sp70`, and reuse `waterDamping` for the later traction coefficient instead of `var_f2`. The two damping cases are mutually exclusive.

```c
sp70 = (f32)(((f64)(f32)sins(arg0->unkE + 0x4000) / 32768.0) * (f64)arg0->unk58);
/* ... */
waterDamping = D_8015922C->unk0;
/* Apply the depth and surface adjustments to waterDamping. */
sp74 *= waterDamping;
sp70 *= waterDamping;
/* ... */
arg0->unk30 = (f32)((f64)arg0->unk30 * ((f64)waterDamping - D_80144C68_153C18.value * var_f0));
```

## Correct ASM

The coefficient stays in `$f2` through the branch region, gets saved and restored around each selected sine call, and its double conversion uses `$f14`. The 192-instruction region from the final traction adjustment through the heading update matches structurally, including the scalar velocity stores.

```asm
lwc1    $f2, coefficient_home($sp)
# ... compare and branch ...
swc1    $f2, coefficient_home($sp)
jal     sins
# ... conversion ...
lwc1    $f2, coefficient_home($sp)
# ... merge ...
cvt.d.s $f14, $f2
```
