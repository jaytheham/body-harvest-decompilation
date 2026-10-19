## Incorrect ASM

In `func_8012B26C_13A21C`, comparing the invincibility pointer with the cached alien pointer reversed the branch operands at ROM offset `0x13B100`:

```asm
lw   t3,0xac4(t3)
bnel s3,t3,weakPoint
lb   v0,0x5a(s2)
```

## Code changed

Use the equivalent indexed alien address in this comparison. The loop index remains unchanged throughout this alien's collision check:

```c
/* Before: */
D_80140AC4_14FA74 == entity.alien

/* After: */
D_80140AC4_14FA74 == &alienInstances[index]
```

## Correct ASM

IDO reuses the existing address in `s3` and emits the target operand order without additional instructions:

```asm
lw   t3,0xac4(t3)
bnel t3,s3,weakPoint
lb   v0,0x5a(s2)
```
