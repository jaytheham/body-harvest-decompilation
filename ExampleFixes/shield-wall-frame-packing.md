### Pack the shield-wall texture temporary into the original frame

**Incorrect ASM**

Every instruction in the body of func_800BB5E0_CA590 matched, including all stack accesses. Only the frame size differed.

~~~asm
/* CA590 */ addiu sp,sp,-0x168
/* CB2A4 */ addiu sp,sp,0x168
~~~

**Code changed**

Place the minimum height after the two byte-sized alpha values and the second link index beside the first. Declare the end T halfword immediately before the texture scale. Those positions use padding that would otherwise be reserved for alignment. Move the double that holds the first unrounded S coordinate below the lighting inputs.

~~~c
u8 alphaStart;
u8 alphaEnd;
s16 minY;
f32 segmentDx;
f32 segmentDz;
/* ... */
s8 p1Index;
s8 p0Index;
/* ... */
s16 colorEnd;
s16 texEndT;
f64 texScale;
/* ... */
EffectRgb color;
f64 texStartUnroundedS;
Gfx *gfx;
~~~

**Correct ASM**

~~~asm
/* CA590 */ addiu sp,sp,-0x160
/* CB2A4 */ addiu sp,sp,0x160
~~~
