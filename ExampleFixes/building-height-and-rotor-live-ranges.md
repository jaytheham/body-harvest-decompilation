# Building height and rotor live ranges

## Rotor address registers (`func_8011EB40_12DAF0`)

Incorrect ASM: Y-offset address in `$s5`, X in `$s6`, Z in `$s7`; target uses Y in `$s7`, X in `$s5`, Z in `$s6`.

Code changed: insert `if (1) {}` immediately before `rotorAngle = D_8015EA48 + 0x78D;`, retaining the existing enclosing loop block and same-line sine assignment/collision call. Remove the repeated identifier-expression probe before the final call.

Correct ASM: offset addresses occupy the target saved registers, and the final identifier starts with `subu $a1,$s4,$t3` followed by `div $zero,$a1,$at`. Both ROM checksums match.

## Height normalization (`func_8011DE6C_12CE1C`)

Incorrect ASM: using `32.0` in both normalization expressions shares the double constant and changes floating-point register allocation.

Code changed: use `localX = (f32)((localX * (32.0 / (f32)type->unk10)) + 32);` and the corresponding expression for Z, with integer `32` as the final addend.

Correct ASM: IDO loads the conversion constants into the target separate floating-point register pairs.

## Seam sample narrowing (`func_8011DE6C_12CE1C`)

Incorrect ASM: passing the `s16 sampleY` directly produces a load into `$a2` and omits the target shifts.

Code changed: pass `(s16)(s32)sampleY` to `func_8011619C_12514C`.

Correct ASM: load the sample into `$a3`, then use the target `sll`/`sra` argument narrowing sequence.
