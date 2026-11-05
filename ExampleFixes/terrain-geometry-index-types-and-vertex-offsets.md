# Terrain geometry index types and vertex offsets

`func_800B604C_C4FFC` remains `NON_MATCHING`; these are partial instruction and layout fixes.

## Incorrect ASM

```asm
andi    t6,t8,0xffff
sll     t7,t6,1
/* The tile lookup incorrectly wraps its complete index. */
```

## Code changed

```c
tile = ((s16 *)D_8014F8A0)[arg5 + (y << 8) + x];
```

## Correct ASM

```asm
sll     t6,s8,1
sll     t7,s4,1
addu    t8,t9,t6
addu    t9,t8,t7
sll     t6,s0,1
addu    t8,t9,t6
```

## Incorrect ASM

The original vertex expression shares the integer sum `y * cols + x` with the order array, then scales that sum. The target scales row and column offsets separately.

## Code changed

```c
v = &(&(&D_8005BB34[-(rows * cols)])[y * cols])[x];
```

Use the same nested array access for the fixed 25-vertex path. This preserves structured array access while keeping row and column byte offsets separate. Inline the copy-only source pointer, and reuse one short iterator for the sequential row and bucket phases.

## Correct ASM

```asm
sll     rowBytes,rowIndex,4
sll     columnBytes,column,4
addu    vertex,rowBase,columnBytes
```

## Incorrect ASM

Width and height are words stored before the area test, and the culling flag is stored as a word.

## Code changed

```c
s16 width;
s16 height;
u8 modeByte;
/* ... */
if ((arg3 - arg1) * (arg4 - arg2) < 12) {
    width = arg3 - arg1;
    height = arg4 - arg2;
    /* Small rectangle path. */
}
```

Keep the area test on the full differences. Test `(s16)(arg4 - arg2) == 4` for the later path rather than assigning the short height before the area test. Place the vertex scratch pointer before width/height, and the order plus row/column locals before the two arrays. An unsigned short bank workspace before the byte flag preserves the remaining packing without unused padding.

## Correct ASM

```asm
/* These stores now occur only in the small rectangle path. */
sh      width,0x34a(sp)
sh      height,0x348(sp)
/* The other paths narrow the global mode word to a byte. */
sb      mode,0x123(sp)
```

The frame is `0x350`; counts, tiles, and orders begin at `0x12c`, `0x13c`, and `0x23c`. Registers and several schedules remain unmatched.
