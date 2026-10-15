# Scoped global pointers and zero-test spelling

`func_80131280_140230` matched with the full ROM checksum OK and function diff score 0.

The initial signed countdown comparison and subtraction used the correct instructions, but IDO cached the repeated scalar load in `v0` instead of target `t8`. A pointer confined to that block changed the access to an indirect load, which IDO folded back into the target `lui t8; lw t8,lo(t8)` pair:

```c
{
    s32 *countdown = &D_80140CDC_14FC8C;
    if ((*countdown >= 0x6F) && (D_80140CC0_14FC70 != 0)) {
        D_80140CDC_W_DEC = *countdown - 2;
    }
}
```

The pointer added no instructions or stack space. Keep the countdown signed to obtain `slti`, and retain distinct write symbols to avoid address CSE producing an extra `addiu`.

The later text-completion flag had the same scalar-cache issue. A branch-local `u32 *textDone` restored its target temporary register. However, using `if (*textDone == 0)` and passing `*textDone == 0` to the drawing helper caused IDO to share the boolean expression: it moved `sltiu` ahead of the branch and branched on the boolean. Spelling the guard `if (!*textDone)` while retaining `*textDone == 0` in the call produced the target direct `bnez` and the later `sltiu`.

The scoped pointer was the decisive difference. The complete function retained a 0x50 frame.

The existing guarded body also needed its missing write-alias declarations and linker definitions, and its button mask corrected from Start/Z/A (0xB000) to Start/B/A (0xD000). Write aliases are declared in `include/variables.us.h` and linked to the canonical symbols in `undefined_syms.us.txt`.
