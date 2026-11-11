```asm
addu    s3,t7,t8
```

→

```c
if (((u32)tile & 1) | ((u32)tile & 2)) {}
if (coords) {}
if (level) {}
```

→

```asm
addu    s0,t7,t8
```
