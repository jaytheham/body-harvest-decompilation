### Reuse the shield-wall height local for an end texture coordinate

**Incorrect ASM**

~~~asm
/* CAAF8 */ sw a0,0x90(sp)
/* CAB48 */ sw t8,0x90(sp)
/* CB1D4 */ lh s3,0x92(sp)
~~~

**Code changed**

Reuse the signed halfword from the terrain-height sampling loop for the end S texture coordinate. Its height value is dead once the minimum has been recorded. With one fewer signed halfword declaration and the minimum height declared before the display-list pointer, the compiler puts the next-segment index in its original slot.

~~~c
s16 sampleYOrEndS;

/* After the last terrain-height sample. */
sampleYOrEndS = (s32)((colorStart - segEndX) * texScale + scrollS);
D_8005BB34[2].v.tc[0] = sampleYOrEndS;
~~~

**Correct ASM**

~~~asm
/* CAAF8 */ sw a0,0x8c(sp)
/* CAB48 */ sw t8,0x8c(sp)
/* CB1D4 */ lh s3,0x8e(sp)
~~~
