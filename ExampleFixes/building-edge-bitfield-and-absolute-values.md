Incorrect ASM (`func_8011E788_12D738`):

```asm
bne   a0,at,special_case_end
sll   t8,a0,5
...
lw    t6,8(v1)
lui   t9,0x8026
addiu t9,t9,-0x6f70
andi  t7,t6,1
beqz  t7,unrotated
addu  t0,t8,t9
```

-> Code changed: use `inst->lowFlags & 1` in both orientation checks instead of `inst->unk8 & 1`. The existing 12-bit field preserves the target's compiler expression shape while generating the same word load and final one-bit mask.

-> Correct ASM:

```asm
lui   t6,0x8026
bne   a0,at,special_case_end
sll   t9,a0,5
...
lw    t8,8(v1)
addiu t6,t6,-0x6f70
addu  t0,t9,t6
andi  t9,t8,1
beqz  t9,unrotated
li    v0,-1
```

Incorrect ASM: negating a named difference in place produces one conditional branch; `ABS(difference)` puts the negative arm first with `bgez`.

-> Code changed: compare inline positive-first expressions, for example `(dx >= 0 ? dx : -dx) < (otherDx >= 0 ? otherDx : -otherDx)`, with the differences written directly in each expression.

-> Correct ASM:

```asm
bltz  v0,absolute_done
negu  a0,v0
b     absolute_done
move  a0,v0
absolute_done:
```
