## incorrect ASM

In `func_800878A4_57D54`, color byte arrays changed the order of otherwise equivalent packed-color operations. Assigning the half-turn angle through the signed field also selected the wrong immediate encoding.

```asm
li t7,-0x8000
/* Packed primitive color began with B, then R, then G. */
lbu t8,8(s4)
lbu t9,6(s4)
sll t6,t8,8
sll t8,t9,24
```

## code changed

Represent the payload's primitive and environment colors as individual R/G/B byte fields, and use those fields in the graphics macros. Add a `u16 unk2Unsigned` alias alongside `s16 unk2` in `Unk800311A0` without changing its six-byte layout. Store the half-turn through the unsigned view.

```c
rot.unk2Unsigned = 0x8000;
gDPSetPrimColor(D_8005BB2C++, 0, 0,
    particle->primitiveR, particle->primitiveG, particle->primitiveB,
    motion->alpha);
```

## correct ASM

```asm
li t7,0x8000
/* Packed primitive color now begins with R, then G, then B. */
lbu t8,6(s4)
lbu t9,7(s4)
sll t6,t8,24
sll t8,t9,16
```

The environment-color sequence is corrected in the same way. The full stock US ROM checksum verifies the field-layout and immediate changes.
