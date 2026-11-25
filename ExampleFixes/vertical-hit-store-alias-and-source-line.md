**Incorrect ASM** (`func_80126B80_135B30`)

```asm
sw   t5,0xe4(sp)
addu t4,t2,t3
sh   t4,2(s4)
sh   s6,4(s4)
```

→ **Code changed**

Write the Y field through the named collision record. Keep the empty test, both
coordinate stores, the flag assignment, and the distance conversion on a single
physical source line. The named write emits `.noalias $20,$sp`. The shared source
line lets the assembler resolve the remaining scheduling tie in target order.

```c
if (1) {} CollisionHitRecord.unk2 = hitCoordinate; hit.pointer->unk4 = (s16)z; exactHit = 1; bestDistF = (f32)distSqBest;
```

→ **Correct ASM**

```asm
sh   s6,4(s4)
addu t4,t2,t3
sh   t4,2(s4)
sw   t5,0xe4(sp)
```
