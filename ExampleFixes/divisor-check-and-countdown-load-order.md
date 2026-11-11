```asm
/* a5c10 */ li      s5,0x1ff
```

→

```c
modBase = selectedGroup * 0 + 0x1FF;
for (; loop--; tile++) {
    if (modBase) {}
    /* ... */
}
```

→

```asm
/* a5c10 */ li      s5,0x1f
```
