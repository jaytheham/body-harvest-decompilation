## incorrect ASM

In `func_80086528_569D8`, a named header pointer made the assembler treat the header link load as potentially aliasing all stack saves. The resulting saves all had the same scheduling height, so `ra` was saved in the target's early `s3` slot:

```asm
sw ra,0x2c(sp)       /* target saves s3 here */
subu v1,t7,t6
andi t8,v1,0xff
/* ... */
sw s3,0x14(sp)
```

Capturing the header fields directly removed that alias dependency and restored the early counter save. Keeping the captures on the function-entry source line still scheduled the color address too early.

## code changed

Use direct named-array access for both header captures, on separate ordinary source lines. Follow them with the counter initialization and byte alpha assignment, in that order:

```c
idx = D_800DE840[D_800DE130[arg0].unk6].unk4;
colors = (FrontendInterpolatedParticleState *)&D_800DE840[D_800DE130[arg0].unk6].unk8;
count = 0;
alpha = 0xFF - D_800D7971;
if (D_800D7970 == 0) {
    alpha = 0xFF;
}
```

No header pointer carrier or dead lifetime-ending assignment is needed. The stock assembler's `-R` trace confirmed the mechanism: direct access removes stack-save predecessors from the header load. The `s3` save retains its counter-initialization dependency and now outranks the other saves. Separate capture lines then preserve the target order of the link load, color address, counter initialization, and promoted alpha move.

## correct ASM

```asm
sw s3,0x14(sp)
subu v1,t7,t6
andi t8,v1,0xff
/* ... */
sw ra,0x2c(sp)
sw fp,0x28(sp)
/* remaining saves */
sw a0,0x30(sp)
lh t3,4(v0)
addiu a1,v0,8
move s3,zero
bnez t9,label
move v1,t8
```

The simple `while` loop hoists its invariant unsigned-word tail-alpha conversion into the guarded setup. The complete function has zero assembly differences and the full stock US ROM checksum passes.
