`incorrect ASM` -> The fade update stores the incremented word directly with `sb a2`, moves the string address into the call delay slot, and omits the target byte mask and argument move.

`code changed` -> Truncate the increment to `u8` while keeping the local word that carries the third argument. Keep the opacity calculation, timer update, and `drawText` call on the same source line. The full-opacity paths only need the opacity argument.

`correct ASM` -> Both fades now narrow with `andi t7,a2,0xff` or `andi t9,a2,0xff`, store that byte, move the narrowed value into `a2`, and place `sll a1,a1,2` in the draw call's delay slot.

`incorrect ASM` -> Reading the first bonus score through its function-local static uses `t7` for the load and store, rotating the temporary registers for the rest of the function.

`code changed` -> Keep the function-local static for writes to preserve its BSS slot. Read the same backing word through the overlay's existing `D_80160060` symbol.

`correct ASM` -> The first bonus uses `lui v1; lw v1; sw v1` for the score, leaving `t7` available for the fade mask and restoring the subsequent temporary register sequence.


`incorrect ASM` -> With the byte store in a separate statement, both fades issue `lui at; lui a0; addiu a0; sb`.

`code changed` -> Set the byte through the width argument. Comparing the assigned byte with its own conversion contributes zero to the width. IDO keeps the store in the argument setup and uses the masked value for both the store and the third argument.

```c
width = baseScore * 12; baseScore = (u8)(baseScore + 1); drawText(D_80145500_1544B0,
    width + ((bonusAlpha = baseScore) != (u8)baseScore), baseScore);
```

`correct ASM` -> Both fades issue `lui a0; lui at; sb; addiu a0` after the mask, followed by the move into `a2`. With the C function enabled, the US and PAL ROM checksums pass.
