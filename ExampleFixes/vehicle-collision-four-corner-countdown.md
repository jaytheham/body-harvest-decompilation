`incorrect ASM` in `func_80110FB4_11FF64`, before the corner calls to `func_800F9D60_108D10`:

```asm
li      s3,2
```

-> `code changed`: replace the pre-decrement condition, which runs three iterations, with the four-iteration countdown used by the target:

```c
/* Before */
for (gridX = 3; gridX--;) {
    /* Sample the corner, then decrement xPoint and zPoint. */
}

/* After */
gridX = 3;
do {
    /* Sample the corner, then decrement xPoint and zPoint. */
} while (gridX--);
```

-> `correct ASM`:

```asm
li      s4,3
/* Four corner samples, with the counter tested before its decrement. */
bnez    s4,corner_loop
addiu   s4,s4,-1
```
