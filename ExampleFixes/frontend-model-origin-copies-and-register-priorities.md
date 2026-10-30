# Frontend inventory model origins and allocation

`func_80072E18_432C8` (`0x432C8`), IDO 5.3 `-O2 -mips2`.

## Stack-backed original coordinates

Incorrect ASM: direct parameter use spilled the original X/Y words into incoming argument homes and produced a `0xc8` frame. Volatile copies forced local homes but moved the stores early and prevented the required load ordering.

Code changed: retain three padding words and the two floating base locals before the position/scale/rotation vectors. Declare `s32 screenOrigin[2]` after `scaleInt`; store Y at index zero and X at index one before the setup call. Convert the two elements into the floating base locals before the first matrix-building call. Put both conversions on the same source line.

Correct ASM: frame `0xe0`, original-coordinate stores/loads at `$sp+0xa4` and `$sp+0xa0`, vectors at `$sp+0xc4`, `$sp+0xbc`, and `$sp+0xb4`; Y loads first into `$t7`, X into `$t6`, followed by their target MTC1 and conversion order.

## Indexed table and rotation state

Incorrect ASM: flattened item indexing prepared the item-table LUI early and rotated the temporary registers. The externally declared rotation counter cached its address for the initial increment.

Code changed: use `((FrontendItemRenderData (*)[13])D_800942E0_64790)[currentLevel - 1][i]`. Move the rotation's initialized data definition into the function as a private static, leaving following data definitions after the function in their original order.

Correct ASM: the item-availability LUI appears before the stride calculation, followed by the target item-table setup and temporary allocation. Rotation increment uses separate LUI/load and LUI/store addressing.

## Shared division checks

Incorrect ASM: `((itemCount / 3) * -0x50 + 0x50) & 0xffff` emitted the shared division's checks immediately after the first graphics packet.

Code changed: spell the negative quotient explicitly: `(-(itemCount / 3) * 0x50 + 0x50) & 0xffff`.

Correct ASM: the same DIV supplies both remainder and quotient, with checks delayed until after the three graphics packets and original-coordinate loads, exactly at `0x43460`.

## Measured register priorities

Incorrect ASM: item scale occupied `$f20` instead of `$f26`; the coordinate bases occupied `$f24/$f26`. Raising the floating base priorities alone swapped the model pointer and item counter; raising only the model pointer then displaced the loop index.

Code changed: after the second matrix-building call, retain three code-free uses: `if (i) {}`, `if (displayList->words.w0 + displayList->words.w1) {}`, and the differently ordered floating sums shown in the matched source. The floating sum references X twice, Y once, and overall scale three times on each comparison side. Use one comparison rather than a comparison against floating zero.

Correct ASM: private diagnostic traces showed the required floating priority order X, overall scale, Y, item scale, giving `$f20`, `$f22`, `$f24`, `$f26`. The integer uses yielded loop index priority `61/4 = 15.25`, model pointer `50/4 = 12.5`, and item counter `41/4 = 10.25`, assigning `$s3`, `$s4`, `$s5`. No test, arithmetic, or extra load from these uses survives in the emitted function. Native and diagnostic full-object hashes agreed.

## Narrow consumer and addition operands

Incorrect ASM: loading rotation for its halfword store reused the address register (`lw $t5,...($t5)`), shifting every later temporary allocation. Coordinate additions placed the product operand before the saved base operand.

Code changed: store `itemRotation & 0xffff` into the rotation halfword. Use `(0, baseX) + product` and `(0, baseY) + product` for the two coordinate additions. A plain halfword cast did not reproduce the mask expression's allocation effect.

Correct ASM: `lw $t6,...($t5)` followed by `sh $t6,...`, with no ANDI; the remaining graphics temporaries match. The additions become `add.s $f6,$f20,$f4` and `add.s $f6,$f24,$f4`.
