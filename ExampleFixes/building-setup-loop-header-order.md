**Incorrect ASM**

```asm
lui     a0, %hi(D_800522A8)
li      a2, 254
addiu   a0, a0, %lo(D_800522A8)
```

**Code changed**

In `func_8011694C_1258FC`, joining the counter initializer and the `do`
statement on one source line kept IDO's generated pointer initialization together.
The loop still obtains the pointer from the same array index.

```diff
- count = 0xFE;
- do {
+ count = 0xFE; do {
      buildings.gridCell = &buildingInstances[count];
```

**Correct ASM**

```asm
lui     a0, %hi(D_800522A8)
addiu   a0, a0, %lo(D_800522A8)
li      a2, 254
```
