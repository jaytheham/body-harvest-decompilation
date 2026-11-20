# Incorrect ASM

In `func_8009811C_A70CC`, decrementing the marker cursor separately produced a branch-likely instruction for the final alien type exclusion.

```asm
beql    v0,at,skip
 move   a0,s1
```

# Code changed

Derive the cursor from the countdown index inside a postdecrement while loop. Starting at 0xFF visits the same entries as the original loop. IDO folds the first decrement and emits the target loop-entry order.

```c
var_s1 = 0xFF;
while (var_s1--) {
    var_s0_4 = &alienInstances[var_s1];
    /* Filter and draw the marker. */
}
```

# Correct ASM

The final type comparison now uses an ordinary branch and loads the fifth call argument in its delay slot. The temporary register still differs from the target.

```asm
beq     v0,at,skip
 li     t6,0xf
sw      t6,0x10(sp)
```
