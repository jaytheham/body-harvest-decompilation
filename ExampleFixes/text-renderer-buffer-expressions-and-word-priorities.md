`incorrect ASM`: In `func_8000B044_BC44`, indexing through the local text pointer reverses the base/index ADDU operands. Scissor bounds occupy T1/T0/A3 instead of T2/T1/T0, delaying the text-length address load until after a bound store.

-> `code changed`: Read bytes through `((u8 *)D_80052BE0)[glyph_y_off]` rather than the pointer alias. Keep the signed index capture and postincrement on the same source line as each read. Express Y clipping directly as `(s16)(y_cursor + vertical_offset + D_80053BE4)` instead of adding the global offset to the named `glyph_y` intermediate.

-> `correct ASM`: Text addresses use `addu ...,s3,index`. Scissor bounds use the target registers and stack-store order; the A3 LUI returns to ROM 0xCFC4. The Y-coordinate ADDU keeps the accumulated position before the global offset.

`incorrect ASM`: Reusing the raw control word for the signed glyph offset shifts the X/Y clipping coordinates from V1/A0 to V0/V1. A globally cached low-branch glyph-sum expression also excludes V0 from the raw control word's allocation.

-> `code changed`: Use a separate `s32 vertical_offset`. In the low-bit branch, capture `glyph_code = char_value + 0x130`, retain four separate empty `if (r == 0) { }` tests, then assign `char_idx = (s16)(char_value + 0x130)` directly. After the branch join, retain four separate empty `if (char_value == 0) { }` tests. These extend the sum's live range and rebalance the raw/mapped word priorities without emitted work. Using the loop index instead of R in the four low-branch tests swaps S0/S1 throughout the renderer.

-> `correct ASM`: The initial byte occupies V1, the raw copy occupies V0, the signed glyph offset occupies V0, and clipping coordinates occupy V1/A0. The enabled renderer reaches score 15: only the cached E8000000 command uses T2 instead of target T4 in three instructions. This is not a completed function match; retain the assembly fallback.

`incorrect ASM`: The original scratch-word do/while tail emits two halfword-normalization pairs. A normal for-loop removes the extra pair but adds a second entry guard; storing the continuation comparison in a flag uses V0 instead of AT.

-> `code changed`: Keep the nonempty-text guard and constant setup, then use `for (more_text = 1; more_text || i < (u16)D_80053BE0; i++, more_text = 0)` with ordinary continue statements.

-> `correct ASM`: The one-time entry flag disappears. The tail is `addiu v1,s1,1; sll s1,v1,16; sra t7,s1,16; slt at,t7,a3; bnez at,...; move s1,t7`, with no duplicate initial guard.

`incorrect ASM`: Gray initialization uses R/G/B rather than B/G/R, endpoint byte loads run in B/G/R order, and the green interpolation's two address LUIs are reversed.

-> `code changed`: Assign gray as `b = 0x96; g = 0x96; r = 0x96`. Read fade endpoints as individual source-line assignments using `(u8)D_80053BF0`, `(u8)D_80053BF2`, `(u8)D_80053BF4` and their second-endpoint counterparts. Keep the green endpoint capture and green interpolation assignment together on one source line.

-> `correct ASM`: Gray assignments, endpoint address preparation and byte loads, and the green interpolation's T7/V1 LUI order all match the target.
