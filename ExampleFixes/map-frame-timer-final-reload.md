# Incorrect ASM

```asm
addiu   t6,sp,0x31c
lw      s0,0(t6)
beqz    s0,...
 nop
addiu   s0,s0,-1
```

# Code changed

Declare the frame timer as a volatile scalar. In
`func_8009811C_A70CC`, casting the address of an array element to
volatile before the final read caused IDO to materialize that address
in a temporary register. The scalar keeps the timer at the same stack
offset and allows a direct read.

```c
volatile s32 frameCount;

/* ... */

func_8000505C_5C5C();
var_s0 = frameCount;
if (var_s0 != 0) {
    var_s0 -= 1;
}
```

# Correct ASM

```asm
lw      s0,0x31c(sp)
beqz    s0,...
 nop
addiu   s0,s0,-1
```
