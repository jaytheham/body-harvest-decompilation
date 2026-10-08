# Continue guard fixes saved-register rotation after a switch

Matched `func_800AE6CC_BD67C` in `src.us/overlay_gameplay/outside/trigger.c` with IDO 5.3 -O2 after 27 attempts.

The trigger loop had identical instructions, branch layout, and stack offsets, but three loop-invariant saved registers were rotated:

| Value | Before | Target |
| --- | --- | --- |
| Trigger array base | s5 | s4 |
| 0xFF sentinel | s6 | s5 |
| Trigger-count address | s4 | s6 |

Replacing the post-switch conditional body with a continue guard fixed all three assignments:

```c
/* Before */
if (shouldRun != 0) {
    /* Remove trigger and invoke its callback. */
}

/* After, inside a for loop */
if (shouldRun == 0) {
    continue;
}
{
    /* Same removal and callback body. */
}
```

The machine control flow remained identical; the source-level continue affected IDO allocation. This confirms the related observation in `array-base-offset-imm-multu-vs-sll.md`. Changing loop form, comparison operand order, decrement spelling, or adding pointer locals did not fix this rotation.

Stack layout required declaring `u8 i` before the 16-byte trigger copy, and declaring the second wave flag ID before the first: `u8 i; Unk80222A78 tmp; u8 shouldRun; u8 waveId1; u8 waveId0;`. That placed tmp at sp+0x64 and the spilled waveId1 at sp+0x62 in a 0x78 frame.

Also verify switch case numbers against the original jump table. Incorrect numbers can leave the function instruction diff unchanged while the ROM still differs in rodata. Here the existing cases needed remapping, and the placeholder jump table was removed when enabling C compilation.

Validation: `tools/make.ps1` reported `build/bh.us.z64: OK`; `tools/diff.ps1 func_800AE6CC_BD67C func_800AEBC4_BDB74 --show-score` reported zero.