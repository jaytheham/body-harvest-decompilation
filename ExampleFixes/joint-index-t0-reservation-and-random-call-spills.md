incorrect ASM (`func_8008C8B8_9B868`):

```asm
lb      t0,0xd(t7)       # first traversal should use a1
# Without the named second traversal index, t0 also enters the scratch
# register ring and shifts integer temporaries throughout the function.
sw      a0,0x4c(sp)      # target 0x50
sw      t8,0x4c(sp)      # target 0x50
sw      t6,0x48(sp)      # target 0x4c
```

-> code changed:

```c
/* Keep separate locals for the two sibling-index webs. */
siblingNode = D_8014DD50[x].unkD;
nodes[0] = D_8014DD50[siblingNode].unkD;
/* In the second traversal's call argument: */
D_8014DD50[otherNode = D_8014DD50[x].unkD].unkC

/* Use the upper two halfwords of the three-halfword scratch array. */
random[1] = func_800038E0_44E0();
random[2] = func_800038E0_44E0();
routeIndex = func_800038E0_44E0();
/* Pass routeIndex % 128 instead of nesting the third random call. */
```

-> correct ASM:

```asm
lb      a1,0xd(t7)       # first traversal
lb      t0,0xd(t7)       # second traversal; t0 is reserved globally
sh      v0,0x5a(sp)
sh      v0,0x5c(sp)
sw      a0,0x50(sp)
sw      t8,0x50(sp)
sw      t6,0x4c(sp)
```
