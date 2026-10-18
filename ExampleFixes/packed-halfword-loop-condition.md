## Packed halfword loop in func_800836D0_92680

Incorrect ASM (loop section):

```asm
andi    v1,v0,0xffff
sw      v1,0x88(sp)
loop:
lw      v0,0x88(sp)
; extract and process the low nibble
; ...
srl     t7,v1,0x4
andi    t8,t7,0xffff
sw      t8,0x88(sp)
bnez    t8,loop
```

Code changed:

```c
/* bits is u16. */
while (bits != 0) {
    /* process low nibble */
    bits >>= 4;
    quad++;
}
```

to:

```c
while (bits) {
    /* process low nibble */
    bits >>= 4;
    quad++;
}
```

Correct ASM shape with stock IDO 5.3:

```asm
andi    v1,v0,0xffff
loop:
; extract the low nibble directly from v1
; spill v1 across the processing calls
; ...
lw      v1,0x88(sp)
srl     t8,v1,0x4
andi    v1,t8,0xffff
bnez    v1,loop
```

The direct scalar condition removes the initial store/reload and the latch
store. It also restores the early word spill of the extracted nibble before
the kind branch.
