# Incorrect ASM

```asm
lw      t8,0x2ac(sp)
slti    at,t8,0x10
bnez    at,...
 move   s0,t8
slti    at,t8,0x20
```

# Code changed

Use a volatile scalar for the framebuffer update counter in
`func_8009811C_A70CC`. Keep the second read within the matrix-update
branch, after emitting the matrix command.

```c
volatile s32 mapStep;

/* ... */

var_s0 = mapStep;
if (var_s0 >= 0x10) {
    if (var_s0 < 0x20) {
        /* Update and emit the matrix. */
        var_s0 = mapStep;
    }
    func_800970C0_A6070();
}
```

# Correct ASM

```asm
lw      s0,0x2ac(sp)
slti    at,s0,0x10
bnez    at,...
 slti   at,s0,0x20
```
