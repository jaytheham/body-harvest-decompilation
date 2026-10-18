incorrect ASM (`func_802DBF54_2BE384`, repeated for both floating effects):

```asm
sll     a1,t0,16
sra     t9,a1,16
sw      t0,0x68(sp)
move    a1,t9
lh      a0,0x6e(sp)
lh      a2,0x66(sp)
jal     func_800CD2E8_DC298
 lbu    a3,0x3c(s0)
```

-> code changed:

```c
/* IDO schedules equal-priority nodes by source line; keep this store last. */
#line 10000
worldY = height;
#line 9999
func_800CD2E8_DC298((s16)worldX, (s16)worldY,
    (s16)worldZ, (u8)alien->unk3C);
#line 10001
```

The standard C89 line directives deliberately give the height store a later
logical source line than argument setup. These numbers are scheduling
annotations, not original source locations. Apply the same sequence to the
unk3D call. IDO's native `-Wa,-R` trace confirmed that the store and loads
have no dependency edges: source-line priority chose the early store.
Putting the assignment and call on the same line still selected the store
before the argument loads through ready-list order. The explicit priority
places the store in the call delay slot without changing instructions or
semantics. The full US ROM checksum passes with the normal compiler flags.

-> correct ASM:

```asm
sll     a1,t0,16
sra     t9,a1,16
move    a1,t9
lh      a0,0x6e(sp)
lh      a2,0x66(sp)
lbu     a3,0x3c(s0)
jal     func_800CD2E8_DC298
 sw     t0,0x68(sp)
```
