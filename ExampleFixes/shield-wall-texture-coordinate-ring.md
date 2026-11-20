### Size the shield-wall end T texture coordinate as a signed halfword

**Incorrect ASM**

~~~asm
/* CAF60 */ lw t7,0x0(s1)
/* CAF6C */ sh v1,0x2a(t7)
/* CAF70 */ lw t6,0x0(s1)
/* CAF74 */ sb s5,0x2c(t6)
~~~

**Code changed**

Declare the end T texture coordinate as a signed halfword. Casting only at the stores left their register rotation unchanged. Narrowing the local when the value is defined changes IDO's temporary allocation without adding instructions to the final vertex writes.

~~~c
s16 texEndT;

texEndT = (s32)((colorEnd - segEndZ) * texScale + scrollT);
D_8005BB34[2].v.tc[1] = texEndT;
~~~

**Correct ASM**

~~~asm
/* CAF60 */ lw t8,0x0(s1)
/* CAF6C */ sh v1,0x2a(t8)
/* CAF70 */ lw t9,0x0(s1)
/* CAF74 */ sb s5,0x2c(t9)
~~~
