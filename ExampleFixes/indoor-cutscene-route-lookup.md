# Route lookup scheduling in `func_8007DDA0_165E60`

**Incorrect ASM**

```asm
sll     t8,t8,2
bnez    t9,advanceDone
 addu   a1,t8,t6
# At advanceDone, reload the frame and then load the path pointer.
```

**Code changed**

Expose the route table's entries and byte representation through a union. Compute the byte offset before testing the actor state, then index the byte array and read the route's path after the conditional frame increment.

**Correct ASM order**

```asm
bnez    t6,advanceDone
 addiu  t8,t8,0x5fc
# At advanceDone, reload the frame.
addu    route,offset,base
lw      path,0x14(route)
```

The address addition and path load now follow the frame reload as in the target. The target puts the final offset shift in the branch delay slot. The split alone still differed at the delay slot.


## Route branch delay slot

**Incorrect ASM**

```asm
sll     offset,offset,2
bnez    actorState,advanceDone
 addiu  base,base,0x5fc
```

**Code changed**

Put the byte-offset assignment, conditional frame increment, and route address assignment on one source line. Keep the path pointer read and frame lookup on separate lines.

**Correct ASM order**

```asm
addiu   base,base,0x5fc
bnez    actorState,advanceDone
 sll    offset,offset,2
```

This matches the target's delay-slot instruction and address setup order. The register allocation still differs.


## Startup route-table base register

**Incorrect ASM**

```asm
lui     t4,0x800a
addiu   t4,t4,0x5fc
addu    t7,t4,t6
```

**Code changed**

Index the route table's typed entries with `(u32)D_800E6A34` for both startup path reads. Keep the yaw read and the later path read separate. The typed indexing compiles identically to the equivalent unsigned byte-offset form.

**Correct ASM**

```asm
lui     t5,0x800a
addiu   t5,t5,0x5fc
addu    t7,t5,t6
```

The base address and its uses now occupy the target register. The register holding the stride still differs.


## Startup stride constant register

**Incorrect ASM**

```asm
li      t4,0x1c
```

**Code changed**

In the comparison build, declare the shared `routeIndex` local as `u32` while retaining the typed startup table lookups and the player-position address cast through `u64`.

**Correct ASM**

```asm
li      ra,0x1c
```

The unsigned declaration reproduces the stride register. Other registers change in the same startup block, and the comparison build has one more differing US instruction word overall.
