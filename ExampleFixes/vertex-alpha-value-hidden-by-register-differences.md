`incorrect ASM`

The sixth vertex in `func_800D8190_E7140` receives `0xD7`. A structural diff presents its byte store as a register difference, obscuring the different constant carried by that register.

```asm
li      t6,0xd7
...
sb      t6,0xf(t7)
```

-> `code changed`

Change only the sixth vertex's alpha assignment, immediately after its three color components:

```c
D_8005BB34->v.cn[3] = 0xD2; /* previously 0xD7 */
```

-> `correct ASM` (target value flow)

```asm
/* E780C */ li      v1,0xd2
...
/* E7984 */ sb      v1,0xf(t7)
```

This corrects the stored value and changes constant-reference counts. The remaining register and scheduling differences still require matching.
