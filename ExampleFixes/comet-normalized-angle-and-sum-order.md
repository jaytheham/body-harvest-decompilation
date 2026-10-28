Incorrect ASM:

In `func_802DC2D4_320424`, reusing one integer for both joint links coalesced the child into v0 instead of v1. The phase expression's explicit mask used an extra temporary register for its final shift. A nested cosine call enlarged the frame, and the coordinate sums assigned opposite registers to their loaded operands.

Code changed:

Keep root and child values in separate existing integer locals. Convert the 1500-times-frame phase with `(u16)` instead of `& 0xFFFF`. Remove the redundant signed-halfword cast around the 150-times-counter product. Store the raw heading in the expired root local and pass `(u16)val` to both trig calls; let IDO cache their shared normalized argument. Assign the cosine result to that same local before the effect call. Arrange scalar declarations at their observed stack homes. Reverse each joint-coordinate addition, and write the later height sum as `alienInstances[arg0].unk2 + (alienTypes[typeIndex].unk38 / 2)`.

Correct ASM:

```asm
lb      v0,0xc(t6)
lb      v1,0xd(t8)
```

```asm
sll     t6,t6,2
jal     sins
andi    a0,t6,0xffff
```

```asm
lh      v0,6(s0)
andi    a0,v0,0xffff
jal     sins
sw      a0,0x30(sp)
```

```asm
addu    a1,t4,t5
```

The 0x78 frame and the complete function match; the full US ROM checksum passes.
