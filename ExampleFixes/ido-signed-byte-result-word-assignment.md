## incorrect ASM

```asm
subu  v1,t9,a0
sb    v1,13(a3)
sb    v1,13(t2)
```

## code changed

```diff
- color0 = 0xFF - alpha0;
- v3->v.cn[1] = color0;
- v2->v.cn[1] = color0;
- v1->v.cn[1] = color0;
- v0->v.cn[1] = color0;
+ color0 = v3->n.n[1] = 0xFF - alpha0;
+ v2->n.n[1] = color0;
+ v1->n.n[1] = color0;
+ v0->n.n[1] = color0;
```

## correct ASM

```asm
subu  t8,t9,a0
sb    t8,13(a3)
sb    t8,13(t2)
```
