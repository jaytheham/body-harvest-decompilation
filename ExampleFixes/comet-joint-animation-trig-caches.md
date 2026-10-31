## Incorrect ASM

`func_802D997C_31DACC` used unsigned angle locals, so IDO reloaded the original halfwords for every trig call instead of retaining the target word caches. Inline `coss` results also created a hidden short at source offset `-42`, moving the later CFE temporary to `-48`. Every GP spill then sat four bytes below its target while the aligned double spill stayed at `sp+0x20`.

```asm
sw      t0,0x30(sp)
...
sw      a0,0x2c(sp)
...
sw      a0,0x28(sp)
```

The branch flags assigned at the end of each switch case were stored after the joint updates. The in-place ground clamp omitted the target's separate selected-value register and branch.

## Code changed

Keep the input angles in signed short locals, read the unsigned joint fields, and pass those locals to the unsigned-halfword trig parameters. Retain the short trig result that crosses a call, and capture each inline cosine result in an existing unused signed word before evaluating its FP expression:

```c
s32 trigResult;
s16 sp4E;
s16 sp4C;
s16 sp42;
s16 sp40;

sp40 = coss(sp4C);
trigResult = coss(sp4E);
alienInstances[arg0].unk10 =
    (f64)sp64 * ((f64)(f32)trigResult / 32768.0) *
    ((f64)(f32)sp40 / 32768.0) + alienInstances[arg0].unk10;
sp42 = sins(sp4E);
trigResult = coss(sp4C);
sp54 = ((f64)(f32)trigResult / 32768.0) *
       ((f64)sp64 * ((f64)(f32)sp42 / 32768.0));
```

Use direct instance/joint array accesses instead of unused named pointer homes. Reuse the same word for the next cosine result. Sample terrain into the existing other unused word, then use `arg1 += sample < minimum ? minimum : sample` before the height comparison. Set each switch-case reset flag before its joint comparisons. Use unsigned joint fields for updates and cast only the signed comparisons. Replace the external array view of the damping double with `0.9`, and move the later unmatched literal pools onto the next unmatched function so IDO regenerates this literal in the original order.

## Correct ASM

The hidden short disappears, the CFE local reservation drops from `48` to `44`, and all emitted instructions/registers remain exact:

```asm
sw      t0,0x34(sp)
...
lhu     a0,0x4c(sp)
jal     coss
sw      a0,0x30(sp)
lhu     a0,0x4e(sp)
sh      v0,0x40(sp)
jal     coss
sw      a0,0x2c(sp)
mtc1    v0,$f6
...
sdc1    $f2,0x20(sp)
```

```asm
slt     at,v1,a0
beqz    at,selected
move    v0,v1
b       selected
move    v0,a0
selected:
lw      v1,0x6c(sp)
...
addu    v1,v1,v0
```
