`incorrect ASM`
```asm
/* C4370 */ lw t9,0x74(sp)
/* C4604 */ lw t5,0x74(sp)
/* C467C */ lw t8,0x74(sp)
```

-> `code changed`
```c
shade = ((EffectRgb (*)[19])D_80152740)[rowY];
scratch = scrollY + 0x701;
rowIndex = rowY;
edgeParityY = mapY % 2;
```
The discarded assignment exposes the positive Y clipping threshold to IDO before it assigns the row-loop spill slots. The threshold comparison still uses its original expression.

-> `correct ASM`
```asm
/* C4370 */ lw t9,0x70(sp)
/* C4604 */ lw t5,0x70(sp)
/* C467C */ lw t8,0x70(sp)
```

`incorrect ASM`
```asm
/* C4444 */ lw t6,0x54(sp)
```

-> `code changed`
```c
columnIndex = scrollX + 0x701;
for (ringCol = 0, ringRow[0] = D_80151DD8.tiles[rowY]; ringCol < 0x12; ringCol++) {
    columnIndex = col;
    /* Vertex setup follows. */
}
```
The earlier assignment exposes the positive X clipping threshold before IDO allocates its spill. The first statement in the inner loop replaces the discarded value.

-> `correct ASM`
```asm
/* C4444 */ lw t6,0x6c(sp)
```

`incorrect ASM`
```asm
/* C40EC */ sw t8,0x78(sp)
/* C45C4 */ lw t6,0x78(sp)
```

-> `code changed`
```c
terrain.value = scrollY + 0x701;
posY = (mapY - 0x80) << 8;
```
The dead assignment exposes the Y threshold immediately before coordinate conversion. IDO uses the earlier occurrence when allocating the spill for the clipping comparison.

-> `correct ASM`
```asm
/* C40EC */ sw t8,0x64(sp)
/* C45C4 */ lw t6,0x64(sp)
```

`incorrect ASM`
```asm
/* C4E4C */ sb t6,0xd2(sp)
/* C4E58 */ sb t5,0xd7(sp)
```

-> `code changed`
```c
for (rowWrap = 0; rowWrap < 0x12; rowWrap++) {
    /* Vertex setup follows. */
    cursor.index[0] = (rowIndex + 1) % 0x13;
    mapX = D_8014F89C;
    col = D_8014F899;
    mapY++;
}
```
The row counter update belongs in the increment expression. Separate statements for the map and column updates let IDO schedule the row-counter store before the global column reload and the Y-coordinate store in the branch delay slot.

-> `correct ASM`
```asm
/* C4E4C */ sb t5,0xd7(sp)
/* C4E58 */ sb t6,0xd2(sp)
```

`incorrect ASM`
```asm
/* C4054 */ lb t7,0x961(v0)
/* C40B8 */ addiu t9,s6,0x701
/* C40F0 */ sw t9,0x54(sp)
/* C4444 */ lw t6,0x54(sp)
```

-> `code changed`
```c
col = (u8)(D_8014F899 = D_80151DD8.ringX);
/* Other row initialization follows. */
for (hueX = scrollX + 0x701, ringCol = 0,
     ringRow[0] = (RingEntry *)&((u16 *)D_80151DD8.tiles)[(u32)rowY * 60];
     ringCol < 0x12; ringCol++) {
    columnIndex = col;
    terrain.value = (s32)(u32)((mapY - 0x80) << 8);
    posX = (s16)(scrollY + 0x701);
    /* Vertex setup follows. */
    scratch = scrollY + 0x701;
}
```
The startup read uses its natural signed byte type. Scaling the row index in halfword units affects IDO's temporary register sequence without changing the row stride. The early clipping expressions establish their spill slots.

-> `correct ASM`
```asm
/* C4054 */ lb t6,0x961(v0)
/* C40B8 */ addiu t7,s6,0x701
/* C40F0 */ sw t7,0x6c(sp)
/* C4444 */ lw t6,0x6c(sp)
```

`incorrect ASM`
```asm
/* C41B4 */ sll a0,a0,1
/* C42D0 */ addiu v1,a3,2
/* C43C0 */ lhu s1,0(a3)
```

-> `code changed`
```c
scratch = (s32)ringRow[0];
if (scratch != 0) {}
tileCenter = &((RingEntry *)scratch)[col];

/* After the wave offset calculation, before X clipping. */
if (col);

/* In the outer loop latch. */
cursor.index[0] = (rowIndex + 1) % 0x13;
if (rowIndex != 0) {}
```
The discarded reads change IDO's live ranges without adding instructions. In this combination the shared tile stride uses `v0`, and the center tile pointer uses `a2`.

-> `correct ASM`
```asm
/* C41B4 */ sll v0,v0,1
/* C42D0 */ addiu v1,a2,2
/* C43C0 */ lhu s1,0(a2)
```

`incorrect ASM`
```asm
/* C411C */ lui t6,%hi(D_80151DD8)
/* C4120 */ addiu t6,t6,%lo(D_80151DD8)
/* C412C */ sll t5,t9,3
/* C4134 */ addu t7,t5,t6
/* C4154 */ sw t7,0x90(sp)
```

-> `code changed`
```c
ringRow[0] = D_80151DD8.tiles[rowY];
/* In the column loop. */
scratch = (s32)(u64)ringRow[0];
/* Use the natural byte index at the east wrap. */
tileEast = &D_80151DD8.tiles[cursor.wrapped & 0xFF][0];
```
The typed row subscript restores the scratch register sequence in the row setup. The pointer widening and wrapped-index mask restore the later sequence after IDO removes the redundant width changes.

-> `correct ASM`
```asm
/* C411C */ lui t5,%hi(D_80151DD8)
/* C4120 */ addiu t5,t5,%lo(D_80151DD8)
/* C412C */ sll t9,t9,3
/* C4134 */ addu t6,t9,t5
/* C4154 */ sw t6,0x90(sp)
```

`incorrect ASM`
```asm
/* C4064 */ lui a2,%hi(D_80149436)
/* C406C */ lh a2,%lo(D_80149436)(a2)
/* C4080 */ lb a1,0x960(v0)
```

-> `code changed`
```c
scrollY = D_80149436;
col = (u8)(D_8014F899 = D_80151DD8.ringX + scrollY * 0);
```
The zero product gives the scroll value another use in the prologue. IDO removes the product after it has affected register allocation.

-> `correct ASM`
```asm
/* C4068 */ lui a1,%hi(D_80149436)
/* C4070 */ lh a1,%lo(D_80149436)(a1)
/* C4080 */ lb a2,0x960(v0)
```
