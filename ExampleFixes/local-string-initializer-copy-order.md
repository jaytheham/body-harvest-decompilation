# IDO copy order for local string initializers

```asm
# Incorrect ASM: the "OK" copy runs before the descriptor copy.
addiu   t8,t8,0x78cc
lwr     at,2(t8)
addiu   t7,sp,0x44
```

↓

```c
/* Move the descriptor assignment into its declaration, before the strings. */
Unk8031C88 sp48 = D_80031C88_32888;
char okMessage[] = "OK";
char errorMessage[] = "**** ERROR ****";
```

↓

```asm
# Correct ASM: the descriptor copy runs first.
addiu   t8,t8,0x1c88
lw      at,0(t8)
addiu   t7,sp,0x48
```
