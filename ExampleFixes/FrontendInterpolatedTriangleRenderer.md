```asm
/* func_80081290_51740: expanded triangle rotations lose the per-branch packing;
   eight-byte records also generate division and the wrong final-record offsets. */
bgez    t9,division_done
sra     t7,t9,1
addiu   at,t9,1
sra     t7,at,1
sll     t8,t7,3
addu    v0,t4,t8
lbu     v1,3(v0)
```
->
```c
/* Define FrontendTriData as four u8 fields (indices and rotation flag).
   Reuse signed j for vertex interpolation and the paired triangle loop;
   use (u32)++j for the vertex loop's unsigned comparison. */
for (j = 0; j < (batch->unk6 >> 1); j++) {
    gSP2Triangles(D_8005BB2C++, tri[j * 2].unk0, tri[j * 2].unk1,
        tri[j * 2].unk2, tri[j * 2].unk3,
        tri[j * 2 + 1].unk0, tri[j * 2 + 1].unk1,
        tri[j * 2 + 1].unk2, tri[j * 2 + 1].unk3);
}
if (batch->unk6 % 2) {
    gSP1Triangle(D_8005BB2C++, tri[batch->unk6 - 1].unk0,
        tri[batch->unk6 - 1].unk1, tri[batch->unk6 - 1].unk2,
        tri[batch->unk6 - 1].unk3);
}
/* Calculate x, y, z before storing them. Use separate unsigned batch counter i.
   Declare batch, scale struct, tri in that order: scale occupies sp+0x84.
   Use ShadowGeometryConstant.value for the existing 0.01 and 0.128 constants. */
```
->
```asm
/* Final odd triangle uses the final four-byte record; no division required. */
lbu     t8,6(t1)
move    a1,a0
sll     t7,t8,2
addu    v0,t4,t7
lbu     v1,-1(v0)
/* Frame is 0xb8, scale is sp+0x84. US and EU ROM checksums match. */
```
