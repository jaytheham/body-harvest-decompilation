incorrect ASM (`func_8007764C_865FC`, billboard-loop preheader):

```asm
lui     t1,0x8026
addiu   s1,s1,-0x6270
move    a1,s4
addiu   t1,t1,-0x3390
...
ori     s0,s0,0xc000
```

-> code changed:

Initialize the texture cache first, on its own physical line. Join only the object-pointer initializer to the `do` header:

```c
/* Before: */
obj = D_80259D90;
value = -1;
do {

/* After: */
value = -1;
obj = D_80259D90; do {
```

The loop-invariant constants inherit the loop header's source line. Native AS1 `-R` diagnostics show that the pointer low half, cache move, and constant low halves otherwise tie at zero latency and zero remaining dependent cycles. The pointer/header join removes the pointer's earlier-line advantage. Keeping the cache initializer on the preceding line preserves its earlier move. Joining all three statements merely moves the cache move too late and also scores 60; reordering the initializers without joining the pointer/header scores 215.

-> correct ASM:

```asm
lui     t1,0x8026
move    a1,s4
addiu   t1,t1,-0x3390
...
ori     s0,s0,0xc000
addiu   s1,s1,-0x6270
li      ra,0xc
```

This final change takes the 953-instruction function from score 60 to score 0. Normal `tools/make.ps1` reports `build/bh.us.z64: OK`; no compiler diagnostic options remain enabled.
