```asm
/* incorrect ASM: func_80086D70_95D20, ROM 0x95FE8 */
mul.s $f0, $f12, $f14
```

```c
/* code changed */
/* Before */
if (slope * (f32)distance < (f32)(originY - targetY)) {
/* After: reverse the equivalent comparison. IDO preserves c.lt.s while
 * changing the shared product's operand order. */
if ((f32)(originY - targetY) > slope * (f32)distance) {
```

```asm
/* correct ASM */
mul.s $f0, $f14, $f12
```
