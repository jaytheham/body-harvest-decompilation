`incorrect ASM`

In the outer latch of `func_800B5090_C4040`, the load of `D_8014F89C` precedes the row-counter load. The map-X store also precedes the row-counter increment.

-> `code changed`

Place the four latch updates on one physical source line after the wrapped row-index update.

`mapX = D_8014F89C; mapY++; col = D_8014F899; rowWrap++;`

-> `correct ASM`

The byte load from `0xD7(sp)` precedes the load of `D_8014F89C`. The row-counter increment precedes the `sb` to `0xD3(sp)`.

`incorrect ASM`

Adding the tile color directly to the shade channel rotates the scratch registers in the later edge and wave instructions. The positive Y clipping addition corresponding to ROM `0xC4654` uses `addu t5,t6,s0`.

-> `code changed`

Mask the unsigned tile channel before adding it to the shade and narrowing the sum. Use `(u16)(shade[col].r + (terrain.color[0] & 0xFF))` and the same form for green and blue.

-> `correct ASM`

The mask emits no additional instruction. The positive Y clipping addition uses `addu t8,t5,s0`, and the following wave calculations retain the target scratch-register assignments.

`incorrect ASM`

Separate color-pointer and height scratch locals reserve a `0xE0` frame. Sharing storage alone reduces the frame to `0xD8`, but the position and scroll homes then stay four bytes high at `0xAE`, `0xAC`, and `0xA4`.

-> `code changed`

Share the tile color pointer and later signed height or amplitude word in a local union. The color pointer's last use is before the first numeric assignment. Declare `waveOffset` and `scrollX` before `posX`, using the existing halfword locals.

-> `correct ASM`

The frame is `0xD8`. Position X, position Y, and scroll Y use the target homes at `0xAA`, `0xA8`, and `0xA0`.

`incorrect ASM`

```asm
lbu t9,2(a1)
lbu t8,2(v1)
addu v0,t8,t9
```

-> `code changed`

```c
scratch = (u16)(terrain.color[2] + (shade[col].b & 0xFF));
```

-> `correct ASM`

```asm
lbu t9,2(v1)
lbu t8,2(a1)
addu v0,t8,t9
```

`incorrect ASM`

```asm
sb t7,0(a2)
lb t8,0(a2)
sb t8,0xd4(sp)
```

-> `code changed`

```c
D_8014F898 = D_80151DD8.ringY;
initialRow = *(u8 *)&D_8014F898;
indexByte[0] = initialRow;
```

Declare `initialRow` as `u8`.

-> `correct ASM`

The two stores use the register defined by a single signed row-byte load. AS1 forwards the unsigned readback into both byte stores.

`incorrect ASM`

The incoming argument save at `0xDC(sp)` follows the address setup for `D_8014F899`. A separate row-pointer local moves the save earlier but expands the frame to `0xE0`.

-> `code changed`

Reuse the existing 32-bit scratch argument for the row address while constructing the center and east tile pointers. The column test uses `col` directly.

```c
scratch = (s32)ringRow;
tileCenter = &((RingEntry *)scratch)[col];
/* ... */
if (col != 0x12) {
    scratch = (s32)&((RingEntry *)scratch)[col + 1]; tileEast = (RingEntry *)scratch;
}
```

-> `correct ASM`

The frame is `0xD8`, and the startup argument save uses the target order.

```asm
lb t6,0x961(v0)
sw s6,0x40(sp)
sw a1,0xdc(sp)
lui t2,%hi(D_8014F899)
```

`incorrect ASM`

The east wrap branch takes its index from the promoted row word.

```asm
lw t9,0x80(sp)
```

-> `code changed`

Use an unsigned byte view of the cursor for the wrapped lookup. Keep the promoted row index for the vertical neighbors.

```c
union { u8 index[1]; volatile u8 wrapped; } cursor;

/* In the wrapped east branch. */
tileEast = &D_80151DD8.tiles[cursor.wrapped][0];
```

-> `correct ASM`

```asm
lbu t9,0xd4(sp)
```

`incorrect ASM`

With an addressable row cache, the row pointer store appears immediately before the final addition forming the shade row address.

-> `code changed`

Initialize the cached row pointer alongside the column counter in the inner loop.

```c
for (ringCol = 0, ringRow = D_80151DD8.tiles[rowY]; ringCol < 0x12; ringCol++) {
    /* ... */
}
```

-> `correct ASM`

The final shade address addition precedes the row pointer store. The function now has the target opcode sequence and instruction count.

`incorrect ASM`

The wrapped row load uses `lbu t8,0xd4(sp)`. The compiler-selected temporary registers remain one position behind the target through the remainder of the function.

-> `code changed`

Widen the signed ring X byte to `u16` and narrow it back to `s8` before writing the signed latch.

```c
col = (u8)(D_8014F899 = (s8)(u16)D_80151DD8.ringX);
```

-> `correct ASM`

The target wrapped load `lbu t9,0xd4(sp)` and the following temporary-register assignments are restored. The conversion changes compiler register selection while preserving the 917-instruction sequence.
