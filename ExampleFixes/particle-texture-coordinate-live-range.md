`incorrect ASM`

In `func_800E6A38_F59E8`, IDO materializes the 0x800 texture coordinate three times. The second load at `0xF5EF4` pushes the opposite X subtraction past the third vertex's texture stores.

```asm
/* F5E98 */ li t7,0x800
/* F5EF4 */ li t9,0x800
```

-> `code changed`

Keep the Z displacement a signed halfword. Write the fifth vertex's 0x800 texture coordinate through an unsigned halfword view. Extend the signed constant's live range in the existing empty display-list condition, using the live X and Z displacements in equality comparisons. Retain the masked count read so the loop count keeps its register.

```c
s16 zOff;

/* The first and third vertices keep the signed halfword stores. */
((u16 *)vtx4->v.tc)[1] = 0x0800;

if ((D_8005BB2C != 0) | (xOff == 0x0800) |
    (zOff == 0x0800) | (remain & 8)) {}
```

-> `correct ASM`

```asm
/* F5E98 */ li      t4,0x800
/* F5EF4 */ subu    t8,s3,s6
/* F5F18 */ sh      t4,0xa(vertex)
/* F5F98 */ li      t9,0x800
```

The two early stores share the value in `t4`. The fifth vertex has its own load, and the empty condition emits no instructions. The cursor register shown as `vertex` still differs at this stage.


`incorrect ASM`

The Z conversion result uses `t2`, while the third vertex pointer uses `t0`. The target uses the opposite registers. The second vertex already uses the correct `t1`.

```asm
/* F5EF0 */ lw      t0,0(s0)
/* F5F24 */ mfc1    t2,f8
```

-> `code changed`

Add three distinct masked reads of the Z displacement to the existing empty display-list condition. This gives the conversion result `t0`, but initially rotates the second and third vertex pointers to `t2` and `t1`. Replace the empty condition before the alpha stores with one masked read of the second vertex pointer so it retains `t1`.

```c
if ((u32)vtx1 & 0x20) {}
/* Alpha stores. */
if ((D_8005BB2C != 0) | (xOff == 0x0800) |
    (zOff == 0x0800) | (remain & 8) |
    ((zOff & 1) + (zOff & 2) + (zOff & 4))) {}
```

-> `correct ASM`

```asm
/* F5EBC */ lw      t1,0(s0)
/* F5EF0 */ lw      t2,0(s0)
/* F5F24 */ mfc1    t0,f8
```

Both conditions compile away. This stage left 38 register-only differences in each linked ROM.


`incorrect ASM`

In the 38-word draft, IDO put the fifth and sixth vertex pointers in `v1` and `a1` respectively. A later trial swapped them correctly but scheduled the loop-count copy before the sixth vertex.

```asm
/* F5F64 */ lw      v1,0(s0)
/* F5FB0 */ lw      a1,0(s0)
```

-> `code changed`

Reuse the angle local for the signed sine result after the last use of the angle. In the empty condition before the alpha stores, retain two masked reads of the sine result, three of the fourth vertex pointer, and four of the sixth vertex pointer. The sine result reserves `v0` during pointer allocation. Write the sixth vertex’s first coordinate through its captured pointer. Include three distinct masked reads of the vertex cursor in the same condition to reserve `a2` during color allocation.

```c
angle = sins(-angle);
zOff = (((f32)angle) / 32768.0) * (radius + 20);
/* Vertex initialization. */
vtx5 = D_8005BB34;
vtx5->v.ob[0] = vtx4->v.ob[0];
D_8005BB34++;
```

-> `correct ASM`

```asm
/* F5EC0 */ addiu   a2,s7,0x14
/* F5F64 */ lw      a1,0(s0)
/* F5FB0 */ lw      v1,0(s0)
/* F6084 */ move    v1,t3
```

The count copy stays next to the triangle packets. This intermediate candidate has eleven register-only instruction-word differences in both linked ROMs.

`incorrect ASM`

The first two texture S stores share `0x1000` in `a0`. The target shares it in `a1`.

```asm
/* F5E94 */ li      a0,0x1000
/* F5EB4 */ sh      a0,0x8(a3)
/* F5EE8 */ sh      a0,0x8(t1)
```

-> `code changed`

Convert the base X coordinate to `u16` at both of the first two vertex stores. The compiler keeps a temporary register for the conversion during allocation, and the assembler removes the conversion from the emitted halfword stores. Retain three distinct masked reads of signed `baseX` in the existing pre-alpha condition to keep the original X coordinate in `s3`.

```c
vtx0->v.ob[0] = (u16)baseX;
/* Set the remaining fields of the first vertex. */
vtx1 = D_8005BB34;
D_8005BB34->v.ob[0] = (u16)baseX;
```

-> `correct ASM`

```asm
/* F5E94 */ li      a1,0x1000
/* F5EB4 */ sh      a1,0x8(a3)
/* F5EE8 */ sh      a1,0x8(t1)
```

Both X stores still use `s3`. This intermediate state left eight register-only differences in the display-list packets.

`incorrect ASM`

The vertex upload shares the setup cursor’s `a2` register. Adding two masked cursor reads only at the upload moves the setup cursor to `t0` and leaves the upload in `a2`.

```asm
/* F6040 */ lw      a2,0(s8)
/* F604C */ addiu   t8,a2,8
```

-> `code changed`

Move the Z-displacement comparisons and masked reads into the pre-alpha condition. Add cursor masks `8` and `16` to the upload condition and masks `64` and `128` before restoring two-cycle mode. The footer observations keep the original setup cursor while the upload receives a separate register.

-> `correct ASM`

```asm
/* F6040 */ lw      t0,0(s8)
/* F604C */ addiu   t8,t0,8
/* F6058 */ sw      t6,4(t0)
/* F605C */ sw      t9,0(t0)
```

`incorrect ASM`

The triangles share an opcode in `a0` and the final packet copy uses `v0`. A new local for the final packet gives the opcode `a1`, but its pointer then takes `v1` from the loop-count copies.

```asm
/* F6064 */ lui     a0,0xbf00
/* F609C */ move    v0,a2
```

-> `code changed`

Reuse the expired fourth vertex local to capture the last triangle packet. Increase its pre-alpha condition from three to five masked reads and reduce the sixth vertex from four to three. The fourth vertex and final packet retain `a0` in their separate live ranges, and the loop-count copies keep `v1`.

-> `correct ASM`

```asm
/* F6064 */ lui     a1,0xbf00
/* F6084 */ move    v1,t3
/* F6098 */ sw      a1,0(a2)
/* F609C */ move    a0,a2
```

The combined changes pass the US and PAL ROM checksum checks with the C function enabled.
